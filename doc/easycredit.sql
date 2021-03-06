/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:04:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for companyinfo
-- ----------------------------
DROP TABLE IF EXISTS `companyinfo`;
CREATE TABLE `companyinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mortgagorid` int(10) DEFAULT NULL COMMENT '借款人id',
  `companyname` varchar(64) DEFAULT NULL COMMENT '公司名称',
  `department` varchar(64) DEFAULT NULL COMMENT '部门',
  `position` int(10) DEFAULT NULL COMMENT '职位字典，0，负责人，1，高级管理人员，2，中级管理人员，3，一般管理人员，4，一般正式员工，5，派遣员工，6，退休人员，7，其他',
  `companytype` int(10) DEFAULT NULL COMMENT '公司类型字典，0，机关事业单位，1，国企，2，外资，3，合资，4，民营，5，个体，6，其他',
  `primarybusiness` varchar(255) DEFAULT NULL COMMENT '主营业务',
  `licenceno` varchar(64) DEFAULT NULL COMMENT '营业执照编号',
  `registerdate` datetime(5) DEFAULT NULL COMMENT '营业执照注册日期',
  `limittype` int(5) DEFAULT NULL COMMENT '营业执照期限类型，0，有限期，1，无限期',
  `limitdate` datetime(5) DEFAULT NULL COMMENT '营业执照到期日期',
  `registeredcapital` double(20,0) DEFAULT NULL COMMENT '注册资本',
  `areaid` int(5) DEFAULT NULL COMMENT '企业归属地id',
  `detailaddress` varchar(255) DEFAULT NULL COMMENT '实际经营详细地址',
  `entrydate` int(10) DEFAULT NULL COMMENT '进入现职公司时间',
  `incomeperyear` double(20,0) DEFAULT NULL COMMENT '年总收入',
  `incomepermonth` double(20,0) DEFAULT NULL COMMENT '月收入',
  `otherincomepermonth` double(20,0) DEFAULT NULL COMMENT '每月其他收入',
  `otherincomeresourse` varchar(255) DEFAULT NULL COMMENT '收入来源',
  `supportnum` int(10) DEFAULT NULL COMMENT '目前需供养人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:04:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for evidence
-- ----------------------------
DROP TABLE IF EXISTS `evidence`;
CREATE TABLE `evidence` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT NULL COMMENT '业务申请单id',
  `imageurl` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `imagetype` int(10) DEFAULT NULL COMMENT '图片类型字典，0，营业执照，1，工作证明，2，身份证，3，经营场所相关资料，4，申请表，5，税务登记证，6，配偶身份证，7，借款人户口本，8，配偶户口本，9，借款人结婚证，10，银行流水，11，经营场所使用权证明材料，12，其他，13，银联数据授权书',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:04:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mortgagor_contact
-- ----------------------------
DROP TABLE IF EXISTS `mortgagor_contact`;
CREATE TABLE `mortgagor_contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mortgagorid` int(10) DEFAULT NULL COMMENT '借款人id',
  `spousename` varchar(64) DEFAULT NULL COMMENT '配偶姓名',
  `idnumber` varchar(64) DEFAULT NULL COMMENT '配偶身份证号',
  `cellphone` varchar(64) DEFAULT NULL COMMENT '配偶手机号',
  `registeraddress` varchar(255) DEFAULT NULL COMMENT '配偶户籍地址',
  `contactaddresstype` varchar(255) DEFAULT NULL COMMENT '配偶联系地址类型字典，0，与户籍地址相同，1，与申请人联系地址相同',
  `correlation1name` varchar(64) DEFAULT NULL COMMENT '其他联系人1姓名',
  `correlation1type` int(10) DEFAULT NULL COMMENT '其他联系人1类型字典，0，亲属，1，朋友，2，同事',
  `correlation1cellphone` varchar(64) DEFAULT NULL COMMENT '其他联系人1手机号',
  `correlation2name` varchar(64) DEFAULT NULL COMMENT '其他联系人2姓名',
  `correlation2type` int(10) DEFAULT NULL COMMENT '其他联系人2类型字典，0，亲属，1，朋友，2，同事',
  `correlation2cellphone` varchar(64) DEFAULT NULL COMMENT '其他联系人2手机号',
  `reterence1name` varchar(64) DEFAULT NULL COMMENT '工作证明人1姓名',
  `reterence1depart` varchar(64) DEFAULT NULL COMMENT '工作证明人1部门',
  `reterence1position` varchar(64) DEFAULT NULL COMMENT '工作证明人1职位',
  `reterence1cellphone` varchar(64) DEFAULT NULL COMMENT '工作证明人1手机号',
  `reterence2name` varchar(64) DEFAULT NULL COMMENT '工作证明人2姓名',
  `reterence2depart` varchar(64) DEFAULT NULL COMMENT '工作证明人2部门',
  `reterence2position` varchar(64) DEFAULT NULL COMMENT '工作证明人2职位',
  `reterence2cellphone` varchar(64) DEFAULT NULL COMMENT '工作证明人2手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:04:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mortgagor_residential
-- ----------------------------
DROP TABLE IF EXISTS `mortgagor_residential`;
CREATE TABLE `mortgagor_residential` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mortgagorid` int(10) DEFAULT NULL COMMENT '借款人id',
  `houseproperty` int(10) DEFAULT NULL COMMENT '房产类型字典，0，自由房产，1，租赁，2，与亲属同住，3，单位宿舍，4，其他',
  `housingloan` double(20,0) DEFAULT NULL COMMENT '月还房贷',
  `residentialaddress` varchar(255) DEFAULT NULL COMMENT '居住地址',
  `registeraddress` varchar(255) DEFAULT NULL COMMENT '户籍地址',
  `contactaddresstype` int(10) DEFAULT NULL COMMENT '联系地址类型字典，0，居住地址，1，户籍地址',
  `citylife` int(10) DEFAULT NULL COMMENT '在此城市生活时长',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:04:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mortgagorinfo
-- ----------------------------
DROP TABLE IF EXISTS `mortgagorinfo`;
CREATE TABLE `mortgagorinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mortgagorname` varchar(64) DEFAULT NULL COMMENT '借款人姓名',
  `idnumber` varchar(64) DEFAULT NULL COMMENT '身份证号',
  `sex` int(5) DEFAULT NULL COMMENT '性别，0，男，1，女',
  `matrimonial` int(10) DEFAULT NULL COMMENT '婚姻状况字典，0，未婚，1，已婚无子女，2，已婚有子女',
  `educationalstatus` int(10) DEFAULT NULL COMMENT '教育状态字典，0，博士研究生，1，硕士研究生，2，大学本科，3，大学专科和专科学校，4，中等专业学校，5，技术学校，6，高中，7，初中，8，小学，9，文盲或半文盲，10，其他',
  `workinglife` int(10) DEFAULT NULL COMMENT '从业年限',
  `childrennum` int(10) DEFAULT NULL COMMENT '子女个数',
  `email` varchar(64) DEFAULT NULL COMMENT '电子邮箱',
  `cellphone` varchar(64) DEFAULT NULL COMMENT '手机号',
  `telephone` varchar(64) DEFAULT NULL COMMENT '固定电话',
  `userid` int(10) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(5) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:05:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orderassign
-- ----------------------------
DROP TABLE IF EXISTS `orderassign`;
CREATE TABLE `orderassign` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT NULL COMMENT '业务申请单id',
  `operatorid` int(10) DEFAULT NULL COMMENT '审批人id',
  `assigntime` datetime(5) DEFAULT NULL COMMENT '任务到达时间',
  `submittime` datetime(5) DEFAULT NULL COMMENT '任务提交时间',
  `resultflag` int(10) DEFAULT NULL COMMENT '审批结果字典，0，否决，1，同意',
  `comments` varchar(255) DEFAULT NULL COMMENT '审批意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-30 15:33:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orderretrunlist
-- ----------------------------
DROP TABLE IF EXISTS `orderretrunlist`;
CREATE TABLE `orderretrunlist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT NULL COMMENT '业务申请单id',
  `loanno` varchar(64) DEFAULT NULL COMMENT '借据编号（ID）',
  `loanamount` double(20,0) DEFAULT NULL COMMENT '放款金额',
  `loanrate` double(20,0) DEFAULT NULL COMMENT '放款利率',
  `loantimelimit` int(10) DEFAULT NULL COMMENT '放款期限',
  `loantime` datetime(5) DEFAULT NULL COMMENT '放款时间',
  `loanlimittime` datetime(5) DEFAULT NULL COMMENT '到期时间',
  `norepaymentamount` double(20,0) DEFAULT NULL COMMENT '未还款金额',
  `loanstatus` int(10) DEFAULT NULL COMMENT '还款状态字典，0，未还款，1，已还款',
  `comments` varchar(255) DEFAULT NULL COMMENT '放款意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-15 22:19:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `orderno` varchar(64) DEFAULT NULL COMMENT '业务申请单编号',
  `productid` int(10) DEFAULT NULL,
  `mortgagorid` int(10) DEFAULT NULL COMMENT '借款人id',
  `status` int(10) DEFAULT NULL COMMENT '业务单状态字典，-1，第一步（借款人信息）暂存，-2，第二步（企业信息）暂存，-3，第三步（借款信息）暂存，-4，第四步（资料上传）暂存，0，初审中，1，复审中，2，合作商审批中，3，审批通过，4，审批拒绝，5，退回',
  `operatorid` int(10) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(5) DEFAULT NULL COMMENT '订单生成时间',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;




/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:05:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orderinfolist
-- ----------------------------
DROP TABLE IF EXISTS `orderinfolist`;
CREATE TABLE `orderinfolist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT NULL,
  `applicationamount` double(10,0) DEFAULT NULL COMMENT '申请金额',
  `applicationlimit` int(10) DEFAULT NULL COMMENT '申请期限',
  `avilblemonthlyrepayment` double(10,0) DEFAULT NULL COMMENT '可接受月还款金额',
  `tradecode` varchar(64) DEFAULT NULL COMMENT '行业投向代码',
  `tradename` varchar(64) DEFAULT NULL COMMENT '行业投向名称',
  `purpose` varchar(255) DEFAULT NULL COMMENT '借款用途说明',
  `sourceofrepayment` varchar(255) DEFAULT NULL COMMENT '借款来源说明',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:05:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `organizationtype` int(10) DEFAULT NULL COMMENT '组织类型角色字典，0，初审组，1，复审组，2，合作商审批组，3，系统管理组',
  `organizationname` varchar(64) DEFAULT NULL COMMENT '组织机构名称',
  `userid` int(10) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(5) DEFAULT NULL COMMENT '创建时间',
  `comments` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-15 22:00:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for organizationauthority
-- ----------------------------
DROP TABLE IF EXISTS `organizationauthority`;
CREATE TABLE `organizationauthority` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `organizationid` int(10) DEFAULT NULL COMMENT '组织机构id',
  `authoritytypeflag` int(10) DEFAULT NULL COMMENT '分配权限字典，0，用户及组管理，1，产品管理，2，客户管理，3，申请单审批，4，借据维护，5，综合查询统计，6，权限配置，7，客户信息导出',
  `comments` varchar(64) DEFAULT NULL COMMENT '备注，冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-15 22:13:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for organizationarea
-- ----------------------------
DROP TABLE IF EXISTS `organizationarea`;
CREATE TABLE `organizationarea` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `organizationid` int(10) DEFAULT NULL COMMENT '组织机构id',
  `organizationareaid` int(10) DEFAULT NULL COMMENT '组织机构可管理区域的id',
  `comments` varchar(64) DEFAULT NULL COMMENT '备注，冗余字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-30 15:28:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for productinfo
-- ----------------------------
DROP TABLE IF EXISTS `productinfo`;
CREATE TABLE `productinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `productno` varchar(64) DEFAULT NULL COMMENT '产品编号',
  `userid` int(10) DEFAULT NULL COMMENT '创建人',
  `comments` varchar(255) DEFAULT NULL COMMENT '产品说明（描述）',
  `createtime` datetime(5) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-15 22:17:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for productevidence
-- ----------------------------
DROP TABLE IF EXISTS `productevidence`;
CREATE TABLE `productevidence` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `productid` int(10) DEFAULT NULL COMMENT '产品id',
  `evidenceurl` varchar(255) DEFAULT NULL COMMENT '产品宣传图标路径',
  `evidencedescribe` varchar(255) DEFAULT NULL COMMENT '产品宣传图标描述',
  `displayorder` int(5) DEFAULT NULL COMMENT '显示顺序号',
  `operatorid` int(10) DEFAULT NULL COMMENT '创建人',
  `createdate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-12 14:05:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for productorganization
-- ----------------------------
DROP TABLE IF EXISTS `productorganization`;
CREATE TABLE `productorganization` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `productid` int(10) DEFAULT NULL COMMENT '产品ID',
  `organizationid` int(10) DEFAULT NULL COMMENT '组织机构id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : easycredit

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-30 15:26:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '登陆密码',
  `cellphone` varchar(64) DEFAULT NULL COMMENT '手机号',
  `mail` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `organizationid` int(10) DEFAULT NULL COMMENT '组织机构id',
  `companyname` varchar(64) DEFAULT NULL COMMENT '公司名称',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `applyproductflag` int(10) DEFAULT '1' COMMENT '是否有申请产品的权限，0，否，1，是',
  `usertype` int(10) DEFAULT NULL COMMENT '用户类型，0，会员客户，1，系统用户，2，管理员，3，借款人',
  `comments` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.240
Source Server Version : 50537
Source Host           : 192.168.1.240:3308
Source Database       : DongyunMember

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-11-12 13:55:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `areaId` int(10) NOT NULL,
  `areaName` varchar(50) DEFAULT NULL,
  `areaZipCode` varchar(20) DEFAULT NULL,
  `areaPId` varchar(20) DEFAULT NULL,
  `areaTopPid` varchar(10) DEFAULT NULL,
  `areaPids` varchar(512) DEFAULT NULL,
  `areaPidsNames` varchar(512) DEFAULT NULL,
  `areaChilds` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`areaId`),
  KEY `PId` (`areaPId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('86110000', '北京市', '100000', '0', null, null, null, '86110200,86110100');
INSERT INTO `area` VALUES ('86110100', '市辖区', '100000', '86110000', '86110000', '86110000', '北京市', '86110117,86110116,86110115,86110114,86110113,86110112,86110111,86110109,86110108,86110107,86110106,86110105,86110104,86110103,86110102,86110101');
INSERT INTO `area` VALUES ('86110101', '东城区', '100000', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110102', '西城区', '100000', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110103', '崇文区', '100000', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110104', '宣武区', '100000', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110105', '朝阳区', '100000', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110106', '丰台区', '100000', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110107', '石景山区', '100000', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110108', '海淀区{}', '100000', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110109', '门头沟区', '102300', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110111', '房山区', '102400', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110112', '通州区', '101100', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110113', '顺义区', '101300', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110114', '昌平区', '102200', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110115', '大兴区', '102600', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110116', '怀柔区', '101400', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110117', '平谷区', '101200', '86110100', '86110000', '86110100,86110000', '市辖区,北京市', null);
INSERT INTO `area` VALUES ('86110200', '县', '101500', '86110000', '86110000', '86110000', '北京市', '86110229,86110228');
INSERT INTO `area` VALUES ('86110228', '密云县', '101500', '86110200', '86110000', '86110200,86110000', '县,北京市', null);
INSERT INTO `area` VALUES ('86110229', '延庆县', '102100', '86110200', '86110000', '86110200,86110000', '县,北京市', null);
INSERT INTO `area` VALUES ('86120000', '天津市', '300000', '0', null, null, null, '86120200,86120100');
INSERT INTO `area` VALUES ('86120100', '市辖区', '300000', '86120000', '86120000', '86120000', '天津市', '86120115,86120114,86120113,86120112,86120111,86120110,86120109,86120108,86120107,86120106,86120105,86120104,86120103,86120102,86120101');
INSERT INTO `area` VALUES ('86120101', '和平区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120102', '河东区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120103', '河西区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120104', '南开区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120105', '河北区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120106', '红桥区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120107', '塘沽区', '300450', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120108', '汉沽区', '300480', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120109', '大港区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120110', '东丽区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120111', '西青区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120112', '津南区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120113', '北辰区', '300000', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120114', '武清区', '301700', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120115', '宝坻区', '301800', '86120100', '86120000', '86120100,86120000', '市辖区,天津市', null);
INSERT INTO `area` VALUES ('86120200', '县', '301500', '86120000', '86120000', '86120000', '天津市', '86120225,86120223,86120221');
INSERT INTO `area` VALUES ('86120221', '宁河县', '301500', '86120200', '86120000', '86120200,86120000', '县,天津市', null);
INSERT INTO `area` VALUES ('86120223', '静海县', '301600', '86120200', '86120000', '86120200,86120000', '县,天津市', null);
INSERT INTO `area` VALUES ('86120225', '蓟　县', '301900', '86120200', '86120000', '86120200,86120000', '县,天津市', null);
INSERT INTO `area` VALUES ('86130000', '河北省', null, '0', null, null, null, '86131100,86131000,86130900,86130800,86130700,86130600,86130500,86130400,86130300,86130200,86130100');
INSERT INTO `area` VALUES ('86130100', '石家庄市', '050000', '86130000', '86130000', '86130000', '河北省', '86130185,86130184,86130183,86130182,86130181,86130133,86130132,86130131,86130130,86130129,86130128,86130127,86130126,86130125,86130124,86130123,86130121,86130108,86130107,86130105,86130104,86130103,86130102,86130101');
INSERT INTO `area` VALUES ('86130101', '市辖区', '050000', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130102', '长安区', '050000', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130103', '桥东区', '050000', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130104', '桥西区', '050000', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130105', '新华区', '050000', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130107', '井陉矿区', '051000', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130108', '裕华区', '050000', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130121', '井陉县', '050300', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130123', '正定县', '050800', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130124', '栾城县', '051430', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130125', '行唐县', '050600', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130126', '灵寿县', '050500', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130127', '高邑县', '051330', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130128', '深泽县', '052500', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130129', '赞皇县', '051230', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130130', '无极县', '052400', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130131', '平山县', '050400', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130132', '元氏县', '051130', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130133', '赵　县', '051530', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130181', '辛集市', '052300', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130182', '藁城市', '052160', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130183', '晋州市', '052200', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130184', '新乐市', '050700', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130185', '鹿泉市', '050200', '86130100', '86130000', '86130100,86130000', '石家庄市,河北省', null);
INSERT INTO `area` VALUES ('86130200', '唐山市', '063000', '86130000', '86130000', '86130000', '河北省', '86130283,86130281,86130230,86130229,86130227,86130225,86130224,86130223,86130208,86130207,86130205,86130204,86130203,86130202,86130201');
INSERT INTO `area` VALUES ('86130201', '市辖区', '063000', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130202', '路南区', '063000', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130203', '路北区', '063000', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130204', '古冶区', '063000', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130205', '开平区', '063000', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130207', '丰南区', '063300', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130208', '丰润区', '063000', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130223', '滦　县', '063700', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130224', '滦南县', '063500', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130225', '乐亭县', '063600', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130227', '迁西县', '064300', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130229', '玉田县', '064100', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130230', '唐海县', '063200', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130281', '遵化市', '064200', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130283', '迁安市', '064400', '86130200', '86130000', '86130200,86130000', '唐山市,河北省', null);
INSERT INTO `area` VALUES ('86130300', '秦皇岛市', '066000', '86130000', '86130000', '86130000', '河北省', '86130324,86130323,86130322,86130321,86130304,86130303,86130302,86130301');
INSERT INTO `area` VALUES ('86130301', '市辖区', '066000', '86130300', '86130000', '86130300,86130000', '秦皇岛市,河北省', null);
INSERT INTO `area` VALUES ('86130302', '海港区', '066000', '86130300', '86130000', '86130300,86130000', '秦皇岛市,河北省', null);
INSERT INTO `area` VALUES ('86130303', '山海关区', '066200', '86130300', '86130000', '86130300,86130000', '秦皇岛市,河北省', null);
INSERT INTO `area` VALUES ('86130304', '北戴河区', '066100', '86130300', '86130000', '86130300,86130000', '秦皇岛市,河北省', null);
INSERT INTO `area` VALUES ('86130321', '青龙满族自治县', '066500', '86130300', '86130000', '86130300,86130000', '秦皇岛市,河北省', null);
INSERT INTO `area` VALUES ('86130322', '昌黎县', '066600', '86130300', '86130000', '86130300,86130000', '秦皇岛市,河北省', null);
INSERT INTO `area` VALUES ('86130323', '抚宁县', '066300', '86130300', '86130000', '86130300,86130000', '秦皇岛市,河北省', null);
INSERT INTO `area` VALUES ('86130324', '卢龙县', '066400', '86130300', '86130000', '86130300,86130000', '秦皇岛市,河北省', null);
INSERT INTO `area` VALUES ('86130400', '邯郸市', '056000', '86130000', '86130000', '86130000', '河北省', '86130481,86130435,86130434,86130433,86130432,86130431,86130430,86130429,86130428,86130427,86130426,86130425,86130424,86130423,86130421,86130406,86130404,86130403,86130402,86130401');
INSERT INTO `area` VALUES ('86130401', '市辖区', '056000', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130402', '邯山区', '056000', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130403', '丛台区', '056000', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130404', '复兴区', '056000', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130406', '峰峰矿区', '056200', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130421', '邯郸县', '056000', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130423', '临漳县', '056600', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130424', '成安县', '056700', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130425', '大名县', '056900', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130426', '涉　县', '056400', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130427', '磁　县', '056500', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130428', '肥乡县', '057550', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130429', '永年县', '057150', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130430', '邱　县', '057450', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130431', '鸡泽县', '057350', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130432', '广平县', '057650', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130433', '馆陶县', '057750', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130434', '魏　县', '056800', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130435', '曲周县', '057250', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130481', '武安市', '056300', '86130400', '86130000', '86130400,86130000', '邯郸市,河北省', null);
INSERT INTO `area` VALUES ('86130500', '邢台市', '054000', '86130000', '86130000', '86130000', '河北省', '86130582,86130581,86130535,86130534,86130533,86130532,86130531,86130530,86130529,86130528,86130527,86130526,86130525,86130524,86130523,86130522,86130521,86130503,86130502,86130501');
INSERT INTO `area` VALUES ('86130501', '市辖区', '054000', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130502', '桥东区', '054000', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130503', '桥西区', '054000', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130521', '邢台县', '054000', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130522', '临城县', '054300', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130523', '内丘县', '054200', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130524', '柏乡县', '055450', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130525', '隆尧县', '055350', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130526', '任　县', '055150', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130527', '南和县', '054400', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130528', '宁晋县', '055550', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130529', '巨鹿县', '055250', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130530', '新河县', '051730', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130531', '广宗县', '054600', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130532', '平乡县', '054500', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130533', '威　县', '054700', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130534', '清河县', '054800', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130535', '临西县', '054900', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130581', '南宫市', '051800', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130582', '沙河市', '054100', '86130500', '86130000', '86130500,86130000', '邢台市,河北省', null);
INSERT INTO `area` VALUES ('86130600', '保定市', '071000', '86130000', '86130000', '86130000', '河北省', '86130684,86130683,86130682,86130681,86130638,86130637,86130636,86130635,86130634,86130633,86130632,86130631,86130630,86130629,86130628,86130627,86130626,86130625,86130624,86130623,86130622,86130621,86130604,86130603,86130602,86130601');
INSERT INTO `area` VALUES ('86130601', '市辖区', '071000', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130602', '新市区', '071000', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130603', '北市区', '071000', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130604', '南市区', '071000', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130621', '满城县', '072150', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130622', '清苑县', '071100', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130623', '涞水县', '074100', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130624', '阜平县', '073200', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130625', '徐水县', '072550', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130626', '定兴县', '072650', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130627', '唐　县', '072350', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130628', '高阳县', '071500', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130629', '容城县', '071700', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130630', '涞源县', '102900', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130631', '望都县', '072450', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130632', '安新县', '071600', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130633', '易　县', '074200', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130634', '曲阳县', '073100', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130635', '蠡　县', '071400', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130636', '顺平县', '072250', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130637', '博野县', '071300', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130638', '雄　县', '071800', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130681', '涿州市', '072750', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130682', '定州市', '073000', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130683', '安国市', '071200', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130684', '高碑店市', '074000', '86130600', '86130000', '86130600,86130000', '保定市,河北省', null);
INSERT INTO `area` VALUES ('86130700', '张家口市', '075000', '86130000', '86130000', '86130000', '河北省', '86130733,86130732,86130731,86130730,86130729,86130728,86130727,86130726,86130725,86130724,86130723,86130722,86130721,86130706,86130705,86130703,86130702,86130701');
INSERT INTO `area` VALUES ('86130701', '市辖区', '075000', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130702', '桥东区', '075000', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130703', '桥西区', '075000', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130705', '宣化区', '075000', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130706', '下花园区', '075000', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130721', '宣化县', '075100', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130722', '张北县', '076450', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130723', '康保县', '076650', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130724', '沽源县', '076550', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130725', '尚义县', '076750', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130726', '蔚　县', '075700', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130727', '阳原县', '075800', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130728', '怀安县', '076150', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130729', '万全县', '076250', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130730', '怀来县', '075400', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130731', '涿鹿县', '075600', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130732', '赤城县', '075500', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130733', '崇礼县', '076350', '86130700', '86130000', '86130700,86130000', '张家口市,河北省', null);
INSERT INTO `area` VALUES ('86130800', '承德市', '067000', '86130000', '86130000', '86130000', '河北省', '86130828,86130827,86130826,86130825,86130824,86130823,86130822,86130821,86130804,86130803,86130802,86130801');
INSERT INTO `area` VALUES ('86130801', '市辖区', '067000', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130802', '双桥区', '067000', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130803', '双滦区', '067000', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130804', '鹰手营子矿区', '067200', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130821', '承德县', '067400', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130822', '兴隆县', '067300', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130823', '平泉县', '067500', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130824', '滦平县', '068250', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130825', '隆化县', '068150', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130826', '丰宁满族自治县', '068350', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130827', '宽城满族自治县', '067600', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130828', '围场满族蒙古族自治县', '068450', '86130800', '86130000', '86130800,86130000', '承德市,河北省', null);
INSERT INTO `area` VALUES ('86130900', '沧州市', '061000', '86130000', '86130000', '86130000', '河北省', '86130984,86130983,86130982,86130981,86130930,86130929,86130928,86130927,86130926,86130925,86130924,86130923,86130922,86130921,86130903,86130902,86130901');
INSERT INTO `area` VALUES ('86130901', '市辖区', '061000', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130902', '新华区', '061000', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130903', '运河区', '061000', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130921', '沧　县', '061000', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130922', '青　县', '062650', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130923', '东光县', '061600', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130924', '海兴县', '061200', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130925', '盐山县', '061300', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130926', '肃宁县', '062350', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130927', '南皮县', '061500', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130928', '吴桥县', '061800', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130929', '献　县', '062250', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130930', '孟村回族自治县', '061400', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130981', '泊头市', '062150', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130982', '任丘市', '062550', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130983', '黄骅市', '061100', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86130984', '河间市', '062450', '86130900', '86130000', '86130900,86130000', '沧州市,河北省', null);
INSERT INTO `area` VALUES ('86131000', '廊坊市', '065000', '86130000', '86130000', '86130000', '河北省', '86131082,86131081,86131028,86131026,86131025,86131024,86131023,86131022,86131003,86131002,86131001');
INSERT INTO `area` VALUES ('86131001', '市辖区', '065000', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131002', '安次区', '065000', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131003', '广阳区', '065000', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131022', '固安县', '065500', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131023', '永清县', '065600', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131024', '香河县', '065400', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131025', '大城县', '065900', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131026', '文安县', '065800', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131028', '大厂回族自治县', '065300', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131081', '霸州市', '065700', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131082', '三河市', '065200', '86131000', '86130000', '86131000,86130000', '廊坊市,河北省', null);
INSERT INTO `area` VALUES ('86131100', '衡水市', '053000', '86130000', '86130000', '86130000', '河北省', '86131182,86131181,86131128,86131127,86131126,86131125,86131124,86131123,86131122,86131121,86131102,86131101');
INSERT INTO `area` VALUES ('86131101', '市辖区', '053000', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131102', '桃城区', '053000', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131121', '枣强县', '053100', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131122', '武邑县', '053400', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131123', '武强县', '053300', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131124', '饶阳县', '053900', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131125', '安平县', '053600', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131126', '故城县', '053800', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131127', '景　县', '053500', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131128', '阜城县', '053700', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131181', '冀州市', '053200', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86131182', '深州市', '052800', '86131100', '86130000', '86131100,86130000', '衡水市,河北省', null);
INSERT INTO `area` VALUES ('86140000', '山西省', null, '0', null, null, null, '86141100,86141000,86140900,86140800,86140700,86140600,86140500,86140400,86140300,86140200,86140100');
INSERT INTO `area` VALUES ('86140100', '太原市', '030000', '86140000', '86140000', '86140000', '山西省', '86140181,86140123,86140122,86140121,86140110,86140109,86140108,86140107,86140106,86140105,86140101');
INSERT INTO `area` VALUES ('86140101', '市辖区', '030000', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140105', '小店区', '030000', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140106', '迎泽区', '030000', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140107', '杏花岭区', '030000', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140108', '尖草坪区', '030000', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140109', '万柏林区', '030000', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140110', '晋源区', '030000', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140121', '清徐县', '030400', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140122', '阳曲县', '030100', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140123', '娄烦县', '030300', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140181', '古交市', '030200', '86140100', '86140000', '86140100,86140000', '太原市,山西省', null);
INSERT INTO `area` VALUES ('86140200', '大同市', '037000', '86140000', '86140000', '86140000', '山西省', '86140227,86140226,86140225,86140224,86140223,86140222,86140221,86140212,86140211,86140203,86140202,86140201');
INSERT INTO `area` VALUES ('86140201', '市辖区', '037000', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140202', '城　区', '037000', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140203', '矿　区', '037000', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140211', '南郊区', '037000', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140212', '新荣区', '037000', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140221', '阳高县', '038100', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140222', '天镇县', '038200', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140223', '广灵县', '037500', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140224', '灵丘县', '034400', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140225', '浑源县', '037400', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140226', '左云县', '037100', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140227', '大同县', '037300', '86140200', '86140000', '86140200,86140000', '大同市,山西省', null);
INSERT INTO `area` VALUES ('86140300', '阳泉市', '045000', '86140000', '86140000', '86140000', '山西省', '86140322,86140321,86140311,86140303,86140302,86140301');
INSERT INTO `area` VALUES ('86140301', '市辖区', '045000', '86140300', '86140000', '86140300,86140000', '阳泉市,山西省', null);
INSERT INTO `area` VALUES ('86140302', '城　区', '045000', '86140300', '86140000', '86140300,86140000', '阳泉市,山西省', null);
INSERT INTO `area` VALUES ('86140303', '矿　区', '045000', '86140300', '86140000', '86140300,86140000', '阳泉市,山西省', null);
INSERT INTO `area` VALUES ('86140311', '郊　区', '045000', '86140300', '86140000', '86140300,86140000', '阳泉市,山西省', null);
INSERT INTO `area` VALUES ('86140321', '平定县', '045200', '86140300', '86140000', '86140300,86140000', '阳泉市,山西省', null);
INSERT INTO `area` VALUES ('86140322', '盂　县', '045100', '86140300', '86140000', '86140300,86140000', '阳泉市,山西省', null);
INSERT INTO `area` VALUES ('86140400', '长治市', '046000', '86140000', '86140000', '86140000', '山西省', '86140481,86140431,86140430,86140429,86140428,86140427,86140426,86140425,86140424,86140423,86140421,86140411,86140402,86140401');
INSERT INTO `area` VALUES ('86140401', '市辖区', '046000', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140402', '城　区', '046000', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140411', '郊　区', '046000', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140421', '长治县', '046000', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140423', '襄垣县', '046200', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140424', '屯留县', '046100', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140425', '平顺县', '047400', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140426', '黎城县', '047600', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140427', '壶关县', '047300', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140428', '长子县', '046600', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140429', '武乡县', '046300', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140430', '沁　县', '046400', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140431', '沁源县', '046500', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140481', '潞城市', '047500', '86140400', '86140000', '86140400,86140000', '长治市,山西省', null);
INSERT INTO `area` VALUES ('86140500', '晋城市', '048000', '86140000', '86140000', '86140000', '山西省', '86140581,86140525,86140524,86140522,86140521,86140502,86140501');
INSERT INTO `area` VALUES ('86140501', '市辖区', '048000', '86140500', '86140000', '86140500,86140000', '晋城市,山西省', null);
INSERT INTO `area` VALUES ('86140502', '城　区', '048000', '86140500', '86140000', '86140500,86140000', '晋城市,山西省', null);
INSERT INTO `area` VALUES ('86140521', '沁水县', '048200', '86140500', '86140000', '86140500,86140000', '晋城市,山西省', null);
INSERT INTO `area` VALUES ('86140522', '阳城县', '048100', '86140500', '86140000', '86140500,86140000', '晋城市,山西省', null);
INSERT INTO `area` VALUES ('86140524', '陵川县', '048300', '86140500', '86140000', '86140500,86140000', '晋城市,山西省', null);
INSERT INTO `area` VALUES ('86140525', '泽州县', '048000', '86140500', '86140000', '86140500,86140000', '晋城市,山西省', null);
INSERT INTO `area` VALUES ('86140581', '高平市', '046700', '86140500', '86140000', '86140500,86140000', '晋城市,山西省', null);
INSERT INTO `area` VALUES ('86140600', '朔州市', '038500', '86140000', '86140000', '86140000', '山西省', '86140624,86140623,86140622,86140621,86140603,86140602,86140601');
INSERT INTO `area` VALUES ('86140601', '市辖区', '038500', '86140600', '86140000', '86140600,86140000', '朔州市,山西省', null);
INSERT INTO `area` VALUES ('86140602', '朔城区', '038500', '86140600', '86140000', '86140600,86140000', '朔州市,山西省', null);
INSERT INTO `area` VALUES ('86140603', '平鲁区', '038500', '86140600', '86140000', '86140600,86140000', '朔州市,山西省', null);
INSERT INTO `area` VALUES ('86140621', '山阴县', '038400', '86140600', '86140000', '86140600,86140000', '朔州市,山西省', null);
INSERT INTO `area` VALUES ('86140622', '应　县', '037600', '86140600', '86140000', '86140600,86140000', '朔州市,山西省', null);
INSERT INTO `area` VALUES ('86140623', '右玉县', '037200', '86140600', '86140000', '86140600,86140000', '朔州市,山西省', null);
INSERT INTO `area` VALUES ('86140624', '怀仁县', '038300', '86140600', '86140000', '86140600,86140000', '朔州市,山西省', null);
INSERT INTO `area` VALUES ('86140700', '晋中市', '030600', '86140000', '86140000', '86140000', '山西省', '86140781,86140729,86140728,86140727,86140726,86140725,86140724,86140723,86140722,86140721,86140702,86140701');
INSERT INTO `area` VALUES ('86140701', '市辖区', '030600', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140702', '榆次区', '030600', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140721', '榆社县', '031800', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140722', '左权县', '032600', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140723', '和顺县', '032700', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140724', '昔阳县', '045300', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140725', '寿阳县', '031700', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140726', '太谷县', '030800', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140727', '祁　县', '030900', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140728', '平遥县', '031100', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140729', '灵石县', '031300', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140781', '介休市', '031200', '86140700', '86140000', '86140700,86140000', '晋中市,山西省', null);
INSERT INTO `area` VALUES ('86140800', '运城市', '044000', '86140000', '86140000', '86140000', '山西省', '86140882,86140881,86140830,86140829,86140828,86140827,86140826,86140825,86140824,86140823,86140822,86140821,86140802,86140801');
INSERT INTO `area` VALUES ('86140801', '市辖区', '044000', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140802', '盐湖区', '044000', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140821', '临猗县', '044100', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140822', '万荣县', '044200', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140823', '闻喜县', '043800', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140824', '稷山县', '043200', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140825', '新绛县', '043100', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140826', '绛　县', '043600', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140827', '垣曲县', '043700', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140828', '夏　县', '044400', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140829', '平陆县', '044300', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140830', '芮城县', '044600', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140881', '永济市', '044500', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140882', '河津市', '043300', '86140800', '86140000', '86140800,86140000', '运城市,山西省', null);
INSERT INTO `area` VALUES ('86140900', '忻州市', '034000', '86140000', '86140000', '86140000', '山西省', '86140981,86140932,86140931,86140930,86140929,86140928,86140927,86140926,86140925,86140924,86140923,86140922,86140921,86140902,86140901');
INSERT INTO `area` VALUES ('86140901', '市辖区', '034000', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140902', '忻府区', '034000', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140921', '定襄县', '035400', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140922', '五台县', '035500', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140923', '代　县', '034200', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140924', '繁峙县', '034300', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140925', '宁武县', '036000', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140926', '静乐县', '035100', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140927', '神池县', '036100', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140928', '五寨县', '036200', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140929', '岢岚县', '036300', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140930', '河曲县', '036500', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140931', '保德县', '036600', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140932', '偏关县', '036400', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86140981', '原平市', '034100', '86140900', '86140000', '86140900,86140000', '忻州市,山西省', null);
INSERT INTO `area` VALUES ('86141000', '临汾市', '041000', '86140000', '86140000', '86140000', '山西省', '86141082,86141081,86141034,86141033,86141032,86141031,86141030,86141029,86141028,86141027,86141026,86141025,86141024,86141023,86141022,86141021,86141002,86141001');
INSERT INTO `area` VALUES ('86141001', '市辖区', '041000', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141002', '尧都区', '041000', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141021', '曲沃县', '043400', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141022', '翼城县', '043500', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141023', '襄汾县', '041500', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141024', '洪洞县', '031600', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141025', '古　县', '042400', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141026', '安泽县', '042500', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141027', '浮山县', '042600', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141028', '吉　县', '042200', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141029', '乡宁县', '042100', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141030', '大宁县', '042300', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141031', '隰　县', '041300', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141032', '永和县', '041400', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141033', '蒲　县', '041200', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141034', '汾西县', '031500', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141081', '侯马市', '043000', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141082', '霍州市', '031400', '86141000', '86140000', '86141000,86140000', '临汾市,山西省', null);
INSERT INTO `area` VALUES ('86141100', '吕梁市', '033000', '86140000', '86140000', '86140000', '山西省', '86141182,86141181,86141130,86141129,86141128,86141127,86141126,86141125,86141124,86141123,86141122,86141121,86141102,86141101');
INSERT INTO `area` VALUES ('86141101', '市辖区', '033000', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141102', '离石区', '033000', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141121', '文水县', '032100', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141122', '交城县', '030500', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141123', '兴　县', '035300', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141124', '临　县', '033200', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141125', '柳林县', '033300', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141126', '石楼县', '032500', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141127', '岚　县', '035200', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141128', '方山县', '033100', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141129', '中阳县', '033400', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141130', '交口县', '032400', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141181', '孝义市', '032300', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86141182', '汾阳市', '032200', '86141100', '86140000', '86141100,86140000', '吕梁市,山西省', null);
INSERT INTO `area` VALUES ('86150000', '内蒙古自治区', null, '0', null, null, null, '86152900,86152500,86152200,86150900,86150800,86150700,86150600,86150500,86150400,86150300,86150200,86150100');
INSERT INTO `area` VALUES ('86150100', '呼和浩特市', '010000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150125,86150124,86150123,86150122,86150121,86150105,86150104,86150103,86150102,86150101');
INSERT INTO `area` VALUES ('86150101', '市辖区', '010000', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150102', '新城区', '010000', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150103', '回民区', '010000', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150104', '玉泉区', '010000', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150105', '赛罕区', '010000', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150121', '土默特左旗', '010100', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150122', '托克托县', '010200', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150123', '和林格尔县', '011500', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150124', '清水河县', '011600', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150125', '武川县', '011700', '86150100', '86150000', '86150100,86150000', '呼和浩特市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150200', '包头市', '014000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150223,86150222,86150221,86150207,86150206,86150205,86150204,86150203,86150202,86150201');
INSERT INTO `area` VALUES ('86150201', '市辖区', '014000', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150202', '东河区', '014000', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150203', '昆都仑区', '014000', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150204', '青山区', '014000', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150205', '石拐区', '014000', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150206', '白云矿区', '014000', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150207', '九原区', '014000', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150221', '土默特右旗', '014100', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150222', '固阳县', '014200', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150223', '达尔罕茂明安联合旗', '014500', '86150200', '86150000', '86150200,86150000', '包头市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150300', '乌海市', '016000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150304,86150303,86150302,86150301');
INSERT INTO `area` VALUES ('86150301', '市辖区', '016000', '86150300', '86150000', '86150300,86150000', '乌海市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150302', '海勃湾区', '016000', '86150300', '86150000', '86150300,86150000', '乌海市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150303', '海南区', '016000', '86150300', '86150000', '86150300,86150000', '乌海市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150304', '乌达区', '016000', '86150300', '86150000', '86150300,86150000', '乌海市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150400', '赤峰市', '024000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150430,86150429,86150428,86150426,86150425,86150424,86150423,86150422,86150421,86150404,86150403,86150402,86150401');
INSERT INTO `area` VALUES ('86150401', '市辖区', '024000', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150402', '红山区', '024000', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150403', '元宝山区', '024000', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150404', '松山区', '024000', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150421', '阿鲁科尔沁旗', '025500', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150422', '巴林左旗', '025450', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150423', '巴林右旗', '025150', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150424', '林西县', '025250', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150425', '克什克腾旗', '025350', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150426', '翁牛特旗', '024500', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150428', '喀喇沁旗', '024400', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150429', '宁城县', '024200', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150430', '敖汉旗', '024300', '86150400', '86150000', '86150400,86150000', '赤峰市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150500', '通辽市', '028000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150581,86150526,86150525,86150524,86150523,86150522,86150521,86150502,86150501');
INSERT INTO `area` VALUES ('86150501', '市辖区', '028000', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150502', '科尔沁区', '028000', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150521', '科尔沁左翼中旗', '029300', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150522', '科尔沁左翼后旗', '028100', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150523', '开鲁县', '028400', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150524', '库伦旗', '028200', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150525', '奈曼旗', '028300', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150526', '扎鲁特旗', '029100', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150581', '霍林郭勒市', '029200', '86150500', '86150000', '86150500,86150000', '通辽市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150600', '鄂尔多斯市', '017000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150627,86150626,86150625,86150624,86150623,86150622,86150621,86150602');
INSERT INTO `area` VALUES ('86150602', '东胜区', '017000', '86150600', '86150000', '86150600,86150000', '鄂尔多斯市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150621', '达拉特旗', '017000', '86150600', '86150000', '86150600,86150000', '鄂尔多斯市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150622', '准格尔旗', '017100', '86150600', '86150000', '86150600,86150000', '鄂尔多斯市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150623', '鄂托克前旗', '016200', '86150600', '86150000', '86150600,86150000', '鄂尔多斯市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150624', '鄂托克旗', '016100', '86150600', '86150000', '86150600,86150000', '鄂尔多斯市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150625', '杭锦旗', '017400', '86150600', '86150000', '86150600,86150000', '鄂尔多斯市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150626', '乌审旗', '017300', '86150600', '86150000', '86150600,86150000', '鄂尔多斯市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150627', '伊金霍洛旗', '017200', '86150600', '86150000', '86150600,86150000', '鄂尔多斯市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150700', '呼伦贝尔市', '021000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150785,86150784,86150783,86150782,86150781,86150727,86150726,86150725,86150724,86150723,86150722,86150721,86150702,86150701');
INSERT INTO `area` VALUES ('86150701', '市辖区', '021000', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150702', '海拉尔区', '021000', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150721', '阿荣旗', '162750', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150722', '莫力达瓦达斡尔族自治旗', '162850', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150723', '鄂伦春自治旗', '022450', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150724', '鄂温克族自治旗', '021100', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150725', '陈巴尔虎旗', '021500', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150726', '新巴尔虎左旗', '021200', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150727', '新巴尔虎右旗', '021300', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150781', '满洲里市', '021400', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150782', '牙克石市', '022150', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150783', '扎兰屯市', '162650', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150784', '额尔古纳市', '022250', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150785', '根河市', '022350', '86150700', '86150000', '86150700,86150000', '呼伦贝尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150800', '巴彦淖尔市', '015000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150826,86150825,86150824,86150823,86150822,86150821,86150802,86150801');
INSERT INTO `area` VALUES ('86150801', '市辖区', '015000', '86150800', '86150000', '86150800,86150000', '巴彦淖尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150802', '临河区', '015000', '86150800', '86150000', '86150800,86150000', '巴彦淖尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150821', '五原县', '015100', '86150800', '86150000', '86150800,86150000', '巴彦淖尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150822', '磴口县', '015200', '86150800', '86150000', '86150800,86150000', '巴彦淖尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150823', '乌拉特前旗', '014400', '86150800', '86150000', '86150800,86150000', '巴彦淖尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150824', '乌拉特中旗', '015300', '86150800', '86150000', '86150800,86150000', '巴彦淖尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150825', '乌拉特后旗', '015500', '86150800', '86150000', '86150800,86150000', '巴彦淖尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150826', '杭锦后旗', '015400', '86150800', '86150000', '86150800,86150000', '巴彦淖尔市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150900', '乌兰察布市', '012000', '86150000', '86150000', '86150000', '内蒙古自治区', '86150981,86150929,86150928,86150927,86150926,86150925,86150924,86150923,86150922,86150921,86150902,86150901');
INSERT INTO `area` VALUES ('86150901', '市辖区', '012000', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150902', '集宁区', '012000', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150921', '卓资县', '012300', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150922', '化德县', '013350', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150923', '商都县', '013400', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150924', '兴和县', '013650', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150925', '凉城县', '013750', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150926', '察哈尔右翼前旗', '012200', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150927', '察哈尔右翼中旗', '013500', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150928', '察哈尔右翼后旗', '012400', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150929', '四子王旗', '011800', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86150981', '丰镇市', '012100', '86150900', '86150000', '86150900,86150000', '乌兰察布市,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152200', '兴安盟', '137400', '86150000', '86150000', '86150000', '内蒙古自治区', '86152224,86152223,86152222,86152221,86152202,86152201');
INSERT INTO `area` VALUES ('86152201', '乌兰浩特市', '137400', '86152200', '86150000', '86152200,86150000', '兴安盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152202', '阿尔山市', '137400', '86152200', '86150000', '86152200,86150000', '兴安盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152221', '科尔沁右翼前旗', '137400', '86152200', '86150000', '86152200,86150000', '兴安盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152222', '科尔沁右翼中旗', '029400', '86152200', '86150000', '86152200,86150000', '兴安盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152223', '扎赉特旗', '137600', '86152200', '86150000', '86152200,86150000', '兴安盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152224', '突泉县', '137500', '86152200', '86150000', '86152200,86150000', '兴安盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152500', '锡林郭勒盟', '012600', '86150000', '86150000', '86150000', '内蒙古自治区', '86152531,86152530,86152529,86152528,86152527,86152526,86152525,86152524,86152523,86152522,86152502,86152501');
INSERT INTO `area` VALUES ('86152501', '二连浩特市', '012600', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152502', '锡林浩特市', '026000', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152522', '阿巴嘎旗', '011400', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152523', '苏尼特左旗', '011300', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152524', '苏尼特右旗', '011200', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152525', '东乌珠穆沁旗', '026300', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152526', '西乌珠穆沁旗', '026200', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152527', '太仆寺旗', '027000', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152528', '镶黄旗', '013250', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152529', '正镶白旗', '013800', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152530', '正蓝旗', '027200', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152531', '多伦县', '027300', '86152500', '86150000', '86152500,86150000', '锡林郭勒盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152900', '阿拉善盟', '750300', '86150000', '86150000', '86150000', '内蒙古自治区', '86152923,86152922,86152921');
INSERT INTO `area` VALUES ('86152921', '阿拉善左旗', '750300', '86152900', '86150000', '86152900,86150000', '阿拉善盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152922', '阿拉善右旗', '737300', '86152900', '86150000', '86152900,86150000', '阿拉善盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86152923', '额济纳旗', '735400', '86152900', '86150000', '86152900,86150000', '阿拉善盟,内蒙古自治区', null);
INSERT INTO `area` VALUES ('86210000', '辽宁省', null, '0', null, null, null, '86211400,86211300,86211200,86211100,86211000,86210900,86210800,86210700,86210600,86210500,86210400,86210300,86210200,86210100');
INSERT INTO `area` VALUES ('86210100', '沈阳市', '110000', '86210000', '86210000', '86210000', '辽宁省', '86210181,86210124,86210123,86210122,86210114,86210113,86210112,86210111,86210106,86210105,86210104,86210103,86210102,86210101');
INSERT INTO `area` VALUES ('86210101', '市辖区', '110000', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210102', '和平区', '110000', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210103', '沈河区', '110000', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210104', '大东区', '110000', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210105', '皇姑区', '110000', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210106', '铁西区', '110020', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210111', '苏家屯区', '110100', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210112', '东陵区', '110000', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210113', '新城子区', '110000', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210114', '于洪区', '110000', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210122', '辽中县', '110200', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210123', '康平县', '110500', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210124', '法库县', '110400', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210181', '新民市', '110300', '86210100', '86210000', '86210100,86210000', '沈阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86210200', '大连市', '116000', '86210000', '86210000', '86210000', '辽宁省', '86210283,86210282,86210281,86210224,86210213,86210212,86210211,86210204,86210203,86210202,86210201');
INSERT INTO `area` VALUES ('86210201', '市辖区', '116000', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210202', '中山区', '116000', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210203', '西岗区', '116000', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210204', '沙河口区', '116000', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210211', '甘井子区', '116000', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210212', '旅顺口区', '116000', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210213', '金州区', '116000', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210224', '长海县', '116500', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210281', '瓦房店市', '116300', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210282', '普兰店市', '116200', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210283', '庄河市', '116400', '86210200', '86210000', '86210200,86210000', '大连市,辽宁省', null);
INSERT INTO `area` VALUES ('86210300', '鞍山市', '114000', '86210000', '86210000', '86210000', '辽宁省', '86210381,86210323,86210321,86210311,86210304,86210303,86210302,86210301');
INSERT INTO `area` VALUES ('86210301', '市辖区', '114000', '86210300', '86210000', '86210300,86210000', '鞍山市,辽宁省', null);
INSERT INTO `area` VALUES ('86210302', '铁东区', '114000', '86210300', '86210000', '86210300,86210000', '鞍山市,辽宁省', null);
INSERT INTO `area` VALUES ('86210303', '铁西区', '114000', '86210300', '86210000', '86210300,86210000', '鞍山市,辽宁省', null);
INSERT INTO `area` VALUES ('86210304', '立山区', '114000', '86210300', '86210000', '86210300,86210000', '鞍山市,辽宁省', null);
INSERT INTO `area` VALUES ('86210311', '千山区', '114000', '86210300', '86210000', '86210300,86210000', '鞍山市,辽宁省', null);
INSERT INTO `area` VALUES ('86210321', '台安县', '114100', '86210300', '86210000', '86210300,86210000', '鞍山市,辽宁省', null);
INSERT INTO `area` VALUES ('86210323', '岫岩满族自治县', '118400', '86210300', '86210000', '86210300,86210000', '鞍山市,辽宁省', null);
INSERT INTO `area` VALUES ('86210381', '海城市', '114200', '86210300', '86210000', '86210300,86210000', '鞍山市,辽宁省', null);
INSERT INTO `area` VALUES ('86210400', '抚顺市', '113000', '86210000', '86210000', '86210000', '辽宁省', '86210423,86210422,86210421,86210411,86210404,86210403,86210402,86210401');
INSERT INTO `area` VALUES ('86210401', '市辖区', '113000', '86210400', '86210000', '86210400,86210000', '抚顺市,辽宁省', null);
INSERT INTO `area` VALUES ('86210402', '新抚区', '113000', '86210400', '86210000', '86210400,86210000', '抚顺市,辽宁省', null);
INSERT INTO `area` VALUES ('86210403', '东洲区', '113000', '86210400', '86210000', '86210400,86210000', '抚顺市,辽宁省', null);
INSERT INTO `area` VALUES ('86210404', '望花区', '113000', '86210400', '86210000', '86210400,86210000', '抚顺市,辽宁省', null);
INSERT INTO `area` VALUES ('86210411', '顺城区', '113000', '86210400', '86210000', '86210400,86210000', '抚顺市,辽宁省', null);
INSERT INTO `area` VALUES ('86210421', '抚顺县', '113100', '86210400', '86210000', '86210400,86210000', '抚顺市,辽宁省', null);
INSERT INTO `area` VALUES ('86210422', '新宾满族自治县', '113200', '86210400', '86210000', '86210400,86210000', '抚顺市,辽宁省', null);
INSERT INTO `area` VALUES ('86210423', '清原满族自治县', '113300', '86210400', '86210000', '86210400,86210000', '抚顺市,辽宁省', null);
INSERT INTO `area` VALUES ('86210500', '本溪市', '117000', '86210000', '86210000', '86210000', '辽宁省', '86210522,86210521,86210505,86210504,86210503,86210502,86210501');
INSERT INTO `area` VALUES ('86210501', '市辖区', '117000', '86210500', '86210000', '86210500,86210000', '本溪市,辽宁省', null);
INSERT INTO `area` VALUES ('86210502', '平山区', '117000', '86210500', '86210000', '86210500,86210000', '本溪市,辽宁省', null);
INSERT INTO `area` VALUES ('86210503', '溪湖区', '117000', '86210500', '86210000', '86210500,86210000', '本溪市,辽宁省', null);
INSERT INTO `area` VALUES ('86210504', '明山区', '117000', '86210500', '86210000', '86210500,86210000', '本溪市,辽宁省', null);
INSERT INTO `area` VALUES ('86210505', '南芬区', '117000', '86210500', '86210000', '86210500,86210000', '本溪市,辽宁省', null);
INSERT INTO `area` VALUES ('86210521', '本溪满族自治县', '117100', '86210500', '86210000', '86210500,86210000', '本溪市,辽宁省', null);
INSERT INTO `area` VALUES ('86210522', '桓仁满族自治县', '117200', '86210500', '86210000', '86210500,86210000', '本溪市,辽宁省', null);
INSERT INTO `area` VALUES ('86210600', '丹东市', '118000', '86210000', '86210000', '86210000', '辽宁省', '86210682,86210681,86210624,86210604,86210603,86210602,86210601');
INSERT INTO `area` VALUES ('86210601', '市辖区', '118000', '86210600', '86210000', '86210600,86210000', '丹东市,辽宁省', null);
INSERT INTO `area` VALUES ('86210602', '元宝区', '118000', '86210600', '86210000', '86210600,86210000', '丹东市,辽宁省', null);
INSERT INTO `area` VALUES ('86210603', '振兴区', '118000', '86210600', '86210000', '86210600,86210000', '丹东市,辽宁省', null);
INSERT INTO `area` VALUES ('86210604', '振安区', '118000', '86210600', '86210000', '86210600,86210000', '丹东市,辽宁省', null);
INSERT INTO `area` VALUES ('86210624', '宽甸满族自治县', '118200', '86210600', '86210000', '86210600,86210000', '丹东市,辽宁省', null);
INSERT INTO `area` VALUES ('86210681', '东港市', '118300', '86210600', '86210000', '86210600,86210000', '丹东市,辽宁省', null);
INSERT INTO `area` VALUES ('86210682', '凤城市', '118100', '86210600', '86210000', '86210600,86210000', '丹东市,辽宁省', null);
INSERT INTO `area` VALUES ('86210700', '锦州市', '121000', '86210000', '86210000', '86210000', '辽宁省', '86210782,86210781,86210727,86210726,86210711,86210703,86210702,86210701');
INSERT INTO `area` VALUES ('86210701', '市辖区', '121000', '86210700', '86210000', '86210700,86210000', '锦州市,辽宁省', null);
INSERT INTO `area` VALUES ('86210702', '古塔区', '121000', '86210700', '86210000', '86210700,86210000', '锦州市,辽宁省', null);
INSERT INTO `area` VALUES ('86210703', '凌河区', '121000', '86210700', '86210000', '86210700,86210000', '锦州市,辽宁省', null);
INSERT INTO `area` VALUES ('86210711', '太和区', '121000', '86210700', '86210000', '86210700,86210000', '锦州市,辽宁省', null);
INSERT INTO `area` VALUES ('86210726', '黑山县', '121400', '86210700', '86210000', '86210700,86210000', '锦州市,辽宁省', null);
INSERT INTO `area` VALUES ('86210727', '义　县', '121100', '86210700', '86210000', '86210700,86210000', '锦州市,辽宁省', null);
INSERT INTO `area` VALUES ('86210781', '凌海市', '121200', '86210700', '86210000', '86210700,86210000', '锦州市,辽宁省', null);
INSERT INTO `area` VALUES ('86210782', '北宁市', '121300', '86210700', '86210000', '86210700,86210000', '锦州市,辽宁省', null);
INSERT INTO `area` VALUES ('86210800', '营口市', '115000', '86210000', '86210000', '86210000', '辽宁省', '86210882,86210881,86210811,86210804,86210803,86210802,86210801');
INSERT INTO `area` VALUES ('86210801', '市辖区', '115000', '86210800', '86210000', '86210800,86210000', '营口市,辽宁省', null);
INSERT INTO `area` VALUES ('86210802', '站前区', '115000', '86210800', '86210000', '86210800,86210000', '营口市,辽宁省', null);
INSERT INTO `area` VALUES ('86210803', '西市区', '115000', '86210800', '86210000', '86210800,86210000', '营口市,辽宁省', null);
INSERT INTO `area` VALUES ('86210804', '鲅鱼圈区', '115000', '86210800', '86210000', '86210800,86210000', '营口市,辽宁省', null);
INSERT INTO `area` VALUES ('86210811', '老边区', '115000', '86210800', '86210000', '86210800,86210000', '营口市,辽宁省', null);
INSERT INTO `area` VALUES ('86210881', '盖州市', '115200', '86210800', '86210000', '86210800,86210000', '营口市,辽宁省', null);
INSERT INTO `area` VALUES ('86210882', '大石桥市', '115100', '86210800', '86210000', '86210800,86210000', '营口市,辽宁省', null);
INSERT INTO `area` VALUES ('86210900', '阜新市', '123000', '86210000', '86210000', '86210000', '辽宁省', '86210922,86210921,86210911,86210905,86210904,86210903,86210902,86210901');
INSERT INTO `area` VALUES ('86210901', '市辖区', '123000', '86210900', '86210000', '86210900,86210000', '阜新市,辽宁省', null);
INSERT INTO `area` VALUES ('86210902', '海州区', '123000', '86210900', '86210000', '86210900,86210000', '阜新市,辽宁省', null);
INSERT INTO `area` VALUES ('86210903', '新邱区', '123000', '86210900', '86210000', '86210900,86210000', '阜新市,辽宁省', null);
INSERT INTO `area` VALUES ('86210904', '太平区', '123000', '86210900', '86210000', '86210900,86210000', '阜新市,辽宁省', null);
INSERT INTO `area` VALUES ('86210905', '清河门区', '123000', '86210900', '86210000', '86210900,86210000', '阜新市,辽宁省', null);
INSERT INTO `area` VALUES ('86210911', '细河区', '123000', '86210900', '86210000', '86210900,86210000', '阜新市,辽宁省', null);
INSERT INTO `area` VALUES ('86210921', '阜新蒙古族自治县', '123100', '86210900', '86210000', '86210900,86210000', '阜新市,辽宁省', null);
INSERT INTO `area` VALUES ('86210922', '彰武县', '123200', '86210900', '86210000', '86210900,86210000', '阜新市,辽宁省', null);
INSERT INTO `area` VALUES ('86211000', '辽阳市', '111000', '86210000', '86210000', '86210000', '辽宁省', '86211081,86211021,86211011,86211005,86211004,86211003,86211002,86211001');
INSERT INTO `area` VALUES ('86211001', '市辖区', '111000', '86211000', '86210000', '86211000,86210000', '辽阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211002', '白塔区', '111000', '86211000', '86210000', '86211000,86210000', '辽阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211003', '文圣区', '111000', '86211000', '86210000', '86211000,86210000', '辽阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211004', '宏伟区', '111000', '86211000', '86210000', '86211000,86210000', '辽阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211005', '弓长岭区', '111000', '86211000', '86210000', '86211000,86210000', '辽阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211011', '太子河区', '111000', '86211000', '86210000', '86211000,86210000', '辽阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211021', '辽阳县', '111200', '86211000', '86210000', '86211000,86210000', '辽阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211081', '灯塔市', '111300', '86211000', '86210000', '86211000,86210000', '辽阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211100', '盘锦市', '124000', '86210000', '86210000', '86210000', '辽宁省', '86211122,86211121,86211103,86211102,86211101');
INSERT INTO `area` VALUES ('86211101', '市辖区', '124000', '86211100', '86210000', '86211100,86210000', '盘锦市,辽宁省', null);
INSERT INTO `area` VALUES ('86211102', '双台子区', '124000', '86211100', '86210000', '86211100,86210000', '盘锦市,辽宁省', null);
INSERT INTO `area` VALUES ('86211103', '兴隆台区', '124000', '86211100', '86210000', '86211100,86210000', '盘锦市,辽宁省', null);
INSERT INTO `area` VALUES ('86211121', '大洼县', '124200', '86211100', '86210000', '86211100,86210000', '盘锦市,辽宁省', null);
INSERT INTO `area` VALUES ('86211122', '盘山县', '124100', '86211100', '86210000', '86211100,86210000', '盘锦市,辽宁省', null);
INSERT INTO `area` VALUES ('86211200', '铁岭市', '112000', '86210000', '86210000', '86210000', '辽宁省', '86211282,86211281,86211224,86211223,86211221,86211204,86211202,86211201');
INSERT INTO `area` VALUES ('86211201', '市辖区', '112000', '86211200', '86210000', '86211200,86210000', '铁岭市,辽宁省', null);
INSERT INTO `area` VALUES ('86211202', '银州区', '112000', '86211200', '86210000', '86211200,86210000', '铁岭市,辽宁省', null);
INSERT INTO `area` VALUES ('86211204', '清河区', '112000', '86211200', '86210000', '86211200,86210000', '铁岭市,辽宁省', null);
INSERT INTO `area` VALUES ('86211221', '铁岭县', '112600', '86211200', '86210000', '86211200,86210000', '铁岭市,辽宁省', null);
INSERT INTO `area` VALUES ('86211223', '西丰县', '112400', '86211200', '86210000', '86211200,86210000', '铁岭市,辽宁省', null);
INSERT INTO `area` VALUES ('86211224', '昌图县', '112500', '86211200', '86210000', '86211200,86210000', '铁岭市,辽宁省', null);
INSERT INTO `area` VALUES ('86211281', '调兵山市', '112700', '86211200', '86210000', '86211200,86210000', '铁岭市,辽宁省', null);
INSERT INTO `area` VALUES ('86211282', '开原市', '112300', '86211200', '86210000', '86211200,86210000', '铁岭市,辽宁省', null);
INSERT INTO `area` VALUES ('86211300', '朝阳市', '122000', '86210000', '86210000', '86210000', '辽宁省', '86211382,86211381,86211324,86211322,86211321,86211303,86211302,86211301');
INSERT INTO `area` VALUES ('86211301', '市辖区', '122000', '86211300', '86210000', '86211300,86210000', '朝阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211302', '双塔区', '122000', '86211300', '86210000', '86211300,86210000', '朝阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211303', '龙城区', '122000', '86211300', '86210000', '86211300,86210000', '朝阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211321', '朝阳县', '122000', '86211300', '86210000', '86211300,86210000', '朝阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211322', '建平县', '122400', '86211300', '86210000', '86211300,86210000', '朝阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211324', '喀喇沁左翼蒙古族自治县', '122300', '86211300', '86210000', '86211300,86210000', '朝阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211381', '北票市', '122100', '86211300', '86210000', '86211300,86210000', '朝阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211382', '凌源市', '122500', '86211300', '86210000', '86211300,86210000', '朝阳市,辽宁省', null);
INSERT INTO `area` VALUES ('86211400', '葫芦岛市', '125000', '86210000', '86210000', '86210000', '辽宁省', '86211481,86211422,86211421,86211404,86211403,86211402,86211401');
INSERT INTO `area` VALUES ('86211401', '市辖区', '125000', '86211400', '86210000', '86211400,86210000', '葫芦岛市,辽宁省', null);
INSERT INTO `area` VALUES ('86211402', '连山区', '125000', '86211400', '86210000', '86211400,86210000', '葫芦岛市,辽宁省', null);
INSERT INTO `area` VALUES ('86211403', '龙港区', '125000', '86211400', '86210000', '86211400,86210000', '葫芦岛市,辽宁省', null);
INSERT INTO `area` VALUES ('86211404', '南票区', '125000', '86211400', '86210000', '86211400,86210000', '葫芦岛市,辽宁省', null);
INSERT INTO `area` VALUES ('86211421', '绥中县', '125200', '86211400', '86210000', '86211400,86210000', '葫芦岛市,辽宁省', null);
INSERT INTO `area` VALUES ('86211422', '建昌县', '125300', '86211400', '86210000', '86211400,86210000', '葫芦岛市,辽宁省', null);
INSERT INTO `area` VALUES ('86211481', '兴城市', '125100', '86211400', '86210000', '86211400,86210000', '葫芦岛市,辽宁省', null);
INSERT INTO `area` VALUES ('86220000', '吉林省', null, '0', null, null, null, '86222400,86220800,86220700,86220600,86220500,86220400,86220300,86220200,86220100');
INSERT INTO `area` VALUES ('86220100', '长春市', '130000', '86220000', '86220000', '86220000', '吉林省', '86220183,86220182,86220181,86220122,86220112,86220106,86220105,86220104,86220103,86220102,86220101');
INSERT INTO `area` VALUES ('86220101', '市辖区', '130000', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220102', '南关区', '130000', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220103', '宽城区', '130000', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220104', '朝阳区', '130000', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220105', '二道区', '130000', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220106', '绿园区', '130000', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220112', '双阳区', '130600', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220122', '农安县', '130200', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220181', '九台市', '130500', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220182', '榆树市', '130400', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220183', '德惠市', '130300', '86220100', '86220000', '86220100,86220000', '长春市,吉林省', null);
INSERT INTO `area` VALUES ('86220200', '吉林市', '132000', '86220000', '86220000', '86220000', '吉林省', '86220284,86220283,86220282,86220281,86220221,86220211,86220204,86220203,86220202,86220201');
INSERT INTO `area` VALUES ('86220201', '市辖区', '132000', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220202', '昌邑区', '132000', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220203', '龙潭区', '132000', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220204', '船营区', '132000', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220211', '丰满区', '132000', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220221', '永吉县', '132100', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220281', '蛟河市', '132500', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220282', '桦甸市', '132400', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220283', '舒兰市', '132600', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220284', '磐石市', '132300', '86220200', '86220000', '86220200,86220000', '吉林市,吉林省', null);
INSERT INTO `area` VALUES ('86220300', '四平市', '136000', '86220000', '86220000', '86220000', '吉林省', '86220382,86220381,86220323,86220322,86220303,86220302,86220301');
INSERT INTO `area` VALUES ('86220301', '市辖区', '136000', '86220300', '86220000', '86220300,86220000', '四平市,吉林省', null);
INSERT INTO `area` VALUES ('86220302', '铁西区', '136000', '86220300', '86220000', '86220300,86220000', '四平市,吉林省', null);
INSERT INTO `area` VALUES ('86220303', '铁东区', '136000', '86220300', '86220000', '86220300,86220000', '四平市,吉林省', null);
INSERT INTO `area` VALUES ('86220322', '梨树县', '136500', '86220300', '86220000', '86220300,86220000', '四平市,吉林省', null);
INSERT INTO `area` VALUES ('86220323', '伊通满族自治县', '130700', '86220300', '86220000', '86220300,86220000', '四平市,吉林省', null);
INSERT INTO `area` VALUES ('86220381', '公主岭市', '136100', '86220300', '86220000', '86220300,86220000', '四平市,吉林省', null);
INSERT INTO `area` VALUES ('86220382', '双辽市', '136400', '86220300', '86220000', '86220300,86220000', '四平市,吉林省', null);
INSERT INTO `area` VALUES ('86220400', '辽源市', '136200', '86220000', '86220000', '86220000', '吉林省', '86220422,86220421,86220403,86220402,86220401');
INSERT INTO `area` VALUES ('86220401', '市辖区', '136200', '86220400', '86220000', '86220400,86220000', '辽源市,吉林省', null);
INSERT INTO `area` VALUES ('86220402', '龙山区', '136200', '86220400', '86220000', '86220400,86220000', '辽源市,吉林省', null);
INSERT INTO `area` VALUES ('86220403', '西安区', '136200', '86220400', '86220000', '86220400,86220000', '辽源市,吉林省', null);
INSERT INTO `area` VALUES ('86220421', '东丰县', '136300', '86220400', '86220000', '86220400,86220000', '辽源市,吉林省', null);
INSERT INTO `area` VALUES ('86220422', '东辽县', '136600', '86220400', '86220000', '86220400,86220000', '辽源市,吉林省', null);
INSERT INTO `area` VALUES ('86220500', '通化市', '134000', '86220000', '86220000', '86220000', '吉林省', '86220582,86220581,86220524,86220523,86220521,86220503,86220502,86220501');
INSERT INTO `area` VALUES ('86220501', '市辖区', '134000', '86220500', '86220000', '86220500,86220000', '通化市,吉林省', null);
INSERT INTO `area` VALUES ('86220502', '东昌区', '134000', '86220500', '86220000', '86220500,86220000', '通化市,吉林省', null);
INSERT INTO `area` VALUES ('86220503', '二道江区', '134000', '86220500', '86220000', '86220500,86220000', '通化市,吉林省', null);
INSERT INTO `area` VALUES ('86220521', '通化县', '134100', '86220500', '86220000', '86220500,86220000', '通化市,吉林省', null);
INSERT INTO `area` VALUES ('86220523', '辉南县', '135100', '86220500', '86220000', '86220500,86220000', '通化市,吉林省', null);
INSERT INTO `area` VALUES ('86220524', '柳河县', '135300', '86220500', '86220000', '86220500,86220000', '通化市,吉林省', null);
INSERT INTO `area` VALUES ('86220581', '梅河口市', '135000', '86220500', '86220000', '86220500,86220000', '通化市,吉林省', null);
INSERT INTO `area` VALUES ('86220582', '集安市', '134200', '86220500', '86220000', '86220500,86220000', '通化市,吉林省', null);
INSERT INTO `area` VALUES ('86220600', '白山市', '134300', '86220000', '86220000', '86220000', '吉林省', '86220681,86220625,86220623,86220622,86220621,86220602,86220601');
INSERT INTO `area` VALUES ('86220601', '市辖区', '134300', '86220600', '86220000', '86220600,86220000', '白山市,吉林省', null);
INSERT INTO `area` VALUES ('86220602', '八道江区', '134300', '86220600', '86220000', '86220600,86220000', '白山市,吉林省', null);
INSERT INTO `area` VALUES ('86220621', '抚松县', '134500', '86220600', '86220000', '86220600,86220000', '白山市,吉林省', null);
INSERT INTO `area` VALUES ('86220622', '靖宇县', '135200', '86220600', '86220000', '86220600,86220000', '白山市,吉林省', null);
INSERT INTO `area` VALUES ('86220623', '长白朝鲜族自治县', '134400', '86220600', '86220000', '86220600,86220000', '白山市,吉林省', null);
INSERT INTO `area` VALUES ('86220625', '江源县', '134700', '86220600', '86220000', '86220600,86220000', '白山市,吉林省', null);
INSERT INTO `area` VALUES ('86220681', '临江市', '134600', '86220600', '86220000', '86220600,86220000', '白山市,吉林省', null);
INSERT INTO `area` VALUES ('86220700', '松原市', '138000', '86220000', '86220000', '86220000', '吉林省', '86220724,86220723,86220722,86220721,86220702,86220701');
INSERT INTO `area` VALUES ('86220701', '市辖区', '138000', '86220700', '86220000', '86220700,86220000', '松原市,吉林省', null);
INSERT INTO `area` VALUES ('86220702', '宁江区', '138000', '86220700', '86220000', '86220700,86220000', '松原市,吉林省', null);
INSERT INTO `area` VALUES ('86220721', '前郭尔罗斯蒙古族自治县', '131100', '86220700', '86220000', '86220700,86220000', '松原市,吉林省', null);
INSERT INTO `area` VALUES ('86220722', '长岭县', '131500', '86220700', '86220000', '86220700,86220000', '松原市,吉林省', null);
INSERT INTO `area` VALUES ('86220723', '乾安县', '131400', '86220700', '86220000', '86220700,86220000', '松原市,吉林省', null);
INSERT INTO `area` VALUES ('86220724', '扶余县', '131200', '86220700', '86220000', '86220700,86220000', '松原市,吉林省', null);
INSERT INTO `area` VALUES ('86220800', '白城市', '137000', '86220000', '86220000', '86220000', '吉林省', '86220882,86220881,86220822,86220821,86220802,86220801');
INSERT INTO `area` VALUES ('86220801', '市辖区', '137000', '86220800', '86220000', '86220800,86220000', '白城市,吉林省', null);
INSERT INTO `area` VALUES ('86220802', '洮北区', '137000', '86220800', '86220000', '86220800,86220000', '白城市,吉林省', null);
INSERT INTO `area` VALUES ('86220821', '镇赉县', '137300', '86220800', '86220000', '86220800,86220000', '白城市,吉林省', null);
INSERT INTO `area` VALUES ('86220822', '通榆县', '137200', '86220800', '86220000', '86220800,86220000', '白城市,吉林省', null);
INSERT INTO `area` VALUES ('86220881', '洮南市', '137100', '86220800', '86220000', '86220800,86220000', '白城市,吉林省', null);
INSERT INTO `area` VALUES ('86220882', '大安市', '131300', '86220800', '86220000', '86220800,86220000', '白城市,吉林省', null);
INSERT INTO `area` VALUES ('86222400', '延边朝鲜族自治州', '133000', '86220000', '86220000', '86220000', '吉林省', '86222426,86222424,86222406,86222405,86222404,86222403,86222402,86222401');
INSERT INTO `area` VALUES ('86222401', '延吉市', '133000', '86222400', '86220000', '86222400,86220000', '延边朝鲜族自治州,吉林省', null);
INSERT INTO `area` VALUES ('86222402', '图们市', '133100', '86222400', '86220000', '86222400,86220000', '延边朝鲜族自治州,吉林省', null);
INSERT INTO `area` VALUES ('86222403', '敦化市', '133700', '86222400', '86220000', '86222400,86220000', '延边朝鲜族自治州,吉林省', null);
INSERT INTO `area` VALUES ('86222404', '珲春市', '133300', '86222400', '86220000', '86222400,86220000', '延边朝鲜族自治州,吉林省', null);
INSERT INTO `area` VALUES ('86222405', '龙井市', '133400', '86222400', '86220000', '86222400,86220000', '延边朝鲜族自治州,吉林省', null);
INSERT INTO `area` VALUES ('86222406', '和龙市', '133500', '86222400', '86220000', '86222400,86220000', '延边朝鲜族自治州,吉林省', null);
INSERT INTO `area` VALUES ('86222424', '汪清县', '133200', '86222400', '86220000', '86222400,86220000', '延边朝鲜族自治州,吉林省', null);
INSERT INTO `area` VALUES ('86222426', '安图县', '133600', '86222400', '86220000', '86222400,86220000', '延边朝鲜族自治州,吉林省', null);
INSERT INTO `area` VALUES ('86230000', '黑龙江省', null, '0', null, null, null, '86232700,86231200,86231100,86231000,86230900,86230800,86230700,86230600,86230500,86230400,86230300,86230200,86230100');
INSERT INTO `area` VALUES ('86230100', '哈尔滨市', '150000', '86230000', '86230000', '86230000', '黑龙江省', '86230184,86230183,86230182,86230181,86230129,86230128,86230127,86230126,86230125,86230124,86230123,86230111,86230109,86230108,86230107,86230106,86230104,86230103,86230102,86230101');
INSERT INTO `area` VALUES ('86230101', '市辖区', '150000', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230102', '道里区', '150000', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230103', '南岗区', '150000', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230104', '道外区', '150000', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230106', '香坊区', '150000', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230107', '动力区', '150000', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230108', '平房区', '150000', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230109', '松北区', '150000', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230111', '呼兰区', '150500', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230123', '依兰县', '154800', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230124', '方正县', '150800', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230125', '宾　县', '150400', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230126', '巴彦县', '151800', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230127', '木兰县', '151900', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230128', '通河县', '150900', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230129', '延寿县', '150700', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230181', '阿城市', '150300', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230182', '双城市', '150100', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230183', '尚志市', '150600', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230184', '五常市', '150200', '86230100', '86230000', '86230100,86230000', '哈尔滨市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230200', '齐齐哈尔市', '161000', '86230000', '86230000', '86230000', '黑龙江省', '86230281,86230231,86230230,86230229,86230227,86230225,86230224,86230223,86230221,86230208,86230207,86230206,86230205,86230204,86230203,86230202,86230201');
INSERT INTO `area` VALUES ('86230201', '市辖区', '161000', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230202', '龙沙区', '161000', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230203', '建华区', '161000', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230204', '铁锋区', '161000', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230205', '昂昂溪区', '161000', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230206', '富拉尔基区', '161000', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230207', '碾子山区', '161000', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230208', '梅里斯达斡尔族区', '161000', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230221', '龙江县', '161100', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230223', '依安县', '161500', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230224', '泰来县', '162400', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230225', '甘南县', '162100', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230227', '富裕县', '161200', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230229', '克山县', '161600', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230230', '克东县', '164800', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230231', '拜泉县', '164700', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230281', '讷河市', '161300', '86230200', '86230000', '86230200,86230000', '齐齐哈尔市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230300', '鸡西市', '158100', '86230000', '86230000', '86230000', '黑龙江省', '86230382,86230381,86230321,86230307,86230306,86230305,86230304,86230303,86230302,86230301');
INSERT INTO `area` VALUES ('86230301', '市辖区', '158100', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230302', '鸡冠区', '158100', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230303', '恒山区', '158100', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230304', '滴道区', '158100', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230305', '梨树区', '158100', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230306', '城子河区', '158100', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230307', '麻山区', '158100', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230321', '鸡东县', '158200', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230381', '虎林市', '158400', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230382', '密山市', '158300', '86230300', '86230000', '86230300,86230000', '鸡西市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230400', '鹤岗市', '154000', '86230000', '86230000', '86230000', '黑龙江省', '86230422,86230421,86230407,86230406,86230405,86230404,86230403,86230402,86230401');
INSERT INTO `area` VALUES ('86230401', '市辖区', '154000', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230402', '向阳区', '154000', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230403', '工农区', '154100', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230404', '南山区', '154100', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230405', '兴安区', '154100', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230406', '东山区', '154100', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230407', '兴山区', '154100', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230421', '萝北县', '154200', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230422', '绥滨县', '156200', '86230400', '86230000', '86230400,86230000', '鹤岗市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230500', '双鸭山市', '155100', '86230000', '86230000', '86230000', '黑龙江省', '86230524,86230523,86230522,86230521,86230506,86230505,86230503,86230502,86230501');
INSERT INTO `area` VALUES ('86230501', '市辖区', '155100', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230502', '尖山区', '155100', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230503', '岭东区', '155100', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230505', '四方台区', '155100', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230506', '宝山区', '155100', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230521', '集贤县', '155900', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230522', '友谊县', '155800', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230523', '宝清县', '155600', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230524', '饶河县', '155700', '86230500', '86230000', '86230500,86230000', '双鸭山市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230600', '大庆市', '163000', '86230000', '86230000', '86230000', '黑龙江省', '86230624,86230623,86230622,86230621,86230606,86230605,86230604,86230603,86230602,86230601');
INSERT INTO `area` VALUES ('86230601', '市辖区', '163000', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230602', '萨尔图区', '163000', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230603', '龙凤区', '163000', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230604', '让胡路区', '163000', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230605', '红岗区', '163000', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230606', '大同区', '163000', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230621', '肇州县', '166400', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230622', '肇源县', '166500', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230623', '林甸县', '166300', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230624', '杜尔伯特蒙古族自治县', '166200', '86230600', '86230000', '86230600,86230000', '大庆市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230700', '伊春市', '153000', '86230000', '86230000', '86230000', '黑龙江省', '86230781,86230722,86230716,86230715,86230714,86230713,86230712,86230711,86230710,86230709,86230708,86230707,86230706,86230705,86230704,86230703,86230702,86230701');
INSERT INTO `area` VALUES ('86230701', '市辖区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230702', '伊春区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230703', '南岔区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230704', '友好区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230705', '西林区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230706', '翠峦区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230707', '新青区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230708', '美溪区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230709', '金山屯区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230710', '五营区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230711', '乌马河区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230712', '汤旺河区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230713', '带岭区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230714', '乌伊岭区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230715', '红星区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230716', '上甘岭区', '153000', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230722', '嘉荫县', '153200', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230781', '铁力市', '152500', '86230700', '86230000', '86230700,86230000', '伊春市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230800', '佳木斯市', '154000', '86230000', '86230000', '86230000', '黑龙江省', '86230882,86230881,86230833,86230828,86230826,86230822,86230811,86230805,86230804,86230803,86230802,86230801');
INSERT INTO `area` VALUES ('86230801', '市辖区', '154000', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230802', '永红区', '154000', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230803', '向阳区', '154000', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230804', '前进区', '154000', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230805', '东风区', '154000', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230811', '郊　区', '154000', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230822', '桦南县', '154400', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230826', '桦川县', '154300', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230828', '汤原县', '154700', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230833', '抚远县', '156500', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230881', '同江市', '156400', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230882', '富锦市', '156100', '86230800', '86230000', '86230800,86230000', '佳木斯市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230900', '七台河市', '154600', '86230000', '86230000', '86230000', '黑龙江省', '86230921,86230904,86230903,86230902,86230901');
INSERT INTO `area` VALUES ('86230901', '市辖区', '154600', '86230900', '86230000', '86230900,86230000', '七台河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230902', '新兴区', '154600', '86230900', '86230000', '86230900,86230000', '七台河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230903', '桃山区', '154600', '86230900', '86230000', '86230900,86230000', '七台河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230904', '茄子河区', '154600', '86230900', '86230000', '86230900,86230000', '七台河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86230921', '勃利县', '154500', '86230900', '86230000', '86230900,86230000', '七台河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231000', '牡丹江市', '157000', '86230000', '86230000', '86230000', '黑龙江省', '86231085,86231084,86231083,86231081,86231025,86231024,86231005,86231004,86231003,86231002,86231001');
INSERT INTO `area` VALUES ('86231001', '市辖区', '157000', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231002', '东安区', '157000', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231003', '阳明区', '157000', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231004', '爱民区', '157000', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231005', '西安区', '157000', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231024', '东宁县', '157200', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231025', '林口县', '157600', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231081', '绥芬河市', '157300', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231083', '海林市', '157100', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231084', '宁安市', '157400', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231085', '穆棱市', '157500', '86231000', '86230000', '86231000,86230000', '牡丹江市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231100', '黑河市', '164300', '86230000', '86230000', '86230000', '黑龙江省', '86231182,86231181,86231124,86231123,86231121,86231102,86231101');
INSERT INTO `area` VALUES ('86231101', '市辖区', '164300', '86231100', '86230000', '86231100,86230000', '黑河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231102', '爱辉区', '164300', '86231100', '86230000', '86231100,86230000', '黑河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231121', '嫩江县', '161400', '86231100', '86230000', '86231100,86230000', '黑河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231123', '逊克县', '164400', '86231100', '86230000', '86231100,86230000', '黑河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231124', '孙吴县', '164200', '86231100', '86230000', '86231100,86230000', '黑河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231181', '北安市', '164000', '86231100', '86230000', '86231100,86230000', '黑河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231182', '五大连池市', '164100', '86231100', '86230000', '86231100,86230000', '黑河市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231200', '绥化市', '152000', '86230000', '86230000', '86230000', '黑龙江省', '86231283,86231282,86231281,86231226,86231225,86231224,86231223,86231222,86231221,86231202,86231201');
INSERT INTO `area` VALUES ('86231201', '市辖区', '152000', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231202', '北林区', '152000', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231221', '望奎县', '152100', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231222', '兰西县', '151500', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231223', '青冈县', '151600', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231224', '庆安县', '152400', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231225', '明水县', '151700', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231226', '绥棱县', '152200', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231281', '安达市', '151400', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231282', '肇东市', '151100', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86231283', '海伦市', '152300', '86231200', '86230000', '86231200,86230000', '绥化市,黑龙江省', null);
INSERT INTO `area` VALUES ('86232700', '大兴安岭地区', '165100', '86230000', '86230000', '86230000', '黑龙江省', '86232723,86232722,86232721');
INSERT INTO `area` VALUES ('86232721', '呼玛县', '165100', '86232700', '86230000', '86232700,86230000', '大兴安岭地区,黑龙江省', null);
INSERT INTO `area` VALUES ('86232722', '塔河县', '165200', '86232700', '86230000', '86232700,86230000', '大兴安岭地区,黑龙江省', null);
INSERT INTO `area` VALUES ('86232723', '漠河县', '165300', '86232700', '86230000', '86232700,86230000', '大兴安岭地区,黑龙江省', null);
INSERT INTO `area` VALUES ('86310000', '上海市', '200000', '0', null, null, null, '86310200,86310100');
INSERT INTO `area` VALUES ('86310100', '市辖区', '200000', '86310000', '86310000', '86310000', '上海市', '86310120,86310119,86310118,86310117,86310116,86310115,86310114,86310113,86310112,86310110,86310109,86310108,86310107,86310106,86310105,86310104,86310103,86310101');
INSERT INTO `area` VALUES ('86310101', '黄浦区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310103', '卢湾区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310104', '徐汇区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310105', '长宁区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310106', '静安区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310107', '普陀区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310108', '闸北区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310109', '虹口区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310110', '杨浦区', '200000', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310112', '闵行区', '201100', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310113', '宝山区', '201900', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310114', '嘉定区', '201800', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310115', '浦东新区', '200120', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310116', '金山区', '201500', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310117', '松江区', '201600', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310118', '青浦区', '201700', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310119', '南汇区', '201300', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310120', '奉贤区', '201400', '86310100', '86310000', '86310100,86310000', '市辖区,上海市', null);
INSERT INTO `area` VALUES ('86310200', '县', '202150', '86310000', '86310000', '86310000', '上海市', '86310230');
INSERT INTO `area` VALUES ('86310230', '崇明县', '202150', '86310200', '86310000', '86310200,86310000', '县,上海市', null);
INSERT INTO `area` VALUES ('86320000', '江苏省', null, '0', null, null, null, '86321300,86321200,86321100,86321000,86320900,86320800,86320700,86320600,86320500,86320400,86320300,86320200,86320100');
INSERT INTO `area` VALUES ('86320100', '南京市', '210000', '86320000', '86320000', '86320000', '江苏省', '86320125,86320124,86320116,86320115,86320114,86320113,86320111,86320107,86320106,86320105,86320104,86320103,86320102,86320101');
INSERT INTO `area` VALUES ('86320101', '市辖区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320102', '玄武区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320103', '白下区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320104', '秦淮区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320105', '建邺区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320106', '鼓楼区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320107', '下关区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320111', '浦口区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320113', '栖霞区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320114', '雨花台区', '210000', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320115', '江宁区', '211100', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320116', '六合区', '211500', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320124', '溧水县', '211200', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320125', '高淳县', '211300', '86320100', '86320000', '86320100,86320000', '南京市,江苏省', null);
INSERT INTO `area` VALUES ('86320200', '无锡市', '214000', '86320000', '86320000', '86320000', '江苏省', '86320282,86320281,86320211,86320206,86320205,86320204,86320203,86320202,86320201');
INSERT INTO `area` VALUES ('86320201', '市辖区', '214000', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320202', '崇安区', '214000', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320203', '南长区', '214000', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320204', '北塘区', '214000', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320205', '锡山区', '214000', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320206', '惠山区', '214000', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320211', '滨湖区', '214000', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320281', '江阴市', '214400', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320282', '宜兴市', '214200', '86320200', '86320000', '86320200,86320000', '无锡市,江苏省', null);
INSERT INTO `area` VALUES ('86320300', '徐州市', '221000', '86320000', '86320000', '86320000', '江苏省', '86320382,86320381,86320324,86320323,86320322,86320321,86320311,86320305,86320304,86320303,86320302,86320301');
INSERT INTO `area` VALUES ('86320301', '市辖区', '221000', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320302', '鼓楼区', '221000', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320303', '云龙区', '221000', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320304', '九里区', '221000', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320305', '贾汪区', '221000', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320311', '泉山区', '221000', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320321', '丰　县', '221700', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320322', '沛　县', '221600', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320323', '铜山县', '221100', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320324', '睢宁县', '221200', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320381', '新沂市', '221400', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320382', '邳州市', '221300', '86320300', '86320000', '86320300,86320000', '徐州市,江苏省', null);
INSERT INTO `area` VALUES ('86320400', '常州市', '213000', '86320000', '86320000', '86320000', '江苏省', '86320482,86320481,86320412,86320411,86320405,86320404,86320402,86320401');
INSERT INTO `area` VALUES ('86320401', '市辖区', '213000', '86320400', '86320000', '86320400,86320000', '常州市,江苏省', null);
INSERT INTO `area` VALUES ('86320402', '天宁区', '213000', '86320400', '86320000', '86320400,86320000', '常州市,江苏省', null);
INSERT INTO `area` VALUES ('86320404', '钟楼区', '213000', '86320400', '86320000', '86320400,86320000', '常州市,江苏省', null);
INSERT INTO `area` VALUES ('86320405', '戚墅堰区', '213000', '86320400', '86320000', '86320400,86320000', '常州市,江苏省', null);
INSERT INTO `area` VALUES ('86320411', '新北区', '213000', '86320400', '86320000', '86320400,86320000', '常州市,江苏省', null);
INSERT INTO `area` VALUES ('86320412', '武进区', '213100', '86320400', '86320000', '86320400,86320000', '常州市,江苏省', null);
INSERT INTO `area` VALUES ('86320481', '溧阳市', '213300', '86320400', '86320000', '86320400,86320000', '常州市,江苏省', null);
INSERT INTO `area` VALUES ('86320482', '金坛市', '213200', '86320400', '86320000', '86320400,86320000', '常州市,江苏省', null);
INSERT INTO `area` VALUES ('86320500', '苏州市', '215000', '86320000', '86320000', '86320000', '江苏省', '86320585,86320584,86320583,86320582,86320581,86320507,86320506,86320505,86320504,86320503,86320502,86320501');
INSERT INTO `area` VALUES ('86320501', '市辖区', '215000', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320502', '沧浪区', '215000', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320503', '平江区', '215000', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320504', '金阊区', '215000', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320505', '虎丘区', '215000', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320506', '吴中区', '215100', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320507', '相城区', '215100', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320581', '常熟市', '215500', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320582', '张家港市', '215600', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320583', '昆山市', '215300', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320584', '吴江市', '215200', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320585', '太仓市', '215400', '86320500', '86320000', '86320500,86320000', '苏州市,江苏省', null);
INSERT INTO `area` VALUES ('86320600', '南通市', '226000', '86320000', '86320000', '86320000', '江苏省', '86320684,86320683,86320682,86320681,86320623,86320621,86320611,86320602,86320601');
INSERT INTO `area` VALUES ('86320601', '市辖区', '226000', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320602', '崇川区', '226000', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320611', '港闸区', '226000', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320621', '海安县', '226600', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320623', '如东县', '226400', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320681', '启东市', '226200', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320682', '如皋市', '226500', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320683', '通州市', '226300', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320684', '海门市', '226100', '86320600', '86320000', '86320600,86320000', '南通市,江苏省', null);
INSERT INTO `area` VALUES ('86320700', '连云港市', '222000', '86320000', '86320000', '86320000', '江苏省', '86320724,86320723,86320722,86320721,86320706,86320705,86320703,86320701');
INSERT INTO `area` VALUES ('86320701', '市辖区', '222000', '86320700', '86320000', '86320700,86320000', '连云港市,江苏省', null);
INSERT INTO `area` VALUES ('86320703', '连云区', '222000', '86320700', '86320000', '86320700,86320000', '连云港市,江苏省', null);
INSERT INTO `area` VALUES ('86320705', '新浦区', '222000', '86320700', '86320000', '86320700,86320000', '连云港市,江苏省', null);
INSERT INTO `area` VALUES ('86320706', '海州区', '222000', '86320700', '86320000', '86320700,86320000', '连云港市,江苏省', null);
INSERT INTO `area` VALUES ('86320721', '赣榆县', '222100', '86320700', '86320000', '86320700,86320000', '连云港市,江苏省', null);
INSERT INTO `area` VALUES ('86320722', '东海县', '222300', '86320700', '86320000', '86320700,86320000', '连云港市,江苏省', null);
INSERT INTO `area` VALUES ('86320723', '灌云县', '222200', '86320700', '86320000', '86320700,86320000', '连云港市,江苏省', null);
INSERT INTO `area` VALUES ('86320724', '灌南县', '223500', '86320700', '86320000', '86320700,86320000', '连云港市,江苏省', null);
INSERT INTO `area` VALUES ('86320800', '淮安市', '223000', '86320000', '86320000', '86320000', '江苏省', '86320831,86320830,86320829,86320826,86320811,86320804,86320803,86320802,86320801');
INSERT INTO `area` VALUES ('86320801', '市辖区', '223000', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320802', '清河区', '223001', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320803', '楚州区', '223200', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320804', '淮阴区', '223300', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320811', '清浦区', '223001', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320826', '涟水县', '223400', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320829', '洪泽县', '223100', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320830', '盱眙县', '211700', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320831', '金湖县', '211600', '86320800', '86320000', '86320800,86320000', '淮安市,江苏省', null);
INSERT INTO `area` VALUES ('86320900', '盐城市', '224000', '86320000', '86320000', '86320000', '江苏省', '86320982,86320981,86320925,86320924,86320923,86320922,86320921,86320903,86320902,86320901');
INSERT INTO `area` VALUES ('86320901', '市辖区', '224000', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320902', '亭湖区', '224000', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320903', '盐都区', '224000', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320921', '响水县', '224600', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320922', '滨海县', '224000', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320923', '阜宁县', '224400', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320924', '射阳县', '224300', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320925', '建湖县', '224700', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320981', '东台市', '224200', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86320982', '大丰市', '224100', '86320900', '86320000', '86320900,86320000', '盐城市,江苏省', null);
INSERT INTO `area` VALUES ('86321000', '扬州市', '225000', '86320000', '86320000', '86320000', '江苏省', '86321088,86321084,86321081,86321023,86321011,86321003,86321002,86321001');
INSERT INTO `area` VALUES ('86321001', '市辖区', '225000', '86321000', '86320000', '86321000,86320000', '扬州市,江苏省', null);
INSERT INTO `area` VALUES ('86321002', '广陵区', '225000', '86321000', '86320000', '86321000,86320000', '扬州市,江苏省', null);
INSERT INTO `area` VALUES ('86321003', '邗江区', '225100', '86321000', '86320000', '86321000,86320000', '扬州市,江苏省', null);
INSERT INTO `area` VALUES ('86321011', '郊　区', '225200', '86321000', '86320000', '86321000,86320000', '扬州市,江苏省', null);
INSERT INTO `area` VALUES ('86321023', '宝应县', '225800', '86321000', '86320000', '86321000,86320000', '扬州市,江苏省', null);
INSERT INTO `area` VALUES ('86321081', '仪征市', '211400', '86321000', '86320000', '86321000,86320000', '扬州市,江苏省', null);
INSERT INTO `area` VALUES ('86321084', '高邮市', '225600', '86321000', '86320000', '86321000,86320000', '扬州市,江苏省', null);
INSERT INTO `area` VALUES ('86321088', '江都市', '225200', '86321000', '86320000', '86321000,86320000', '扬州市,江苏省', null);
INSERT INTO `area` VALUES ('86321100', '镇江市', '212000', '86320000', '86320000', '86320000', '江苏省', '86321183,86321182,86321181,86321112,86321111,86321102,86321101');
INSERT INTO `area` VALUES ('86321101', '市辖区', '212000', '86321100', '86320000', '86321100,86320000', '镇江市,江苏省', null);
INSERT INTO `area` VALUES ('86321102', '京口区', '212000', '86321100', '86320000', '86321100,86320000', '镇江市,江苏省', null);
INSERT INTO `area` VALUES ('86321111', '润州区', '212000', '86321100', '86320000', '86321100,86320000', '镇江市,江苏省', null);
INSERT INTO `area` VALUES ('86321112', '丹徒区', '212100', '86321100', '86320000', '86321100,86320000', '镇江市,江苏省', null);
INSERT INTO `area` VALUES ('86321181', '丹阳市', '212300', '86321100', '86320000', '86321100,86320000', '镇江市,江苏省', null);
INSERT INTO `area` VALUES ('86321182', '扬中市', '212200', '86321100', '86320000', '86321100,86320000', '镇江市,江苏省', null);
INSERT INTO `area` VALUES ('86321183', '句容市', '212400', '86321100', '86320000', '86321100,86320000', '镇江市,江苏省', null);
INSERT INTO `area` VALUES ('86321200', '泰州市', '225300', '86320000', '86320000', '86320000', '江苏省', '86321284,86321283,86321282,86321281,86321203,86321202,86321201');
INSERT INTO `area` VALUES ('86321201', '市辖区', '225300', '86321200', '86320000', '86321200,86320000', '泰州市,江苏省', null);
INSERT INTO `area` VALUES ('86321202', '海陵区', '225300', '86321200', '86320000', '86321200,86320000', '泰州市,江苏省', null);
INSERT INTO `area` VALUES ('86321203', '高港区', '225300', '86321200', '86320000', '86321200,86320000', '泰州市,江苏省', null);
INSERT INTO `area` VALUES ('86321281', '兴化市', '225700', '86321200', '86320000', '86321200,86320000', '泰州市,江苏省', null);
INSERT INTO `area` VALUES ('86321282', '靖江市', '214500', '86321200', '86320000', '86321200,86320000', '泰州市,江苏省', null);
INSERT INTO `area` VALUES ('86321283', '泰兴市', '225400', '86321200', '86320000', '86321200,86320000', '泰州市,江苏省', null);
INSERT INTO `area` VALUES ('86321284', '姜堰市', '225500', '86321200', '86320000', '86321200,86320000', '泰州市,江苏省', null);
INSERT INTO `area` VALUES ('86321300', '宿迁市', '223800', '86320000', '86320000', '86320000', '江苏省', '86321324,86321323,86321322,86321311,86321302,86321301');
INSERT INTO `area` VALUES ('86321301', '市辖区', '223800', '86321300', '86320000', '86321300,86320000', '宿迁市,江苏省', null);
INSERT INTO `area` VALUES ('86321302', '宿城区', '223800', '86321300', '86320000', '86321300,86320000', '宿迁市,江苏省', null);
INSERT INTO `area` VALUES ('86321311', '宿豫区', '223800', '86321300', '86320000', '86321300,86320000', '宿迁市,江苏省', null);
INSERT INTO `area` VALUES ('86321322', '沭阳县', '223600', '86321300', '86320000', '86321300,86320000', '宿迁市,江苏省', null);
INSERT INTO `area` VALUES ('86321323', '泗阳县', '223700', '86321300', '86320000', '86321300,86320000', '宿迁市,江苏省', null);
INSERT INTO `area` VALUES ('86321324', '泗洪县', '223900', '86321300', '86320000', '86321300,86320000', '宿迁市,江苏省', null);
INSERT INTO `area` VALUES ('86330000', '浙江省', null, '0', null, null, null, '86331100,86331000,86330900,86330800,86330700,86330600,86330500,86330400,86330300,86330200,86330100');
INSERT INTO `area` VALUES ('86330100', '杭州市', '310000', '86330000', '86330000', '86330000', '浙江省', '86330185,86330183,86330182,86330127,86330122,86330110,86330109,86330108,86330106,86330105,86330104,86330103,86330102,86330101');
INSERT INTO `area` VALUES ('86330101', '市辖区', '310000', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330102', '上城区', '310000', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330103', '下城区', '310000', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330104', '江干区', '310000', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330105', '拱墅区', '310000', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330106', '西湖区', '310000', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330108', '滨江区', '310000', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330109', '萧山区', '311200', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330110', '余杭区', '311100', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330122', '桐庐县', '311500', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330127', '淳安县', '311700', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330182', '建德市', '311600', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330183', '富阳市', '311400', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330185', '临安市', '311300', '86330100', '86330000', '86330100,86330000', '杭州市,浙江省', null);
INSERT INTO `area` VALUES ('86330200', '宁波市', '315000', '86330000', '86330000', '86330000', '浙江省', '86330283,86330282,86330281,86330226,86330225,86330212,86330211,86330206,86330205,86330204,86330203,86330201');
INSERT INTO `area` VALUES ('86330201', '市辖区', '315000', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330203', '海曙区', '315000', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330204', '江东区', '315000', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330205', '江北区', '315000', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330206', '北仑区', '315800', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330211', '镇海区', '315200', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330212', '鄞州区', '315100', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330225', '象山县', '315700', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330226', '宁海县', '315600', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330281', '余姚市', '315400', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330282', '慈溪市', '315300', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330283', '奉化市', '315500', '86330200', '86330000', '86330200,86330000', '宁波市,浙江省', null);
INSERT INTO `area` VALUES ('86330300', '温州市', '325000', '86330000', '86330000', '86330000', '浙江省', '86330382,86330381,86330329,86330328,86330327,86330326,86330324,86330322,86330304,86330303,86330302,86330301');
INSERT INTO `area` VALUES ('86330301', '市辖区', '325000', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330302', '鹿城区', '325000', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330303', '龙湾区', '325000', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330304', '瓯海区', '325000', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330322', '洞头县', '325700', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330324', '永嘉县', '325100', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330326', '平阳县', '325400', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330327', '苍南县', '325800', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330328', '文成县', '325300', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330329', '泰顺县', '325500', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330381', '瑞安市', '325200', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330382', '乐清市', '325600', '86330300', '86330000', '86330300,86330000', '温州市,浙江省', null);
INSERT INTO `area` VALUES ('86330400', '嘉兴市', '314000', '86330000', '86330000', '86330000', '浙江省', '86330483,86330482,86330481,86330424,86330421,86330411,86330402,86330401');
INSERT INTO `area` VALUES ('86330401', '市辖区', '314000', '86330400', '86330000', '86330400,86330000', '嘉兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330402', '秀城区', '314000', '86330400', '86330000', '86330400,86330000', '嘉兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330411', '秀洲区', '314000', '86330400', '86330000', '86330400,86330000', '嘉兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330421', '嘉善县', '314100', '86330400', '86330000', '86330400,86330000', '嘉兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330424', '海盐县', '314300', '86330400', '86330000', '86330400,86330000', '嘉兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330481', '海宁市', '314400', '86330400', '86330000', '86330400,86330000', '嘉兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330482', '平湖市', '314200', '86330400', '86330000', '86330400,86330000', '嘉兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330483', '桐乡市', '314500', '86330400', '86330000', '86330400,86330000', '嘉兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330500', '湖州市', '313000', '86330000', '86330000', '86330000', '浙江省', '86330523,86330522,86330521,86330503,86330502,86330501');
INSERT INTO `area` VALUES ('86330501', '市辖区', '313000', '86330500', '86330000', '86330500,86330000', '湖州市,浙江省', null);
INSERT INTO `area` VALUES ('86330502', '吴兴区', '313000', '86330500', '86330000', '86330500,86330000', '湖州市,浙江省', null);
INSERT INTO `area` VALUES ('86330503', '南浔区', '313000', '86330500', '86330000', '86330500,86330000', '湖州市,浙江省', null);
INSERT INTO `area` VALUES ('86330521', '德清县', '313200', '86330500', '86330000', '86330500,86330000', '湖州市,浙江省', null);
INSERT INTO `area` VALUES ('86330522', '长兴县', '313100', '86330500', '86330000', '86330500,86330000', '湖州市,浙江省', null);
INSERT INTO `area` VALUES ('86330523', '安吉县', '313300', '86330500', '86330000', '86330500,86330000', '湖州市,浙江省', null);
INSERT INTO `area` VALUES ('86330600', '绍兴市', '312000', '86330000', '86330000', '86330000', '浙江省', '86330683,86330682,86330681,86330624,86330621,86330602,86330601');
INSERT INTO `area` VALUES ('86330601', '市辖区', '312000', '86330600', '86330000', '86330600,86330000', '绍兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330602', '越城区', '312000', '86330600', '86330000', '86330600,86330000', '绍兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330621', '绍兴县', '312000', '86330600', '86330000', '86330600,86330000', '绍兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330624', '新昌县', '312500', '86330600', '86330000', '86330600,86330000', '绍兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330681', '诸暨市', '311800', '86330600', '86330000', '86330600,86330000', '绍兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330682', '上虞市', '312300', '86330600', '86330000', '86330600,86330000', '绍兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330683', '嵊州市', '312400', '86330600', '86330000', '86330600,86330000', '绍兴市,浙江省', null);
INSERT INTO `area` VALUES ('86330700', '金华市', '321000', '86330000', '86330000', '86330000', '浙江省', '86330784,86330783,86330782,86330781,86330727,86330726,86330723,86330703,86330702,86330701');
INSERT INTO `area` VALUES ('86330701', '市辖区', '321000', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330702', '婺城区', '321000', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330703', '金东区', '321000', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330723', '武义县', '321200', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330726', '浦江县', '322200', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330727', '磐安县', '322300', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330781', '兰溪市', '321100', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330782', '义乌市', '322000', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330783', '东阳市', '322100', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330784', '永康市', '321300', '86330700', '86330000', '86330700,86330000', '金华市,浙江省', null);
INSERT INTO `area` VALUES ('86330800', '衢州市', '324000', '86330000', '86330000', '86330000', '浙江省', '86330881,86330825,86330824,86330822,86330803,86330802,86330801');
INSERT INTO `area` VALUES ('86330801', '市辖区', '324000', '86330800', '86330000', '86330800,86330000', '衢州市,浙江省', null);
INSERT INTO `area` VALUES ('86330802', '柯城区', '324000', '86330800', '86330000', '86330800,86330000', '衢州市,浙江省', null);
INSERT INTO `area` VALUES ('86330803', '衢江区', '324000', '86330800', '86330000', '86330800,86330000', '衢州市,浙江省', null);
INSERT INTO `area` VALUES ('86330822', '常山县', '324200', '86330800', '86330000', '86330800,86330000', '衢州市,浙江省', null);
INSERT INTO `area` VALUES ('86330824', '开化县', '324300', '86330800', '86330000', '86330800,86330000', '衢州市,浙江省', null);
INSERT INTO `area` VALUES ('86330825', '龙游县', '324400', '86330800', '86330000', '86330800,86330000', '衢州市,浙江省', null);
INSERT INTO `area` VALUES ('86330881', '江山市', '324100', '86330800', '86330000', '86330800,86330000', '衢州市,浙江省', null);
INSERT INTO `area` VALUES ('86330900', '舟山市', '316000', '86330000', '86330000', '86330000', '浙江省', '86330922,86330921,86330903,86330902,86330901');
INSERT INTO `area` VALUES ('86330901', '市辖区', '316000', '86330900', '86330000', '86330900,86330000', '舟山市,浙江省', null);
INSERT INTO `area` VALUES ('86330902', '定海区', '316000', '86330900', '86330000', '86330900,86330000', '舟山市,浙江省', null);
INSERT INTO `area` VALUES ('86330903', '普陀区', '316100', '86330900', '86330000', '86330900,86330000', '舟山市,浙江省', null);
INSERT INTO `area` VALUES ('86330921', '岱山县', '316200', '86330900', '86330000', '86330900,86330000', '舟山市,浙江省', null);
INSERT INTO `area` VALUES ('86330922', '嵊泗县', '202450', '86330900', '86330000', '86330900,86330000', '舟山市,浙江省', null);
INSERT INTO `area` VALUES ('86331000', '台州市', '317000', '86330000', '86330000', '86330000', '浙江省', '86331082,86331081,86331024,86331023,86331022,86331021,86331004,86331003,86331002,86331001');
INSERT INTO `area` VALUES ('86331001', '市辖区', '317000', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331002', '椒江区', '317700', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331003', '黄岩区', '318020', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331004', '路桥区', '318000', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331021', '玉环县', '317600', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331022', '三门县', '317100', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331023', '天台县', '317200', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331024', '仙居县', '317300', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331081', '温岭市', '317500', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331082', '临海市', '317000', '86331000', '86330000', '86331000,86330000', '台州市,浙江省', null);
INSERT INTO `area` VALUES ('86331100', '丽水市', '323000', '86330000', '86330000', '86330000', '浙江省', '86331181,86331127,86331126,86331125,86331124,86331123,86331122,86331121,86331102,86331101');
INSERT INTO `area` VALUES ('86331101', '市辖区', '323000', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331102', '莲都区', '323000', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331121', '青田县', '323900', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331122', '缙云县', '321400', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331123', '遂昌县', '323300', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331124', '松阳县', '323400', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331125', '云和县', '323600', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331126', '庆元县', '323800', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331127', '景宁畲族自治县', '323500', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86331181', '龙泉市', '323700', '86331100', '86330000', '86331100,86330000', '丽水市,浙江省', null);
INSERT INTO `area` VALUES ('86340000', '安徽省', null, '0', null, null, null, '86341800,86341700,86341600,86341500,86341400,86341300,86341200,86341100,86341000,86340800,86340700,86340600,86340500,86340400,86340300,86340200,86340100');
INSERT INTO `area` VALUES ('86340100', '合肥市', '230000', '86340000', '86340000', '86340000', '安徽省', '86340123,86340122,86340121,86340111,86340104,86340103,86340102,86340101');
INSERT INTO `area` VALUES ('86340101', '市辖区', '230000', '86340100', '86340000', '86340100,86340000', '合肥市,安徽省', null);
INSERT INTO `area` VALUES ('86340102', '瑶海区', '230000', '86340100', '86340000', '86340100,86340000', '合肥市,安徽省', null);
INSERT INTO `area` VALUES ('86340103', '庐阳区', '230000', '86340100', '86340000', '86340100,86340000', '合肥市,安徽省', null);
INSERT INTO `area` VALUES ('86340104', '蜀山区', '230000', '86340100', '86340000', '86340100,86340000', '合肥市,安徽省', null);
INSERT INTO `area` VALUES ('86340111', '包河区', '230000', '86340100', '86340000', '86340100,86340000', '合肥市,安徽省', null);
INSERT INTO `area` VALUES ('86340121', '长丰县', '231100', '86340100', '86340000', '86340100,86340000', '合肥市,安徽省', null);
INSERT INTO `area` VALUES ('86340122', '肥东县', '230000', '86340100', '86340000', '86340100,86340000', '合肥市,安徽省', null);
INSERT INTO `area` VALUES ('86340123', '肥西县', '231200', '86340100', '86340000', '86340100,86340000', '合肥市,安徽省', null);
INSERT INTO `area` VALUES ('86340200', '芜湖市', '241000', '86340000', '86340000', '86340000', '安徽省', '86340223,86340222,86340221,86340207,86340204,86340203,86340202,86340201');
INSERT INTO `area` VALUES ('86340201', '市辖区', '241000', '86340200', '86340000', '86340200,86340000', '芜湖市,安徽省', null);
INSERT INTO `area` VALUES ('86340202', '镜湖区', '241000', '86340200', '86340000', '86340200,86340000', '芜湖市,安徽省', null);
INSERT INTO `area` VALUES ('86340203', '马塘区', '241000', '86340200', '86340000', '86340200,86340000', '芜湖市,安徽省', null);
INSERT INTO `area` VALUES ('86340204', '新芜区', '241000', '86340200', '86340000', '86340200,86340000', '芜湖市,安徽省', null);
INSERT INTO `area` VALUES ('86340207', '鸠江区', '241000', '86340200', '86340000', '86340200,86340000', '芜湖市,安徽省', null);
INSERT INTO `area` VALUES ('86340221', '芜湖县', '241100', '86340200', '86340000', '86340200,86340000', '芜湖市,安徽省', null);
INSERT INTO `area` VALUES ('86340222', '繁昌县', '241200', '86340200', '86340000', '86340200,86340000', '芜湖市,安徽省', null);
INSERT INTO `area` VALUES ('86340223', '南陵县', '242400', '86340200', '86340000', '86340200,86340000', '芜湖市,安徽省', null);
INSERT INTO `area` VALUES ('86340300', '蚌埠市', '233000', '86340000', '86340000', '86340000', '安徽省', '86340323,86340322,86340321,86340311,86340304,86340303,86340302,86340301');
INSERT INTO `area` VALUES ('86340301', '市辖区', '233000', '86340300', '86340000', '86340300,86340000', '蚌埠市,安徽省', null);
INSERT INTO `area` VALUES ('86340302', '龙子湖区', '233000', '86340300', '86340000', '86340300,86340000', '蚌埠市,安徽省', null);
INSERT INTO `area` VALUES ('86340303', '蚌山区', '233000', '86340300', '86340000', '86340300,86340000', '蚌埠市,安徽省', null);
INSERT INTO `area` VALUES ('86340304', '禹会区', '233000', '86340300', '86340000', '86340300,86340000', '蚌埠市,安徽省', null);
INSERT INTO `area` VALUES ('86340311', '淮上区', '233000', '86340300', '86340000', '86340300,86340000', '蚌埠市,安徽省', null);
INSERT INTO `area` VALUES ('86340321', '怀远县', '233400', '86340300', '86340000', '86340300,86340000', '蚌埠市,安徽省', null);
INSERT INTO `area` VALUES ('86340322', '五河县', '233300', '86340300', '86340000', '86340300,86340000', '蚌埠市,安徽省', null);
INSERT INTO `area` VALUES ('86340323', '固镇县', '233700', '86340300', '86340000', '86340300,86340000', '蚌埠市,安徽省', null);
INSERT INTO `area` VALUES ('86340400', '淮南市', '232000', '86340000', '86340000', '86340000', '安徽省', '86340421,86340406,86340405,86340404,86340403,86340402,86340401');
INSERT INTO `area` VALUES ('86340401', '市辖区', '232000', '86340400', '86340000', '86340400,86340000', '淮南市,安徽省', null);
INSERT INTO `area` VALUES ('86340402', '大通区', '232000', '86340400', '86340000', '86340400,86340000', '淮南市,安徽省', null);
INSERT INTO `area` VALUES ('86340403', '田家庵区', '232000', '86340400', '86340000', '86340400,86340000', '淮南市,安徽省', null);
INSERT INTO `area` VALUES ('86340404', '谢家集区', '232000', '86340400', '86340000', '86340400,86340000', '淮南市,安徽省', null);
INSERT INTO `area` VALUES ('86340405', '八公山区', '232000', '86340400', '86340000', '86340400,86340000', '淮南市,安徽省', null);
INSERT INTO `area` VALUES ('86340406', '潘集区', '232000', '86340400', '86340000', '86340400,86340000', '淮南市,安徽省', null);
INSERT INTO `area` VALUES ('86340421', '凤台县', '232100', '86340400', '86340000', '86340400,86340000', '淮南市,安徽省', null);
INSERT INTO `area` VALUES ('86340500', '马鞍山市', '243000', '86340000', '86340000', '86340000', '安徽省', '86340521,86340504,86340503,86340502,86340501');
INSERT INTO `area` VALUES ('86340501', '市辖区', '243000', '86340500', '86340000', '86340500,86340000', '马鞍山市,安徽省', null);
INSERT INTO `area` VALUES ('86340502', '金家庄区', '243000', '86340500', '86340000', '86340500,86340000', '马鞍山市,安徽省', null);
INSERT INTO `area` VALUES ('86340503', '花山区', '243000', '86340500', '86340000', '86340500,86340000', '马鞍山市,安徽省', null);
INSERT INTO `area` VALUES ('86340504', '雨山区', '243000', '86340500', '86340000', '86340500,86340000', '马鞍山市,安徽省', null);
INSERT INTO `area` VALUES ('86340521', '当涂县', '243100', '86340500', '86340000', '86340500,86340000', '马鞍山市,安徽省', null);
INSERT INTO `area` VALUES ('86340600', '淮北市', '235000', '86340000', '86340000', '86340000', '安徽省', '86340621,86340604,86340603,86340602,86340601');
INSERT INTO `area` VALUES ('86340601', '市辖区', '235000', '86340600', '86340000', '86340600,86340000', '淮北市,安徽省', null);
INSERT INTO `area` VALUES ('86340602', '杜集区', '235000', '86340600', '86340000', '86340600,86340000', '淮北市,安徽省', null);
INSERT INTO `area` VALUES ('86340603', '相山区', '235000', '86340600', '86340000', '86340600,86340000', '淮北市,安徽省', null);
INSERT INTO `area` VALUES ('86340604', '烈山区', '235000', '86340600', '86340000', '86340600,86340000', '淮北市,安徽省', null);
INSERT INTO `area` VALUES ('86340621', '濉溪县', '235100', '86340600', '86340000', '86340600,86340000', '淮北市,安徽省', null);
INSERT INTO `area` VALUES ('86340700', '铜陵市', '244000', '86340000', '86340000', '86340000', '安徽省', '86340721,86340711,86340703,86340702,86340701');
INSERT INTO `area` VALUES ('86340701', '市辖区', '244000', '86340700', '86340000', '86340700,86340000', '铜陵市,安徽省', null);
INSERT INTO `area` VALUES ('86340702', '铜官山区', '244000', '86340700', '86340000', '86340700,86340000', '铜陵市,安徽省', null);
INSERT INTO `area` VALUES ('86340703', '狮子山区', '244000', '86340700', '86340000', '86340700,86340000', '铜陵市,安徽省', null);
INSERT INTO `area` VALUES ('86340711', '郊　区', '244000', '86340700', '86340000', '86340700,86340000', '铜陵市,安徽省', null);
INSERT INTO `area` VALUES ('86340721', '铜陵县', '244100', '86340700', '86340000', '86340700,86340000', '铜陵市,安徽省', null);
INSERT INTO `area` VALUES ('86340800', '安庆市', '246000', '86340000', '86340000', '86340000', '安徽省', '86340881,86340828,86340827,86340826,86340825,86340824,86340823,86340822,86340811,86340803,86340802,86340801');
INSERT INTO `area` VALUES ('86340801', '市辖区', '246000', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340802', '迎江区', '246000', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340803', '大观区', '246000', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340811', '郊　区', '246000', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340822', '怀宁县', '246100', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340823', '枞阳县', '246700', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340824', '潜山县', '246300', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340825', '太湖县', '246400', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340826', '宿松县', '246500', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340827', '望江县', '246200', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340828', '岳西县', '246600', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86340881', '桐城市', '231400', '86340800', '86340000', '86340800,86340000', '安庆市,安徽省', null);
INSERT INTO `area` VALUES ('86341000', '黄山市', '245000', '86340000', '86340000', '86340000', '安徽省', '86341024,86341023,86341022,86341021,86341004,86341003,86341002,86341001');
INSERT INTO `area` VALUES ('86341001', '市辖区', '245000', '86341000', '86340000', '86341000,86340000', '黄山市,安徽省', null);
INSERT INTO `area` VALUES ('86341002', '屯溪区', '245000', '86341000', '86340000', '86341000,86340000', '黄山市,安徽省', null);
INSERT INTO `area` VALUES ('86341003', '黄山区', '245000', '86341000', '86340000', '86341000,86340000', '黄山市,安徽省', null);
INSERT INTO `area` VALUES ('86341004', '徽州区', '245000', '86341000', '86340000', '86341000,86340000', '黄山市,安徽省', null);
INSERT INTO `area` VALUES ('86341021', '歙　县', '245200', '86341000', '86340000', '86341000,86340000', '黄山市,安徽省', null);
INSERT INTO `area` VALUES ('86341022', '休宁县', '245400', '86341000', '86340000', '86341000,86340000', '黄山市,安徽省', null);
INSERT INTO `area` VALUES ('86341023', '黟　县', '245500', '86341000', '86340000', '86341000,86340000', '黄山市,安徽省', null);
INSERT INTO `area` VALUES ('86341024', '祁门县', '245600', '86341000', '86340000', '86341000,86340000', '黄山市,安徽省', null);
INSERT INTO `area` VALUES ('86341100', '滁州市', '239000', '86340000', '86340000', '86340000', '安徽省', '86341182,86341181,86341126,86341125,86341124,86341122,86341103,86341102,86341101');
INSERT INTO `area` VALUES ('86341101', '市辖区', '239000', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341102', '琅琊区', '239000', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341103', '南谯区', '239000', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341122', '来安县', '239200', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341124', '全椒县', '239500', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341125', '定远县', '233200', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341126', '凤阳县', '233100', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341181', '天长市', '239300', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341182', '明光市', '239400', '86341100', '86340000', '86341100,86340000', '滁州市,安徽省', null);
INSERT INTO `area` VALUES ('86341200', '阜阳市', '236000', '86340000', '86340000', '86340000', '安徽省', '86341282,86341226,86341225,86341222,86341221,86341204,86341203,86341202,86341201');
INSERT INTO `area` VALUES ('86341201', '市辖区', '236000', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341202', '颍州区', '236000', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341203', '颍东区', '236000', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341204', '颍泉区', '236000', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341221', '临泉县', '236400', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341222', '太和县', '236600', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341225', '阜南县', '236300', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341226', '颍上县', '236200', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341282', '界首市', '236500', '86341200', '86340000', '86341200,86340000', '阜阳市,安徽省', null);
INSERT INTO `area` VALUES ('86341300', '宿州市', '234000', '86340000', '86340000', '86340000', '安徽省', '86341324,86341323,86341322,86341321,86341302,86341301');
INSERT INTO `area` VALUES ('86341301', '市辖区', '234000', '86341300', '86340000', '86341300,86340000', '宿州市,安徽省', null);
INSERT INTO `area` VALUES ('86341302', '墉桥区', '234000', '86341300', '86340000', '86341300,86340000', '宿州市,安徽省', null);
INSERT INTO `area` VALUES ('86341321', '砀山县', '235300', '86341300', '86340000', '86341300,86340000', '宿州市,安徽省', null);
INSERT INTO `area` VALUES ('86341322', '萧　县', '235200', '86341300', '86340000', '86341300,86340000', '宿州市,安徽省', null);
INSERT INTO `area` VALUES ('86341323', '灵璧县', '234200', '86341300', '86340000', '86341300,86340000', '宿州市,安徽省', null);
INSERT INTO `area` VALUES ('86341324', '泗　县', '234300', '86341300', '86340000', '86341300,86340000', '宿州市,安徽省', null);
INSERT INTO `area` VALUES ('86341400', '巢湖市', '238000', '86340000', '86340000', '86340000', '安徽省', '86341424,86341423,86341422,86341421,86341402,86341401');
INSERT INTO `area` VALUES ('86341401', '市辖区', '238000', '86341400', '86340000', '86341400,86340000', '巢湖市,安徽省', null);
INSERT INTO `area` VALUES ('86341402', '居巢区', '238000', '86341400', '86340000', '86341400,86340000', '巢湖市,安徽省', null);
INSERT INTO `area` VALUES ('86341421', '庐江县', '231500', '86341400', '86340000', '86341400,86340000', '巢湖市,安徽省', null);
INSERT INTO `area` VALUES ('86341422', '无为县', '238300', '86341400', '86340000', '86341400,86340000', '巢湖市,安徽省', null);
INSERT INTO `area` VALUES ('86341423', '含山县', '238100', '86341400', '86340000', '86341400,86340000', '巢湖市,安徽省', null);
INSERT INTO `area` VALUES ('86341424', '和　县', '238200', '86341400', '86340000', '86341400,86340000', '巢湖市,安徽省', null);
INSERT INTO `area` VALUES ('86341500', '六安市', '237000', '86340000', '86340000', '86340000', '安徽省', '86341525,86341524,86341523,86341522,86341521,86341503,86341502,86341501');
INSERT INTO `area` VALUES ('86341501', '市辖区', '237000', '86341500', '86340000', '86341500,86340000', '六安市,安徽省', null);
INSERT INTO `area` VALUES ('86341502', '金安区', '237000', '86341500', '86340000', '86341500,86340000', '六安市,安徽省', null);
INSERT INTO `area` VALUES ('86341503', '裕安区', '237000', '86341500', '86340000', '86341500,86340000', '六安市,安徽省', null);
INSERT INTO `area` VALUES ('86341521', '寿　县', '232200', '86341500', '86340000', '86341500,86340000', '六安市,安徽省', null);
INSERT INTO `area` VALUES ('86341522', '霍邱县', '237400', '86341500', '86340000', '86341500,86340000', '六安市,安徽省', null);
INSERT INTO `area` VALUES ('86341523', '舒城县', '231300', '86341500', '86340000', '86341500,86340000', '六安市,安徽省', null);
INSERT INTO `area` VALUES ('86341524', '金寨县', '237300', '86341500', '86340000', '86341500,86340000', '六安市,安徽省', null);
INSERT INTO `area` VALUES ('86341525', '霍山县', '237200', '86341500', '86340000', '86341500,86340000', '六安市,安徽省', null);
INSERT INTO `area` VALUES ('86341600', '亳州市', '236000', '86340000', '86340000', '86340000', '安徽省', '86341623,86341622,86341621,86341602,86341601');
INSERT INTO `area` VALUES ('86341601', '市辖区', '236000', '86341600', '86340000', '86341600,86340000', '亳州市,安徽省', null);
INSERT INTO `area` VALUES ('86341602', '谯城区', '236800', '86341600', '86340000', '86341600,86340000', '亳州市,安徽省', null);
INSERT INTO `area` VALUES ('86341621', '涡阳县', '233600', '86341600', '86340000', '86341600,86340000', '亳州市,安徽省', null);
INSERT INTO `area` VALUES ('86341622', '蒙城县', '233500', '86341600', '86340000', '86341600,86340000', '亳州市,安徽省', null);
INSERT INTO `area` VALUES ('86341623', '利辛县', '236700', '86341600', '86340000', '86341600,86340000', '亳州市,安徽省', null);
INSERT INTO `area` VALUES ('86341700', '池州市', '247100', '86340000', '86340000', '86340000', '安徽省', '86341723,86341722,86341721,86341702,86341701');
INSERT INTO `area` VALUES ('86341701', '市辖区', '247100', '86341700', '86340000', '86341700,86340000', '池州市,安徽省', null);
INSERT INTO `area` VALUES ('86341702', '贵池区', '247100', '86341700', '86340000', '86341700,86340000', '池州市,安徽省', null);
INSERT INTO `area` VALUES ('86341721', '东至县', '247200', '86341700', '86340000', '86341700,86340000', '池州市,安徽省', null);
INSERT INTO `area` VALUES ('86341722', '石台县', '245100', '86341700', '86340000', '86341700,86340000', '池州市,安徽省', null);
INSERT INTO `area` VALUES ('86341723', '青阳县', '242800', '86341700', '86340000', '86341700,86340000', '池州市,安徽省', null);
INSERT INTO `area` VALUES ('86341800', '宣城市', '242000', '86340000', '86340000', '86340000', '安徽省', '86341881,86341825,86341824,86341823,86341822,86341821,86341802,86341801');
INSERT INTO `area` VALUES ('86341801', '市辖区', '242000', '86341800', '86340000', '86341800,86340000', '宣城市,安徽省', null);
INSERT INTO `area` VALUES ('86341802', '宣州区', '242000', '86341800', '86340000', '86341800,86340000', '宣城市,安徽省', null);
INSERT INTO `area` VALUES ('86341821', '郎溪县', '242100', '86341800', '86340000', '86341800,86340000', '宣城市,安徽省', null);
INSERT INTO `area` VALUES ('86341822', '广德县', '242200', '86341800', '86340000', '86341800,86340000', '宣城市,安徽省', null);
INSERT INTO `area` VALUES ('86341823', '泾　县', '242500', '86341800', '86340000', '86341800,86340000', '宣城市,安徽省', null);
INSERT INTO `area` VALUES ('86341824', '绩溪县', '245300', '86341800', '86340000', '86341800,86340000', '宣城市,安徽省', null);
INSERT INTO `area` VALUES ('86341825', '旌德县', '242600', '86341800', '86340000', '86341800,86340000', '宣城市,安徽省', null);
INSERT INTO `area` VALUES ('86341881', '宁国市', '242300', '86341800', '86340000', '86341800,86340000', '宣城市,安徽省', null);
INSERT INTO `area` VALUES ('86350000', '福建省', null, '0', null, null, null, '86350900,86350800,86350700,86350600,86350500,86350400,86350300,86350200,86350100');
INSERT INTO `area` VALUES ('86350100', '福州市', '350000', '86350000', '86350000', '86350000', '福建省', '86350182,86350181,86350128,86350125,86350124,86350123,86350122,86350121,86350111,86350105,86350104,86350103,86350102,86350101');
INSERT INTO `area` VALUES ('86350101', '市辖区', '350000', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350102', '鼓楼区', '350000', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350103', '台江区', '350000', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350104', '仓山区', '350000', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350105', '马尾区', '350000', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350111', '晋安区', '350000', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350121', '闽侯县', '350100', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350122', '连江县', '350500', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350123', '罗源县', '350600', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350124', '闽清县', '350800', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350125', '永泰县', '350700', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350128', '平潭县', '350400', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350181', '福清市', '350300', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350182', '长乐市', '350200', '86350100', '86350000', '86350100,86350000', '福州市,福建省', null);
INSERT INTO `area` VALUES ('86350200', '厦门市', '361000', '86350000', '86350000', '86350000', '福建省', '86350213,86350212,86350211,86350206,86350205,86350203,86350201');
INSERT INTO `area` VALUES ('86350201', '市辖区', '361000', '86350200', '86350000', '86350200,86350000', '厦门市,福建省', null);
INSERT INTO `area` VALUES ('86350203', '思明区', '361000', '86350200', '86350000', '86350200,86350000', '厦门市,福建省', null);
INSERT INTO `area` VALUES ('86350205', '海沧区', '361000', '86350200', '86350000', '86350200,86350000', '厦门市,福建省', null);
INSERT INTO `area` VALUES ('86350206', '湖里区', '361000', '86350200', '86350000', '86350200,86350000', '厦门市,福建省', null);
INSERT INTO `area` VALUES ('86350211', '集美区', '361000', '86350200', '86350000', '86350200,86350000', '厦门市,福建省', null);
INSERT INTO `area` VALUES ('86350212', '同安区', '361100', '86350200', '86350000', '86350200,86350000', '厦门市,福建省', null);
INSERT INTO `area` VALUES ('86350213', '翔安区', '361100', '86350200', '86350000', '86350200,86350000', '厦门市,福建省', null);
INSERT INTO `area` VALUES ('86350300', '莆田市', '351100', '86350000', '86350000', '86350000', '福建省', '86350322,86350305,86350304,86350303,86350302,86350301');
INSERT INTO `area` VALUES ('86350301', '市辖区', '351100', '86350300', '86350000', '86350300,86350000', '莆田市,福建省', null);
INSERT INTO `area` VALUES ('86350302', '城厢区', '351100', '86350300', '86350000', '86350300,86350000', '莆田市,福建省', null);
INSERT INTO `area` VALUES ('86350303', '涵江区', '351100', '86350300', '86350000', '86350300,86350000', '莆田市,福建省', null);
INSERT INTO `area` VALUES ('86350304', '荔城区', '351100', '86350300', '86350000', '86350300,86350000', '莆田市,福建省', null);
INSERT INTO `area` VALUES ('86350305', '秀屿区', '351100', '86350300', '86350000', '86350300,86350000', '莆田市,福建省', null);
INSERT INTO `area` VALUES ('86350322', '仙游县', '351200', '86350300', '86350000', '86350300,86350000', '莆田市,福建省', null);
INSERT INTO `area` VALUES ('86350400', '三明市', '365000', '86350000', '86350000', '86350000', '福建省', '86350481,86350430,86350429,86350428,86350427,86350426,86350425,86350424,86350423,86350421,86350403,86350402,86350401');
INSERT INTO `area` VALUES ('86350401', '市辖区', '365000', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350402', '梅列区', '365000', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350403', '三元区', '365000', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350421', '明溪县', '365300', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350423', '清流县', '365300', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350424', '宁化县', '365400', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350425', '大田县', '366100', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350426', '尤溪县', '365100', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350427', '沙　县', '365500', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350428', '将乐县', '353300', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350429', '泰宁县', '354400', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350430', '建宁县', '354500', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350481', '永安市', '366000', '86350400', '86350000', '86350400,86350000', '三明市,福建省', null);
INSERT INTO `area` VALUES ('86350500', '泉州市', '362000', '86350000', '86350000', '86350000', '福建省', '86350583,86350582,86350581,86350527,86350526,86350525,86350524,86350521,86350505,86350504,86350503,86350502,86350501');
INSERT INTO `area` VALUES ('86350501', '市辖区', '362000', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350502', '鲤城区', '362000', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350503', '丰泽区', '362000', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350504', '洛江区', '362000', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350505', '泉港区', '362100', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350521', '惠安县', '362100', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350524', '安溪县', '362400', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350525', '永春县', '362600', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350526', '德化县', '362500', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350527', '金门县', '362000', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350581', '石狮市', '362700', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350582', '晋江市', '362200', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350583', '南安市', '362300', '86350500', '86350000', '86350500,86350000', '泉州市,福建省', null);
INSERT INTO `area` VALUES ('86350600', '漳州市', '363000', '86350000', '86350000', '86350000', '福建省', '86350681,86350629,86350628,86350627,86350626,86350625,86350624,86350623,86350622,86350603,86350602,86350601');
INSERT INTO `area` VALUES ('86350601', '市辖区', '363000', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350602', '芗城区', '363000', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350603', '龙文区', '363000', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350622', '云霄县', '363300', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350623', '漳浦县', '363200', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350624', '诏安县', '363500', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350625', '长泰县', '363900', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350626', '东山县', '363400', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350627', '南靖县', '363600', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350628', '平和县', '363700', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350629', '华安县', '363800', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350681', '龙海市', '363100', '86350600', '86350000', '86350600,86350000', '漳州市,福建省', null);
INSERT INTO `area` VALUES ('86350700', '南平市', '353000', '86350000', '86350000', '86350000', '福建省', '86350784,86350783,86350782,86350781,86350725,86350724,86350723,86350722,86350721,86350702,86350701');
INSERT INTO `area` VALUES ('86350701', '市辖区', '353000', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350702', '延平区', '353000', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350721', '顺昌县', '353200', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350722', '浦城县', '353400', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350723', '光泽县', '354100', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350724', '松溪县', '353500', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350725', '政和县', '353600', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350781', '邵武市', '354000', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350782', '武夷山市', '354300', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350783', '建瓯市', '353100', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350784', '建阳市', '354200', '86350700', '86350000', '86350700,86350000', '南平市,福建省', null);
INSERT INTO `area` VALUES ('86350800', '龙岩市', '364000', '86350000', '86350000', '86350000', '福建省', '86350881,86350825,86350824,86350823,86350822,86350821,86350802,86350801');
INSERT INTO `area` VALUES ('86350801', '市辖区', '364000', '86350800', '86350000', '86350800,86350000', '龙岩市,福建省', null);
INSERT INTO `area` VALUES ('86350802', '新罗区', '364000', '86350800', '86350000', '86350800,86350000', '龙岩市,福建省', null);
INSERT INTO `area` VALUES ('86350821', '长汀县', '366300', '86350800', '86350000', '86350800,86350000', '龙岩市,福建省', null);
INSERT INTO `area` VALUES ('86350822', '永定县', '364100', '86350800', '86350000', '86350800,86350000', '龙岩市,福建省', null);
INSERT INTO `area` VALUES ('86350823', '上杭县', '364200', '86350800', '86350000', '86350800,86350000', '龙岩市,福建省', null);
INSERT INTO `area` VALUES ('86350824', '武平县', '364300', '86350800', '86350000', '86350800,86350000', '龙岩市,福建省', null);
INSERT INTO `area` VALUES ('86350825', '连城县', '366200', '86350800', '86350000', '86350800,86350000', '龙岩市,福建省', null);
INSERT INTO `area` VALUES ('86350881', '漳平市', '364400', '86350800', '86350000', '86350800,86350000', '龙岩市,福建省', null);
INSERT INTO `area` VALUES ('86350900', '宁德市', '352000', '86350000', '86350000', '86350000', '福建省', '86350982,86350981,86350926,86350925,86350924,86350923,86350922,86350921,86350902,86350901');
INSERT INTO `area` VALUES ('86350901', '市辖区', '352000', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350902', '蕉城区', '352000', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350921', '霞浦县', '355100', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350922', '古田县', '352200', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350923', '屏南县', '352300', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350924', '寿宁县', '355500', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350925', '周宁县', '355400', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350926', '柘荣县', '355300', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350981', '福安市', '355000', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86350982', '福鼎市', '355200', '86350900', '86350000', '86350900,86350000', '宁德市,福建省', null);
INSERT INTO `area` VALUES ('86360000', '江西省', null, '0', null, null, null, '86361100,86361000,86360900,86360800,86360700,86360600,86360500,86360400,86360300,86360200,86360100');
INSERT INTO `area` VALUES ('86360100', '南昌市', '330000', '86360000', '86360000', '86360000', '江西省', '86360124,86360123,86360122,86360121,86360111,86360105,86360104,86360103,86360102,86360101');
INSERT INTO `area` VALUES ('86360101', '市辖区', '330000', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360102', '东湖区', '330000', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360103', '西湖区', '330000', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360104', '青云谱区', '330000', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360105', '湾里区', '330000', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360111', '青山湖区', '330000', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360121', '南昌县', '330200', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360122', '新建县', '330100', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360123', '安义县', '330500', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360124', '进贤县', '331700', '86360100', '86360000', '86360100,86360000', '南昌市,江西省', null);
INSERT INTO `area` VALUES ('86360200', '景德镇市', '333000', '86360000', '86360000', '86360000', '江西省', '86360281,86360222,86360203,86360202,86360201');
INSERT INTO `area` VALUES ('86360201', '市辖区', '333000', '86360200', '86360000', '86360200,86360000', '景德镇市,江西省', null);
INSERT INTO `area` VALUES ('86360202', '昌江区', '333000', '86360200', '86360000', '86360200,86360000', '景德镇市,江西省', null);
INSERT INTO `area` VALUES ('86360203', '珠山区', '333000', '86360200', '86360000', '86360200,86360000', '景德镇市,江西省', null);
INSERT INTO `area` VALUES ('86360222', '浮梁县', '333400', '86360200', '86360000', '86360200,86360000', '景德镇市,江西省', null);
INSERT INTO `area` VALUES ('86360281', '乐平市', '333300', '86360200', '86360000', '86360200,86360000', '景德镇市,江西省', null);
INSERT INTO `area` VALUES ('86360300', '萍乡市', '337000', '86360000', '86360000', '86360000', '江西省', '86360323,86360322,86360321,86360313,86360302,86360301');
INSERT INTO `area` VALUES ('86360301', '市辖区', '337000', '86360300', '86360000', '86360300,86360000', '萍乡市,江西省', null);
INSERT INTO `area` VALUES ('86360302', '安源区', '337000', '86360300', '86360000', '86360300,86360000', '萍乡市,江西省', null);
INSERT INTO `area` VALUES ('86360313', '湘东区', '337000', '86360300', '86360000', '86360300,86360000', '萍乡市,江西省', null);
INSERT INTO `area` VALUES ('86360321', '莲花县', '337100', '86360300', '86360000', '86360300,86360000', '萍乡市,江西省', null);
INSERT INTO `area` VALUES ('86360322', '上栗县', '337000', '86360300', '86360000', '86360300,86360000', '萍乡市,江西省', null);
INSERT INTO `area` VALUES ('86360323', '芦溪县', '337000', '86360300', '86360000', '86360300,86360000', '萍乡市,江西省', null);
INSERT INTO `area` VALUES ('86360400', '九江市', '332000', '86360000', '86360000', '86360000', '江西省', '86360481,86360430,86360429,86360428,86360427,86360426,86360425,86360424,86360423,86360421,86360403,86360402,86360401');
INSERT INTO `area` VALUES ('86360401', '市辖区', '332000', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360402', '庐山区', '332900', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360403', '浔阳区', '332000', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360421', '九江县', '332100', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360423', '武宁县', '332300', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360424', '修水县', '332400', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360425', '永修县', '330300', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360426', '德安县', '330400', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360427', '星子县', '332800', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360428', '都昌县', '332600', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360429', '湖口县', '332500', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360430', '彭泽县', '332700', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360481', '瑞昌市', '332200', '86360400', '86360000', '86360400,86360000', '九江市,江西省', null);
INSERT INTO `area` VALUES ('86360500', '新余市', '336500', '86360000', '86360000', '86360000', '江西省', '86360521,86360502,86360501');
INSERT INTO `area` VALUES ('86360501', '市辖区', '336500', '86360500', '86360000', '86360500,86360000', '新余市,江西省', null);
INSERT INTO `area` VALUES ('86360502', '渝水区', '336500', '86360500', '86360000', '86360500,86360000', '新余市,江西省', null);
INSERT INTO `area` VALUES ('86360521', '分宜县', '336600', '86360500', '86360000', '86360500,86360000', '新余市,江西省', null);
INSERT INTO `area` VALUES ('86360600', '鹰潭市', '335000', '86360000', '86360000', '86360000', '江西省', '86360681,86360622,86360602,86360601');
INSERT INTO `area` VALUES ('86360601', '市辖区', '335000', '86360600', '86360000', '86360600,86360000', '鹰潭市,江西省', null);
INSERT INTO `area` VALUES ('86360602', '月湖区', '335000', '86360600', '86360000', '86360600,86360000', '鹰潭市,江西省', null);
INSERT INTO `area` VALUES ('86360622', '余江县', '335200', '86360600', '86360000', '86360600,86360000', '鹰潭市,江西省', null);
INSERT INTO `area` VALUES ('86360681', '贵溪市', '335400', '86360600', '86360000', '86360600,86360000', '鹰潭市,江西省', null);
INSERT INTO `area` VALUES ('86360700', '赣州市', '341000', '86360000', '86360000', '86360000', '江西省', '86360782,86360781,86360735,86360734,86360733,86360732,86360731,86360730,86360729,86360728,86360727,86360726,86360725,86360724,86360723,86360722,86360721,86360702,86360701');
INSERT INTO `area` VALUES ('86360701', '市辖区', '341000', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360702', '章贡区', '341000', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360721', '赣　县', '341100', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360722', '信丰县', '341600', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360723', '大余县', '341500', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360724', '上犹县', '341200', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360725', '崇义县', '341300', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360726', '安远县', '342100', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360727', '龙南县', '341700', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360728', '定南县', '341900', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360729', '全南县', '341800', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360730', '宁都县', '342800', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360731', '于都县', '342300', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360732', '兴国县', '342400', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360733', '会昌县', '342600', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360734', '寻乌县', '342200', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360735', '石城县', '342700', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360781', '瑞金市', '342500', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360782', '南康市', '341400', '86360700', '86360000', '86360700,86360000', '赣州市,江西省', null);
INSERT INTO `area` VALUES ('86360800', '吉安市', '343000', '86360000', '86360000', '86360000', '江西省', '86360881,86360830,86360829,86360828,86360827,86360826,86360825,86360824,86360823,86360822,86360821,86360803,86360802,86360801');
INSERT INTO `area` VALUES ('86360801', '市辖区', '343000', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360802', '吉州区', '343000', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360803', '青原区', '343000', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360821', '吉安县', '343100', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360822', '吉水县', '331600', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360823', '峡江县', '331400', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360824', '新干县', '331300', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360825', '永丰县', '331500', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360826', '泰和县', '343700', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360827', '遂川县', '343900', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360828', '万安县', '343800', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360829', '安福县', '343200', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360830', '永新县', '343400', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360881', '井冈山市', '343600', '86360800', '86360000', '86360800,86360000', '吉安市,江西省', null);
INSERT INTO `area` VALUES ('86360900', '宜春市', '336000', '86360000', '86360000', '86360000', '江西省', '86360983,86360982,86360981,86360926,86360925,86360924,86360923,86360922,86360921,86360902,86360901');
INSERT INTO `area` VALUES ('86360901', '市辖区', '336000', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360902', '袁州区', '336000', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360921', '奉新县', '330700', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360922', '万载县', '336100', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360923', '上高县', '336400', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360924', '宜丰县', '336300', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360925', '靖安县', '330600', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360926', '铜鼓县', '336200', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360981', '丰城市', '331100', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360982', '樟树市', '331200', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86360983', '高安市', '330800', '86360900', '86360000', '86360900,86360000', '宜春市,江西省', null);
INSERT INTO `area` VALUES ('86361000', '抚州市', '344000', '86360000', '86360000', '86360000', '江西省', '86361030,86361029,86361028,86361027,86361026,86361025,86361024,86361023,86361022,86361021,86361002,86361001');
INSERT INTO `area` VALUES ('86361001', '市辖区', '344000', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361002', '临川区', '344100', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361021', '南城县', '344700', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361022', '黎川县', '344600', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361023', '南丰县', '344500', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361024', '崇仁县', '344200', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361025', '乐安县', '344300', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361026', '宜黄县', '344400', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361027', '金溪县', '344800', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361028', '资溪县', '335300', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361029', '东乡县', '331800', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361030', '广昌县', '344900', '86361000', '86360000', '86361000,86360000', '抚州市,江西省', null);
INSERT INTO `area` VALUES ('86361100', '上饶市', '334000', '86360000', '86360000', '86360000', '江西省', '86361181,86361130,86361129,86361128,86361127,86361126,86361125,86361124,86361123,86361122,86361121,86361102,86361101');
INSERT INTO `area` VALUES ('86361101', '市辖区', '334000', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361102', '信州区', '334000', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361121', '上饶县', '334100', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361122', '广丰县', '334600', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361123', '玉山县', '334700', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361124', '铅山县', '334500', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361125', '横峰县', '334300', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361126', '弋阳县', '334400', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361127', '余干县', '335100', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361128', '鄱阳县', '333100', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361129', '万年县', '335500', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361130', '婺源县', '333200', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86361181', '德兴市', '334200', '86361100', '86360000', '86361100,86360000', '上饶市,江西省', null);
INSERT INTO `area` VALUES ('86370000', '山东省', null, '0', null, null, null, '86371700,86371600,86371500,86371400,86371300,86371200,86371100,86371000,86370900,86370800,86370700,86370600,86370500,86370400,86370300,86370200,86370100');
INSERT INTO `area` VALUES ('86370100', '济南市', '250000', '86370000', '86370000', '86370000', '山东省', '86370181,86370126,86370125,86370124,86370113,86370112,86370105,86370104,86370103,86370102,86370101');
INSERT INTO `area` VALUES ('86370101', '市辖区', '250000', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370102', '历下区', '250000', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370103', '市中区', '250000', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370104', '槐荫区', '250000', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370105', '天桥区', '250000', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370112', '历城区', '250100', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370113', '长清区', '250300', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370124', '平阴县', '250400', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370125', '济阳县', '251400', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370126', '商河县', '251600', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370181', '章丘市', '250200', '86370100', '86370000', '86370100,86370000', '济南市,山东省', null);
INSERT INTO `area` VALUES ('86370200', '青岛市', '266000', '86370000', '86370000', '86370000', '山东省', '86370285,86370284,86370283,86370282,86370281,86370214,86370213,86370212,86370211,86370205,86370203,86370202,86370201');
INSERT INTO `area` VALUES ('86370201', '市辖区', '266000', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370202', '市南区', '266000', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370203', '市北区', '266000', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370205', '四方区', '266000', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370211', '黄岛区', '266000', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370212', '崂山区', '266100', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370213', '李沧区', '266000', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370214', '城阳区', '266000', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370281', '胶州市', '266300', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370282', '即墨市', '266200', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370283', '平度市', '266700', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370284', '胶南市', '266400', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370285', '莱西市', '266600', '86370200', '86370000', '86370200,86370000', '青岛市,山东省', null);
INSERT INTO `area` VALUES ('86370300', '淄博市', '255100', '86370000', '86370000', '86370000', '山东省', '86370323,86370322,86370321,86370306,86370305,86370304,86370303,86370302,86370301');
INSERT INTO `area` VALUES ('86370301', '市辖区', '255100', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370302', '淄川区', '255100', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370303', '张店区', '255000', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370304', '博山区', '255200', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370305', '临淄区', '255400', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370306', '周村区', '255300', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370321', '桓台县', '256400', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370322', '高青县', '256300', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370323', '沂源县', '256100', '86370300', '86370000', '86370300,86370000', '淄博市,山东省', null);
INSERT INTO `area` VALUES ('86370400', '枣庄市', '277000', '86370000', '86370000', '86370000', '山东省', '86370481,86370406,86370405,86370404,86370403,86370402,86370401');
INSERT INTO `area` VALUES ('86370401', '市辖区', '277000', '86370400', '86370000', '86370400,86370000', '枣庄市,山东省', null);
INSERT INTO `area` VALUES ('86370402', '市中区', '277000', '86370400', '86370000', '86370400,86370000', '枣庄市,山东省', null);
INSERT INTO `area` VALUES ('86370403', '薛城区', '277000', '86370400', '86370000', '86370400,86370000', '枣庄市,山东省', null);
INSERT INTO `area` VALUES ('86370404', '峄城区', '277300', '86370400', '86370000', '86370400,86370000', '枣庄市,山东省', null);
INSERT INTO `area` VALUES ('86370405', '台儿庄区', '277400', '86370400', '86370000', '86370400,86370000', '枣庄市,山东省', null);
INSERT INTO `area` VALUES ('86370406', '山亭区', '277200', '86370400', '86370000', '86370400,86370000', '枣庄市,山东省', null);
INSERT INTO `area` VALUES ('86370481', '滕州市', '277500', '86370400', '86370000', '86370400,86370000', '枣庄市,山东省', null);
INSERT INTO `area` VALUES ('86370500', '东营市', '257000', '86370000', '86370000', '86370000', '山东省', '86370523,86370522,86370521,86370503,86370502,86370501');
INSERT INTO `area` VALUES ('86370501', '市辖区', '257000', '86370500', '86370000', '86370500,86370000', '东营市,山东省', null);
INSERT INTO `area` VALUES ('86370502', '东营区', '257100', '86370500', '86370000', '86370500,86370000', '东营市,山东省', null);
INSERT INTO `area` VALUES ('86370503', '河口区', '257200', '86370500', '86370000', '86370500,86370000', '东营市,山东省', null);
INSERT INTO `area` VALUES ('86370521', '垦利县', '257500', '86370500', '86370000', '86370500,86370000', '东营市,山东省', null);
INSERT INTO `area` VALUES ('86370522', '利津县', '257400', '86370500', '86370000', '86370500,86370000', '东营市,山东省', null);
INSERT INTO `area` VALUES ('86370523', '广饶县', '257300', '86370500', '86370000', '86370500,86370000', '东营市,山东省', null);
INSERT INTO `area` VALUES ('86370600', '烟台市', '264000', '86370000', '86370000', '86370000', '山东省', '86370687,86370686,86370685,86370684,86370683,86370682,86370681,86370634,86370613,86370612,86370611,86370602,86370601');
INSERT INTO `area` VALUES ('86370601', '市辖区', '264000', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370602', '芝罘区', '264000', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370611', '福山区', '265500', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370612', '牟平区', '264100', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370613', '莱山区', '264000', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370634', '长岛县', '265800', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370681', '龙口市', '265700', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370682', '莱阳市', '265200', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370683', '莱州市', '261400', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370684', '蓬莱市', '265600', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370685', '招远市', '265400', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370686', '栖霞市', '265300', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370687', '海阳市', '265100', '86370600', '86370000', '86370600,86370000', '烟台市,山东省', null);
INSERT INTO `area` VALUES ('86370700', '潍坊市', '261000', '86370000', '86370000', '86370000', '山东省', '86370786,86370785,86370784,86370783,86370782,86370781,86370725,86370724,86370705,86370704,86370703,86370702,86370701');
INSERT INTO `area` VALUES ('86370701', '市辖区', '261000', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370702', '潍城区', '261000', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370703', '寒亭区', '261100', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370704', '坊子区', '261200', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370705', '奎文区', '261000', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370724', '临朐县', '262600', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370725', '昌乐县', '262400', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370781', '青州市', '262500', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370782', '诸城市', '262200', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370783', '寿光市', '262700', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370784', '安丘市', '262100', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370785', '高密市', '261500', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370786', '昌邑市', '261300', '86370700', '86370000', '86370700,86370000', '潍坊市,山东省', null);
INSERT INTO `area` VALUES ('86370800', '济宁市', '272000', '86370000', '86370000', '86370000', '山东省', '86370883,86370882,86370881,86370832,86370831,86370830,86370829,86370828,86370827,86370826,86370811,86370802,86370801');
INSERT INTO `area` VALUES ('86370801', '市辖区', '272000', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370802', '市中区', '272000', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370811', '任城区', '272000', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370826', '微山县', '277600', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370827', '鱼台县', '272300', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370828', '金乡县', '272200', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370829', '嘉祥县', '272400', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370830', '汶上县', '272500', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370831', '泗水县', '273200', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370832', '梁山县', '272600', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370881', '曲阜市', '273100', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370882', '兖州市', '272000', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370883', '邹城市', '273500', '86370800', '86370000', '86370800,86370000', '济宁市,山东省', null);
INSERT INTO `area` VALUES ('86370900', '泰安市', '271000', '86370000', '86370000', '86370000', '山东省', '86370983,86370982,86370923,86370921,86370903,86370902,86370901');
INSERT INTO `area` VALUES ('86370901', '市辖区', '271000', '86370900', '86370000', '86370900,86370000', '泰安市,山东省', null);
INSERT INTO `area` VALUES ('86370902', '泰山区', '271000', '86370900', '86370000', '86370900,86370000', '泰安市,山东省', null);
INSERT INTO `area` VALUES ('86370903', '岱岳区', '271000', '86370900', '86370000', '86370900,86370000', '泰安市,山东省', null);
INSERT INTO `area` VALUES ('86370921', '宁阳县', '271400', '86370900', '86370000', '86370900,86370000', '泰安市,山东省', null);
INSERT INTO `area` VALUES ('86370923', '东平县', '271500', '86370900', '86370000', '86370900,86370000', '泰安市,山东省', null);
INSERT INTO `area` VALUES ('86370982', '新泰市', '271200', '86370900', '86370000', '86370900,86370000', '泰安市,山东省', null);
INSERT INTO `area` VALUES ('86370983', '肥城市', '271600', '86370900', '86370000', '86370900,86370000', '泰安市,山东省', null);
INSERT INTO `area` VALUES ('86371000', '威海市', '264000', '86370000', '86370000', '86370000', '山东省', '86371083,86371082,86371081,86371002,86371001');
INSERT INTO `area` VALUES ('86371001', '市辖区', '264000', '86371000', '86370000', '86371000,86370000', '威海市,山东省', null);
INSERT INTO `area` VALUES ('86371002', '环翠区', '264200', '86371000', '86370000', '86371000,86370000', '威海市,山东省', null);
INSERT INTO `area` VALUES ('86371081', '文登市', '264400', '86371000', '86370000', '86371000,86370000', '威海市,山东省', null);
INSERT INTO `area` VALUES ('86371082', '荣成市', '264300', '86371000', '86370000', '86371000,86370000', '威海市,山东省', null);
INSERT INTO `area` VALUES ('86371083', '乳山市', '264500', '86371000', '86370000', '86371000,86370000', '威海市,山东省', null);
INSERT INTO `area` VALUES ('86371100', '日照市', '276800', '86370000', '86370000', '86370000', '山东省', '86371122,86371121,86371103,86371102,86371101');
INSERT INTO `area` VALUES ('86371101', '市辖区', '276800', '86371100', '86370000', '86371100,86370000', '日照市,山东省', null);
INSERT INTO `area` VALUES ('86371102', '东港区', '276800', '86371100', '86370000', '86371100,86370000', '日照市,山东省', null);
INSERT INTO `area` VALUES ('86371103', '岚山区', '276800', '86371100', '86370000', '86371100,86370000', '日照市,山东省', null);
INSERT INTO `area` VALUES ('86371121', '五莲县', '262300', '86371100', '86370000', '86371100,86370000', '日照市,山东省', null);
INSERT INTO `area` VALUES ('86371122', '莒　县', '276500', '86371100', '86370000', '86371100,86370000', '日照市,山东省', null);
INSERT INTO `area` VALUES ('86371200', '莱芜市', '271100', '86370000', '86370000', '86370000', '山东省', '86371203,86371202,86371201');
INSERT INTO `area` VALUES ('86371201', '市辖区', '271100', '86371200', '86370000', '86371200,86370000', '莱芜市,山东省', null);
INSERT INTO `area` VALUES ('86371202', '莱城区', '271100', '86371200', '86370000', '86371200,86370000', '莱芜市,山东省', null);
INSERT INTO `area` VALUES ('86371203', '钢城区', '271100', '86371200', '86370000', '86371200,86370000', '莱芜市,山东省', null);
INSERT INTO `area` VALUES ('86371300', '临沂市', '276000', '86370000', '86370000', '86370000', '山东省', '86371329,86371328,86371327,86371326,86371325,86371324,86371323,86371322,86371321,86371312,86371311,86371302,86371301');
INSERT INTO `area` VALUES ('86371301', '市辖区', '276000', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371302', '兰山区', '276000', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371311', '罗庄区', '276000', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371312', '河东区', '276000', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371321', '沂南县', '276300', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371322', '郯城县', '276100', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371323', '沂水县', '276400', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371324', '苍山县', '277700', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371325', '费　县', '273400', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371326', '平邑县', '273300', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371327', '莒南县', '276600', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371328', '蒙阴县', '276200', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371329', '临沭县', '276700', '86371300', '86370000', '86371300,86370000', '临沂市,山东省', null);
INSERT INTO `area` VALUES ('86371400', '德州市', '253000', '86370000', '86370000', '86370000', '山东省', '86371482,86371481,86371428,86371427,86371426,86371425,86371424,86371423,86371422,86371421,86371402,86371401');
INSERT INTO `area` VALUES ('86371401', '市辖区', '253000', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371402', '德城区', '253000', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371421', '陵　县', '253500', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371422', '宁津县', '253400', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371423', '庆云县', '253700', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371424', '临邑县', '251500', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371425', '齐河县', '251100', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371426', '平原县', '253100', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371427', '夏津县', '253200', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371428', '武城县', '253300', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371481', '乐陵市', '253600', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371482', '禹城市', '251200', '86371400', '86370000', '86371400,86370000', '德州市,山东省', null);
INSERT INTO `area` VALUES ('86371500', '聊城市', '252000', '86370000', '86370000', '86370000', '山东省', '86371581,86371526,86371525,86371524,86371523,86371522,86371521,86371502,86371501');
INSERT INTO `area` VALUES ('86371501', '市辖区', '252000', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371502', '东昌府区', '252000', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371521', '阳谷县', '252300', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371522', '莘　县', '252400', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371523', '茌平县', '252100', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371524', '东阿县', '252200', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371525', '冠　县', '252500', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371526', '高唐县', '252800', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371581', '临清市', '252600', '86371500', '86370000', '86371500,86370000', '聊城市,山东省', null);
INSERT INTO `area` VALUES ('86371600', '滨州市', '256600', '86370000', '86370000', '86370000', '山东省', '86371626,86371625,86371624,86371623,86371622,86371621,86371602,86371601');
INSERT INTO `area` VALUES ('86371601', '市辖区', '256600', '86371600', '86370000', '86371600,86370000', '滨州市,山东省', null);
INSERT INTO `area` VALUES ('86371602', '滨城区', '256600', '86371600', '86370000', '86371600,86370000', '滨州市,山东省', null);
INSERT INTO `area` VALUES ('86371621', '惠民县', '251700', '86371600', '86370000', '86371600,86370000', '滨州市,山东省', null);
INSERT INTO `area` VALUES ('86371622', '阳信县', '251800', '86371600', '86370000', '86371600,86370000', '滨州市,山东省', null);
INSERT INTO `area` VALUES ('86371623', '无棣县', '251900', '86371600', '86370000', '86371600,86370000', '滨州市,山东省', null);
INSERT INTO `area` VALUES ('86371624', '沾化县', '256800', '86371600', '86370000', '86371600,86370000', '滨州市,山东省', null);
INSERT INTO `area` VALUES ('86371625', '博兴县', '256500', '86371600', '86370000', '86371600,86370000', '滨州市,山东省', null);
INSERT INTO `area` VALUES ('86371626', '邹平县', '256200', '86371600', '86370000', '86371600,86370000', '滨州市,山东省', null);
INSERT INTO `area` VALUES ('86371700', '荷泽市', '274000', '86370000', '86370000', '86370000', '山东省', '86371728,86371727,86371726,86371725,86371724,86371723,86371722,86371721,86371702,86371701');
INSERT INTO `area` VALUES ('86371701', '市辖区', '274000', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371702', '牡丹区', '274000', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371721', '曹　县', '274400', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371722', '单　县', '274300', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371723', '成武县', '274200', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371724', '巨野县', '274900', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371725', '郓城县', '274700', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371726', '鄄城县', '274600', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371727', '定陶县', '274100', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86371728', '东明县', '274500', '86371700', '86370000', '86371700,86370000', '荷泽市,山东省', null);
INSERT INTO `area` VALUES ('86410000', '河南省', null, '0', null, null, null, '86411700,86411600,86411500,86411400,86411300,86411200,86411100,86411000,86410900,86410800,86410700,86410600,86410500,86410400,86410300,86410200,86410100');
INSERT INTO `area` VALUES ('86410100', '郑州市', '450000', '86410000', '86410000', '86410000', '河南省', '86410185,86410184,86410183,86410182,86410181,86410122,86410108,86410106,86410105,86410104,86410103,86410102,86410101');
INSERT INTO `area` VALUES ('86410101', '市辖区', '450000', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410102', '中原区', '450000', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410103', '二七区', '450000', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410104', '管城回族区', '450000', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410105', '金水区', '450000', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410106', '上街区', '450041', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410108', '邙山区', '450000', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410122', '中牟县', '451450', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410181', '巩义市', '452100', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410182', '荥阳市', '450100', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410183', '新密市', '452370', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410184', '新郑市', '451100', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410185', '登封市', '452470', '86410100', '86410000', '86410100,86410000', '郑州市,河南省', null);
INSERT INTO `area` VALUES ('86410200', '开封市', '475000', '86410000', '86410000', '86410000', '河南省', '86410225,86410224,86410223,86410222,86410221,86410211,86410205,86410204,86410203,86410202,86410201');
INSERT INTO `area` VALUES ('86410201', '市辖区', '475000', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410202', '龙亭区', '475000', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410203', '顺河回族区', '475000', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410204', '鼓楼区', '475000', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410205', '南关区', '475000', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410211', '郊　区', '475000', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410221', '杞　县', '475200', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410222', '通许县', '452200', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410223', '尉氏县', '452100', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410224', '开封县', '475100', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410225', '兰考县', '475300', '86410200', '86410000', '86410200,86410000', '开封市,河南省', null);
INSERT INTO `area` VALUES ('86410300', '洛阳市', '471000', '86410000', '86410000', '86410000', '河南省', '86410381,86410329,86410328,86410327,86410326,86410325,86410324,86410323,86410322,86410307,86410306,86410305,86410304,86410303,86410302,86410301');
INSERT INTO `area` VALUES ('86410301', '市辖区', '471000', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410302', '老城区', '471000', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410303', '西工区', '471000', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410304', '廛河回族区', '471000', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410305', '涧西区', '471000', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410306', '吉利区', '471000', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410307', '洛龙区', '471000', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410322', '孟津县', '471100', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410323', '新安县', '471800', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410324', '栾川县', '471500', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410325', '嵩　县', '471400', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410326', '汝阳县', '471200', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410327', '宜阳县', '471600', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410328', '洛宁县', '471700', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410329', '伊川县', '471300', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410381', '偃师市', '471900', '86410300', '86410000', '86410300,86410000', '洛阳市,河南省', null);
INSERT INTO `area` VALUES ('86410400', '平顶山市', '467000', '86410000', '86410000', '86410000', '河南省', '86410482,86410481,86410425,86410423,86410422,86410421,86410411,86410404,86410403,86410402,86410401');
INSERT INTO `area` VALUES ('86410401', '市辖区', '467000', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410402', '新华区', '467000', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410403', '卫东区', '467000', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410404', '石龙区', '467000', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410411', '湛河区', '467000', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410421', '宝丰县', '467400', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410422', '叶　县', '467200', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410423', '鲁山县', '467300', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410425', '郏　县', '467100', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410481', '舞钢市', '462500', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410482', '汝州市', '467500', '86410400', '86410000', '86410400,86410000', '平顶山市,河南省', null);
INSERT INTO `area` VALUES ('86410500', '安阳市', '455000', '86410000', '86410000', '86410000', '河南省', '86410581,86410527,86410526,86410523,86410522,86410506,86410505,86410503,86410502,86410501');
INSERT INTO `area` VALUES ('86410501', '市辖区', '455000', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410502', '文峰区', '455000', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410503', '北关区', '455000', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410505', '殷都区', '455000', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410506', '龙安区', '455000', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410522', '安阳县', '455100', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410523', '汤阴县', '456150', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410526', '滑　县', '456400', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410527', '内黄县', '456300', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410581', '林州市', '456500', '86410500', '86410000', '86410500,86410000', '安阳市,河南省', null);
INSERT INTO `area` VALUES ('86410600', '鹤壁市', '458000', '86410000', '86410000', '86410000', '河南省', '86410622,86410621,86410611,86410603,86410602,86410601');
INSERT INTO `area` VALUES ('86410601', '市辖区', '458000', '86410600', '86410000', '86410600,86410000', '鹤壁市,河南省', null);
INSERT INTO `area` VALUES ('86410602', '鹤山区', '458000', '86410600', '86410000', '86410600,86410000', '鹤壁市,河南省', null);
INSERT INTO `area` VALUES ('86410603', '山城区', '458000', '86410600', '86410000', '86410600,86410000', '鹤壁市,河南省', null);
INSERT INTO `area` VALUES ('86410611', '淇滨区', '458000', '86410600', '86410000', '86410600,86410000', '鹤壁市,河南省', null);
INSERT INTO `area` VALUES ('86410621', '浚　县', '456250', '86410600', '86410000', '86410600,86410000', '鹤壁市,河南省', null);
INSERT INTO `area` VALUES ('86410622', '淇　县', '456750', '86410600', '86410000', '86410600,86410000', '鹤壁市,河南省', null);
INSERT INTO `area` VALUES ('86410700', '新乡市', '453000', '86410000', '86410000', '86410000', '河南省', '86410782,86410781,86410728,86410727,86410726,86410725,86410724,86410721,86410711,86410704,86410703,86410702,86410701');
INSERT INTO `area` VALUES ('86410701', '市辖区', '453000', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410702', '红旗区', '453000', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410703', '卫滨区', '453000', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410704', '凤泉区', '453000', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410711', '牧野区', '453000', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410721', '新乡县', '453700', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410724', '获嘉县', '453800', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410725', '原阳县', '453500', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410726', '延津县', '453200', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410727', '封丘县', '453300', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410728', '长垣县', '453400', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410781', '卫辉市', '453100', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410782', '辉县市', '453600', '86410700', '86410000', '86410700,86410000', '新乡市,河南省', null);
INSERT INTO `area` VALUES ('86410800', '焦作市', '454150', '86410000', '86410000', '86410000', '河南省', '86410883,86410882,86410881,86410825,86410823,86410822,86410821,86410811,86410804,86410803,86410802,86410801');
INSERT INTO `area` VALUES ('86410801', '市辖区', '454150', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410802', '解放区', '454150', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410803', '中站区', '454150', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410804', '马村区', '454150', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410811', '山阳区', '454150', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410821', '修武县', '454350', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410822', '博爱县', '454450', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410823', '武陟县', '454950', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410825', '温　县', '454850', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410881', '济源市', '454650', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410882', '沁阳市', '454550', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410883', '孟州市', '454750', '86410800', '86410000', '86410800,86410000', '焦作市,河南省', null);
INSERT INTO `area` VALUES ('86410900', '濮阳市', '457000', '86410000', '86410000', '86410000', '河南省', '86410928,86410927,86410926,86410923,86410922,86410902,86410901');
INSERT INTO `area` VALUES ('86410901', '市辖区', '457000', '86410900', '86410000', '86410900,86410000', '濮阳市,河南省', null);
INSERT INTO `area` VALUES ('86410902', '华龙区', '457000', '86410900', '86410000', '86410900,86410000', '濮阳市,河南省', null);
INSERT INTO `area` VALUES ('86410922', '清丰县', '457300', '86410900', '86410000', '86410900,86410000', '濮阳市,河南省', null);
INSERT INTO `area` VALUES ('86410923', '南乐县', '457400', '86410900', '86410000', '86410900,86410000', '濮阳市,河南省', null);
INSERT INTO `area` VALUES ('86410926', '范　县', '457500', '86410900', '86410000', '86410900,86410000', '濮阳市,河南省', null);
INSERT INTO `area` VALUES ('86410927', '台前县', '457600', '86410900', '86410000', '86410900,86410000', '濮阳市,河南省', null);
INSERT INTO `area` VALUES ('86410928', '濮阳县', '457100', '86410900', '86410000', '86410900,86410000', '濮阳市,河南省', null);
INSERT INTO `area` VALUES ('86411000', '许昌市', '461000', '86410000', '86410000', '86410000', '河南省', '86411082,86411081,86411025,86411024,86411023,86411002,86411001');
INSERT INTO `area` VALUES ('86411001', '市辖区', '461000', '86411000', '86410000', '86411000,86410000', '许昌市,河南省', null);
INSERT INTO `area` VALUES ('86411002', '魏都区', '461000', '86411000', '86410000', '86411000,86410000', '许昌市,河南省', null);
INSERT INTO `area` VALUES ('86411023', '许昌县', '461100', '86411000', '86410000', '86411000,86410000', '许昌市,河南省', null);
INSERT INTO `area` VALUES ('86411024', '鄢陵县', '461200', '86411000', '86410000', '86411000,86410000', '许昌市,河南省', null);
INSERT INTO `area` VALUES ('86411025', '襄城县', '452670', '86411000', '86410000', '86411000,86410000', '许昌市,河南省', null);
INSERT INTO `area` VALUES ('86411081', '禹州市', '452570', '86411000', '86410000', '86411000,86410000', '许昌市,河南省', null);
INSERT INTO `area` VALUES ('86411082', '长葛市', '461500', '86411000', '86410000', '86411000,86410000', '许昌市,河南省', null);
INSERT INTO `area` VALUES ('86411100', '漯河市', '462000', '86410000', '86410000', '86410000', '河南省', '86411122,86411121,86411104,86411103,86411102,86411101');
INSERT INTO `area` VALUES ('86411101', '市辖区', '462000', '86411100', '86410000', '86411100,86410000', '漯河市,河南省', null);
INSERT INTO `area` VALUES ('86411102', '源汇区', '462000', '86411100', '86410000', '86411100,86410000', '漯河市,河南省', null);
INSERT INTO `area` VALUES ('86411103', '郾城区', '462300', '86411100', '86410000', '86411100,86410000', '漯河市,河南省', null);
INSERT INTO `area` VALUES ('86411104', '召陵区', '462300', '86411100', '86410000', '86411100,86410000', '漯河市,河南省', null);
INSERT INTO `area` VALUES ('86411121', '舞阳县', '462400', '86411100', '86410000', '86411100,86410000', '漯河市,河南省', null);
INSERT INTO `area` VALUES ('86411122', '临颍县', '462600', '86411100', '86410000', '86411100,86410000', '漯河市,河南省', null);
INSERT INTO `area` VALUES ('86411200', '三门峡市', '472000', '86410000', '86410000', '86410000', '河南省', '86411282,86411281,86411224,86411222,86411221,86411202,86411201');
INSERT INTO `area` VALUES ('86411201', '市辖区', '472000', '86411200', '86410000', '86411200,86410000', '三门峡市,河南省', null);
INSERT INTO `area` VALUES ('86411202', '湖滨区', '472000', '86411200', '86410000', '86411200,86410000', '三门峡市,河南省', null);
INSERT INTO `area` VALUES ('86411221', '渑池县', '472400', '86411200', '86410000', '86411200,86410000', '三门峡市,河南省', null);
INSERT INTO `area` VALUES ('86411222', '陕　县', '472100', '86411200', '86410000', '86411200,86410000', '三门峡市,河南省', null);
INSERT INTO `area` VALUES ('86411224', '卢氏县', '472200', '86411200', '86410000', '86411200,86410000', '三门峡市,河南省', null);
INSERT INTO `area` VALUES ('86411281', '义马市', '472300', '86411200', '86410000', '86411200,86410000', '三门峡市,河南省', null);
INSERT INTO `area` VALUES ('86411282', '灵宝市', '472500', '86411200', '86410000', '86411200,86410000', '三门峡市,河南省', null);
INSERT INTO `area` VALUES ('86411300', '南阳市', '473000', '86410000', '86410000', '86410000', '河南省', '86411381,86411330,86411329,86411328,86411327,86411326,86411325,86411324,86411323,86411322,86411321,86411303,86411302,86411301');
INSERT INTO `area` VALUES ('86411301', '市辖区', '473000', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411302', '宛城区', '473000', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411303', '卧龙区', '473000', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411321', '南召县', '474650', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411322', '方城县', '473200', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411323', '西峡县', '474550', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411324', '镇平县', '474250', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411325', '内乡县', '474350', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411326', '淅川县', '474450', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411327', '社旗县', '473300', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411328', '唐河县', '473400', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411329', '新野县', '473500', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411330', '桐柏县', '474750', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411381', '邓州市', '474150', '86411300', '86410000', '86411300,86410000', '南阳市,河南省', null);
INSERT INTO `area` VALUES ('86411400', '商丘市', '476000', '86410000', '86410000', '86410000', '河南省', '86411481,86411426,86411425,86411424,86411423,86411422,86411421,86411403,86411402,86411401');
INSERT INTO `area` VALUES ('86411401', '市辖区', '476000', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411402', '梁园区', '476000', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411403', '睢阳区', '476000', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411421', '民权县', '476800', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411422', '睢　县', '476900', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411423', '宁陵县', '476700', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411424', '柘城县', '476200', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411425', '虞城县', '476300', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411426', '夏邑县', '476400', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411481', '永城市', '476600', '86411400', '86410000', '86411400,86410000', '商丘市,河南省', null);
INSERT INTO `area` VALUES ('86411500', '信阳市', '464000', '86410000', '86410000', '86410000', '河南省', '86411528,86411527,86411526,86411525,86411524,86411523,86411522,86411521,86411503,86411502,86411501');
INSERT INTO `area` VALUES ('86411501', '市辖区', '464000', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411502', '师河区', '464000', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411503', '平桥区', '464000', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411521', '罗山县', '464200', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411522', '光山县', '465450', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411523', '新　县', '465500', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411524', '商城县', '465350', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411525', '固始县', '465200', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411526', '潢川县', '465150', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411527', '淮滨县', '464400', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411528', '息　县', '464300', '86411500', '86410000', '86411500,86410000', '信阳市,河南省', null);
INSERT INTO `area` VALUES ('86411600', '周口市', '466000', '86410000', '86410000', '86410000', '河南省', '86411681,86411628,86411627,86411626,86411625,86411624,86411623,86411622,86411621,86411602,86411601');
INSERT INTO `area` VALUES ('86411601', '市辖区', '466000', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411602', '川汇区', '466000', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411621', '扶沟县', '461300', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411622', '西华县', '466600', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411623', '商水县', '466100', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411624', '沈丘县', '466300', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411625', '郸城县', '477150', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411626', '淮阳县', '466700', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411627', '太康县', '475400', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411628', '鹿邑县', '477200', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411681', '项城市', '466200', '86411600', '86410000', '86411600,86410000', '周口市,河南省', null);
INSERT INTO `area` VALUES ('86411700', '驻马店市', '463000', '86410000', '86410000', '86410000', '河南省', '86411729,86411728,86411727,86411726,86411725,86411724,86411723,86411722,86411721,86411702,86411701');
INSERT INTO `area` VALUES ('86411701', '市辖区', '463000', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411702', '驿城区', '463000', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411721', '西平县', '463900', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411722', '上蔡县', '463800', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411723', '平舆县', '463400', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411724', '正阳县', '463600', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411725', '确山县', '463200', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411726', '泌阳县', '463700', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411727', '汝南县', '463300', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411728', '遂平县', '463100', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86411729', '新蔡县', '463500', '86411700', '86410000', '86411700,86410000', '驻马店市,河南省', null);
INSERT INTO `area` VALUES ('86420000', '湖北省', null, '0', null, null, null, '86429000,86422800,86421300,86421200,86421100,86421000,86420900,86420800,86420700,86420600,86420500,86420300,86420200,86420100');
INSERT INTO `area` VALUES ('86420100', '武汉市', '430000', '86420000', '86420000', '86420000', '湖北省', '86420117,86420116,86420115,86420114,86420113,86420112,86420111,86420107,86420106,86420105,86420104,86420103,86420102,86420101');
INSERT INTO `area` VALUES ('86420101', '市辖区', '430000', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420102', '江岸区', '430014', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420103', '江汉区', '430000', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420104', '乔口区', '430000', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420105', '汉阳区', '430050', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420106', '武昌区', '430000', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420107', '青山区', '430080', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420111', '洪山区', '430070', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420112', '东西湖区', '430040', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420113', '汉南区', '430090', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420114', '蔡甸区', '430100', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420115', '江夏区', '430200', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420116', '黄陂区', '432200', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420117', '新洲区', '431400', '86420100', '86420000', '86420100,86420000', '武汉市,湖北省', null);
INSERT INTO `area` VALUES ('86420200', '黄石市', '435000', '86420000', '86420000', '86420000', '湖北省', '86420281,86420222,86420205,86420204,86420203,86420202,86420201');
INSERT INTO `area` VALUES ('86420201', '市辖区', '435000', '86420200', '86420000', '86420200,86420000', '黄石市,湖北省', null);
INSERT INTO `area` VALUES ('86420202', '黄石港区', '435000', '86420200', '86420000', '86420200,86420000', '黄石市,湖北省', null);
INSERT INTO `area` VALUES ('86420203', '西塞山区', '435000', '86420200', '86420000', '86420200,86420000', '黄石市,湖北省', null);
INSERT INTO `area` VALUES ('86420204', '下陆区', '435000', '86420200', '86420000', '86420200,86420000', '黄石市,湖北省', null);
INSERT INTO `area` VALUES ('86420205', '铁山区', '435000', '86420200', '86420000', '86420200,86420000', '黄石市,湖北省', null);
INSERT INTO `area` VALUES ('86420222', '阳新县', '435200', '86420200', '86420000', '86420200,86420000', '黄石市,湖北省', null);
INSERT INTO `area` VALUES ('86420281', '大冶市', '435100', '86420200', '86420000', '86420200,86420000', '黄石市,湖北省', null);
INSERT INTO `area` VALUES ('86420300', '十堰市', '442000', '86420000', '86420000', '86420000', '湖北省', '86420381,86420325,86420324,86420323,86420322,86420321,86420303,86420302,86420301');
INSERT INTO `area` VALUES ('86420301', '市辖区', '442000', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420302', '茅箭区', '442000', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420303', '张湾区', '442000', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420321', '郧　县', '442500', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420322', '郧西县', '442600', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420323', '竹山县', '442200', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420324', '竹溪县', '442300', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420325', '房　县', '442100', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420381', '丹江口市', '442700', '86420300', '86420000', '86420300,86420000', '十堰市,湖北省', null);
INSERT INTO `area` VALUES ('86420500', '宜昌市', '443000', '86420000', '86420000', '86420000', '湖北省', '86420583,86420582,86420581,86420529,86420528,86420527,86420526,86420525,86420506,86420505,86420504,86420503,86420502,86420501');
INSERT INTO `area` VALUES ('86420501', '市辖区', '443000', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420502', '西陵区', '443000', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420503', '伍家岗区', '443000', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420504', '点军区', '443000', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420505', '猇亭区', '443000', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420506', '夷陵区', '443100', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420525', '远安县', '444200', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420526', '兴山县', '443700', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420527', '秭归县', '443600', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420528', '长阳土家族自治县', '443500', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420529', '五峰土家族自治县', '443400', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420581', '宜都市', '443000', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420582', '当阳市', '444100', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420583', '枝江市', '443200', '86420500', '86420000', '86420500,86420000', '宜昌市,湖北省', null);
INSERT INTO `area` VALUES ('86420600', '襄樊市', '441000', '86420000', '86420000', '86420000', '湖北省', '86420684,86420683,86420682,86420626,86420625,86420624,86420607,86420606,86420602,86420601');
INSERT INTO `area` VALUES ('86420601', '市辖区', '441000', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420602', '襄城区', '441000', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420606', '樊城区', '441000', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420607', '襄阳区', '441100', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420624', '南漳县', '441500', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420625', '谷城县', '441700', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420626', '保康县', '441600', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420682', '老河口市', '441800', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420683', '枣阳市', '441200', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420684', '宜城市', '441400', '86420600', '86420000', '86420600,86420000', '襄樊市,湖北省', null);
INSERT INTO `area` VALUES ('86420700', '鄂州市', '436000', '86420000', '86420000', '86420000', '湖北省', '86420704,86420703,86420702,86420701');
INSERT INTO `area` VALUES ('86420701', '市辖区', '436000', '86420700', '86420000', '86420700,86420000', '鄂州市,湖北省', null);
INSERT INTO `area` VALUES ('86420702', '梁子湖区', '436000', '86420700', '86420000', '86420700,86420000', '鄂州市,湖北省', null);
INSERT INTO `area` VALUES ('86420703', '华容区', '436000', '86420700', '86420000', '86420700,86420000', '鄂州市,湖北省', null);
INSERT INTO `area` VALUES ('86420704', '鄂城区', '436000', '86420700', '86420000', '86420700,86420000', '鄂州市,湖北省', null);
INSERT INTO `area` VALUES ('86420800', '荆门市', '448000', '86420000', '86420000', '86420000', '湖北省', '86420881,86420822,86420821,86420804,86420802,86420801');
INSERT INTO `area` VALUES ('86420801', '市辖区', '448000', '86420800', '86420000', '86420800,86420000', '荆门市,湖北省', null);
INSERT INTO `area` VALUES ('86420802', '东宝区', '448000', '86420800', '86420000', '86420800,86420000', '荆门市,湖北省', null);
INSERT INTO `area` VALUES ('86420804', '掇刀区', '448000', '86420800', '86420000', '86420800,86420000', '荆门市,湖北省', null);
INSERT INTO `area` VALUES ('86420821', '京山县', '431800', '86420800', '86420000', '86420800,86420000', '荆门市,湖北省', null);
INSERT INTO `area` VALUES ('86420822', '沙洋县', '448200', '86420800', '86420000', '86420800,86420000', '荆门市,湖北省', null);
INSERT INTO `area` VALUES ('86420881', '钟祥市', '431900', '86420800', '86420000', '86420800,86420000', '荆门市,湖北省', null);
INSERT INTO `area` VALUES ('86420900', '孝感市', '432000', '86420000', '86420000', '86420000', '湖北省', '86420984,86420982,86420981,86420923,86420922,86420921,86420902,86420901');
INSERT INTO `area` VALUES ('86420901', '市辖区', '432000', '86420900', '86420000', '86420900,86420000', '孝感市,湖北省', null);
INSERT INTO `area` VALUES ('86420902', '孝南区', '432100', '86420900', '86420000', '86420900,86420000', '孝感市,湖北省', null);
INSERT INTO `area` VALUES ('86420921', '孝昌县', '432900', '86420900', '86420000', '86420900,86420000', '孝感市,湖北省', null);
INSERT INTO `area` VALUES ('86420922', '大悟县', '432800', '86420900', '86420000', '86420900,86420000', '孝感市,湖北省', null);
INSERT INTO `area` VALUES ('86420923', '云梦县', '432500', '86420900', '86420000', '86420900,86420000', '孝感市,湖北省', null);
INSERT INTO `area` VALUES ('86420981', '应城市', '432400', '86420900', '86420000', '86420900,86420000', '孝感市,湖北省', null);
INSERT INTO `area` VALUES ('86420982', '安陆市', '432600', '86420900', '86420000', '86420900,86420000', '孝感市,湖北省', null);
INSERT INTO `area` VALUES ('86420984', '汉川市', '432300', '86420900', '86420000', '86420900,86420000', '孝感市,湖北省', null);
INSERT INTO `area` VALUES ('86421000', '荆州市', '434000', '86420000', '86420000', '86420000', '湖北省', '86421087,86421083,86421081,86421024,86421023,86421022,86421003,86421002,86421001');
INSERT INTO `area` VALUES ('86421001', '市辖区', '434000', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421002', '沙市区', '434000', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421003', '荆州区', '434020', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421022', '公安县', '434300', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421023', '监利县', '433300', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421024', '江陵县', '434100', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421081', '石首市', '434400', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421083', '洪湖市', '433200', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421087', '松滋市', '434200', '86421000', '86420000', '86421000,86420000', '荆州市,湖北省', null);
INSERT INTO `area` VALUES ('86421100', '黄冈市', '438000', '86420000', '86420000', '86420000', '湖北省', '86421182,86421181,86421127,86421126,86421125,86421124,86421123,86421122,86421121,86421102,86421101');
INSERT INTO `area` VALUES ('86421101', '市辖区', '438000', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421102', '黄州区', '438000', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421121', '团风县', '438000', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421122', '红安县', '438400', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421123', '罗田县', '438600', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421124', '英山县', '438700', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421125', '浠水县', '438200', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421126', '蕲春县', '435300', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421127', '黄梅县', '435500', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421181', '麻城市', '438300', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421182', '武穴市', '435400', '86421100', '86420000', '86421100,86420000', '黄冈市,湖北省', null);
INSERT INTO `area` VALUES ('86421200', '咸宁市', '437000', '86420000', '86420000', '86420000', '湖北省', '86421281,86421224,86421223,86421222,86421221,86421202,86421201');
INSERT INTO `area` VALUES ('86421201', '市辖区', '437000', '86421200', '86420000', '86421200,86420000', '咸宁市,湖北省', null);
INSERT INTO `area` VALUES ('86421202', '咸安区', '437000', '86421200', '86420000', '86421200,86420000', '咸宁市,湖北省', null);
INSERT INTO `area` VALUES ('86421221', '嘉鱼县', '437200', '86421200', '86420000', '86421200,86420000', '咸宁市,湖北省', null);
INSERT INTO `area` VALUES ('86421222', '通城县', '437400', '86421200', '86420000', '86421200,86420000', '咸宁市,湖北省', null);
INSERT INTO `area` VALUES ('86421223', '崇阳县', '437500', '86421200', '86420000', '86421200,86420000', '咸宁市,湖北省', null);
INSERT INTO `area` VALUES ('86421224', '通山县', '437600', '86421200', '86420000', '86421200,86420000', '咸宁市,湖北省', null);
INSERT INTO `area` VALUES ('86421281', '赤壁市', '437300', '86421200', '86420000', '86421200,86420000', '咸宁市,湖北省', null);
INSERT INTO `area` VALUES ('86421300', '随州市', '441300', '86420000', '86420000', '86420000', '湖北省', '86421381,86421302,86421301');
INSERT INTO `area` VALUES ('86421301', '市辖区', '441300', '86421300', '86420000', '86421300,86420000', '随州市,湖北省', null);
INSERT INTO `area` VALUES ('86421302', '曾都区', '441300', '86421300', '86420000', '86421300,86420000', '随州市,湖北省', null);
INSERT INTO `area` VALUES ('86421381', '广水市', '432700', '86421300', '86420000', '86421300,86420000', '随州市,湖北省', null);
INSERT INTO `area` VALUES ('86422800', '恩施土家族苗族自治州', '445000', '86420000', '86420000', '86420000', '湖北省', '86422828,86422827,86422826,86422825,86422823,86422822,86422802,86422801');
INSERT INTO `area` VALUES ('86422801', '恩施市', '445000', '86422800', '86420000', '86422800,86420000', '恩施土家族苗族自治州,湖北省', null);
INSERT INTO `area` VALUES ('86422802', '利川市', '445400', '86422800', '86420000', '86422800,86420000', '恩施土家族苗族自治州,湖北省', null);
INSERT INTO `area` VALUES ('86422822', '建始县', '445300', '86422800', '86420000', '86422800,86420000', '恩施土家族苗族自治州,湖北省', null);
INSERT INTO `area` VALUES ('86422823', '巴东县', '444300', '86422800', '86420000', '86422800,86420000', '恩施土家族苗族自治州,湖北省', null);
INSERT INTO `area` VALUES ('86422825', '宣恩县', '445500', '86422800', '86420000', '86422800,86420000', '恩施土家族苗族自治州,湖北省', null);
INSERT INTO `area` VALUES ('86422826', '咸丰县', '445600', '86422800', '86420000', '86422800,86420000', '恩施土家族苗族自治州,湖北省', null);
INSERT INTO `area` VALUES ('86422827', '来凤县', '445700', '86422800', '86420000', '86422800,86420000', '恩施土家族苗族自治州,湖北省', null);
INSERT INTO `area` VALUES ('86422828', '鹤峰县', '445800', '86422800', '86420000', '86422800,86420000', '恩施土家族苗族自治州,湖北省', null);
INSERT INTO `area` VALUES ('86429000', '省直辖行政单位', '433000', '86420000', '86420000', '86420000', '湖北省', '86429021,86429006,86429005,86429004');
INSERT INTO `area` VALUES ('86429004', '仙桃市', '433000', '86429000', '86420000', '86429000,86420000', '省直辖行政单位,湖北省', null);
INSERT INTO `area` VALUES ('86429005', '潜江市', '433100', '86429000', '86420000', '86429000,86420000', '省直辖行政单位,湖北省', null);
INSERT INTO `area` VALUES ('86429006', '天门市', '431700', '86429000', '86420000', '86429000,86420000', '省直辖行政单位,湖北省', null);
INSERT INTO `area` VALUES ('86429021', '神农架林区', '442400', '86429000', '86420000', '86429000,86420000', '省直辖行政单位,湖北省', null);
INSERT INTO `area` VALUES ('86430000', '湖南省', null, '0', null, null, null, '86433100,86431300,86431200,86431100,86431000,86430900,86430800,86430700,86430600,86430500,86430400,86430300,86430200,86430100');
INSERT INTO `area` VALUES ('86430100', '长沙市', '410000', '86430000', '86430000', '86430000', '湖南省', '86430181,86430124,86430122,86430121,86430111,86430105,86430104,86430103,86430102,86430101');
INSERT INTO `area` VALUES ('86430101', '市辖区', '410000', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430102', '芙蓉区', '410000', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430103', '天心区', '410000', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430104', '岳麓区', '410000', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430105', '开福区', '410000', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430111', '雨花区', '410000', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430121', '长沙县', '410100', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430122', '望城县', '410200', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430124', '宁乡县', '410600', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430181', '浏阳市', '410300', '86430100', '86430000', '86430100,86430000', '长沙市,湖南省', null);
INSERT INTO `area` VALUES ('86430200', '株洲市', '412000', '86430000', '86430000', '86430000', '湖南省', '86430281,86430225,86430224,86430223,86430221,86430211,86430204,86430203,86430202,86430201');
INSERT INTO `area` VALUES ('86430201', '市辖区', '412000', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430202', '荷塘区', '412000', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430203', '芦淞区', '412000', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430204', '石峰区', '412000', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430211', '天元区', '412000', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430221', '株洲县', '412000', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430223', '攸　县', '412300', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430224', '茶陵县', '412400', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430225', '炎陵县', '412500', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430281', '醴陵市', '412200', '86430200', '86430000', '86430200,86430000', '株洲市,湖南省', null);
INSERT INTO `area` VALUES ('86430300', '湘潭市', '411100', '86430000', '86430000', '86430000', '湖南省', '86430382,86430381,86430321,86430304,86430302,86430301');
INSERT INTO `area` VALUES ('86430301', '市辖区', '411100', '86430300', '86430000', '86430300,86430000', '湘潭市,湖南省', null);
INSERT INTO `area` VALUES ('86430302', '雨湖区', '411100', '86430300', '86430000', '86430300,86430000', '湘潭市,湖南省', null);
INSERT INTO `area` VALUES ('86430304', '岳塘区', '411100', '86430300', '86430000', '86430300,86430000', '湘潭市,湖南省', null);
INSERT INTO `area` VALUES ('86430321', '湘潭县', '411200', '86430300', '86430000', '86430300,86430000', '湘潭市,湖南省', null);
INSERT INTO `area` VALUES ('86430381', '湘乡市', '411400', '86430300', '86430000', '86430300,86430000', '湘潭市,湖南省', null);
INSERT INTO `area` VALUES ('86430382', '韶山市', '411300', '86430300', '86430000', '86430300,86430000', '湘潭市,湖南省', null);
INSERT INTO `area` VALUES ('86430400', '衡阳市', '421000', '86430000', '86430000', '86430000', '湖南省', '86430482,86430481,86430426,86430424,86430423,86430422,86430421,86430412,86430408,86430407,86430406,86430405,86430401');
INSERT INTO `area` VALUES ('86430401', '市辖区', '421000', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430405', '珠晖区', '421000', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430406', '雁峰区', '421000', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430407', '石鼓区', '421000', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430408', '蒸湘区', '421000', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430412', '南岳区', '421000', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430421', '衡阳县', '421200', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430422', '衡南县', '421100', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430423', '衡山县', '421300', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430424', '衡东县', '421400', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430426', '祁东县', '421600', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430481', '耒阳市', '421800', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430482', '常宁市', '421500', '86430400', '86430000', '86430400,86430000', '衡阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430500', '邵阳市', '422000', '86430000', '86430000', '86430000', '湖南省', '86430581,86430529,86430528,86430527,86430525,86430524,86430523,86430522,86430521,86430511,86430503,86430502,86430501');
INSERT INTO `area` VALUES ('86430501', '市辖区', '422000', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430502', '双清区', '422000', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430503', '大祥区', '422000', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430511', '北塔区', '422000', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430521', '邵东县', '422800', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430522', '新邵县', '422900', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430523', '邵阳县', '422100', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430524', '隆回县', '422200', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430525', '洞口县', '422300', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430527', '绥宁县', '422600', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430528', '新宁县', '422700', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430529', '城步苗族自治县', '422500', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430581', '武冈市', '422400', '86430500', '86430000', '86430500,86430000', '邵阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430600', '岳阳市', '414000', '86430000', '86430000', '86430000', '湖南省', '86430682,86430681,86430626,86430624,86430623,86430621,86430611,86430603,86430602,86430601');
INSERT INTO `area` VALUES ('86430601', '市辖区', '414000', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430602', '岳阳楼区', '414000', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430603', '云溪区', '414000', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430611', '君山区', '414000', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430621', '岳阳县', '414100', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430623', '华容县', '414200', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430624', '湘阴县', '410500', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430626', '平江县', '410400', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430681', '汨罗市', '414400', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430682', '临湘市', '414300', '86430600', '86430000', '86430600,86430000', '岳阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430700', '常德市', '415000', '86430000', '86430000', '86430000', '湖南省', '86430781,86430726,86430725,86430724,86430723,86430722,86430721,86430703,86430702,86430701');
INSERT INTO `area` VALUES ('86430701', '市辖区', '415000', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430702', '武陵区', '415000', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430703', '鼎城区', '415100', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430721', '安乡县', '415600', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430722', '汉寿县', '415900', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430723', '澧　县', '415500', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430724', '临澧县', '415200', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430725', '桃源县', '415700', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430726', '石门县', '415300', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430781', '津市市', '415400', '86430700', '86430000', '86430700,86430000', '常德市,湖南省', null);
INSERT INTO `area` VALUES ('86430800', '张家界市', '427000', '86430000', '86430000', '86430000', '湖南省', '86430822,86430821,86430811,86430802,86430801');
INSERT INTO `area` VALUES ('86430801', '市辖区', '427000', '86430800', '86430000', '86430800,86430000', '张家界市,湖南省', null);
INSERT INTO `area` VALUES ('86430802', '永定区', '427000', '86430800', '86430000', '86430800,86430000', '张家界市,湖南省', null);
INSERT INTO `area` VALUES ('86430811', '武陵源区', '427400', '86430800', '86430000', '86430800,86430000', '张家界市,湖南省', null);
INSERT INTO `area` VALUES ('86430821', '慈利县', '427200', '86430800', '86430000', '86430800,86430000', '张家界市,湖南省', null);
INSERT INTO `area` VALUES ('86430822', '桑植县', '427100', '86430800', '86430000', '86430800,86430000', '张家界市,湖南省', null);
INSERT INTO `area` VALUES ('86430900', '益阳市', '413000', '86430000', '86430000', '86430000', '湖南省', '86430981,86430923,86430922,86430921,86430903,86430902,86430901');
INSERT INTO `area` VALUES ('86430901', '市辖区', '413000', '86430900', '86430000', '86430900,86430000', '益阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430902', '资阳区', '413000', '86430900', '86430000', '86430900,86430000', '益阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430903', '赫山区', '413000', '86430900', '86430000', '86430900,86430000', '益阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430921', '南　县', '413200', '86430900', '86430000', '86430900,86430000', '益阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430922', '桃江县', '413400', '86430900', '86430000', '86430900,86430000', '益阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430923', '安化县', '413500', '86430900', '86430000', '86430900,86430000', '益阳市,湖南省', null);
INSERT INTO `area` VALUES ('86430981', '沅江市', '413100', '86430900', '86430000', '86430900,86430000', '益阳市,湖南省', null);
INSERT INTO `area` VALUES ('86431000', '郴州市', '423000', '86430000', '86430000', '86430000', '湖南省', '86431081,86431028,86431027,86431026,86431025,86431024,86431023,86431022,86431021,86431003,86431002,86431001');
INSERT INTO `area` VALUES ('86431001', '市辖区', '423000', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431002', '北湖区', '423000', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431003', '苏仙区', '423000', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431021', '桂阳县', '424400', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431022', '宜章县', '424200', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431023', '永兴县', '423300', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431024', '嘉禾县', '424500', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431025', '临武县', '424300', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431026', '汝城县', '424100', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431027', '桂东县', '423500', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431028', '安仁县', '423600', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431081', '资兴市', '423400', '86431000', '86430000', '86431000,86430000', '郴州市,湖南省', null);
INSERT INTO `area` VALUES ('86431100', '永州市', '425000', '86430000', '86430000', '86430000', '湖南省', '86431129,86431128,86431127,86431126,86431125,86431124,86431123,86431122,86431121,86431103,86431102,86431101');
INSERT INTO `area` VALUES ('86431101', '市辖区', '425000', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431102', '芝山区', '425000', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431103', '冷水滩区', '425000', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431121', '祁阳县', '421700', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431122', '东安县', '425900', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431123', '双牌县', '425200', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431124', '道　县', '425300', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431125', '江永县', '425400', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431126', '宁远县', '425600', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431127', '蓝山县', '425800', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431128', '新田县', '425700', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431129', '江华瑶族自治县', '425500', '86431100', '86430000', '86431100,86430000', '永州市,湖南省', null);
INSERT INTO `area` VALUES ('86431200', '怀化市', '418000', '86430000', '86430000', '86430000', '湖南省', '86431281,86431230,86431229,86431228,86431227,86431226,86431225,86431224,86431223,86431222,86431221,86431202,86431201');
INSERT INTO `area` VALUES ('86431201', '市辖区', '418000', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431202', '鹤城区', '418000', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431221', '中方县', '418000', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431222', '沅陵县', '419600', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431223', '辰溪县', '419500', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431224', '溆浦县', '419300', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431225', '会同县', '418300', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431226', '麻阳苗族自治县', '419400', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431227', '新晃侗族自治县', '419200', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431228', '芷江侗族自治县', '419100', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431229', '靖州苗族侗族自治县', '418400', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431230', '通道侗族自治县', '418500', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431281', '洪江市', '418200', '86431200', '86430000', '86431200,86430000', '怀化市,湖南省', null);
INSERT INTO `area` VALUES ('86431300', '娄底市', '417000', '86430000', '86430000', '86430000', '湖南省', '86431382,86431381,86431322,86431321,86431302,86431301');
INSERT INTO `area` VALUES ('86431301', '市辖区', '417000', '86431300', '86430000', '86431300,86430000', '娄底市,湖南省', null);
INSERT INTO `area` VALUES ('86431302', '娄星区', '417000', '86431300', '86430000', '86431300,86430000', '娄底市,湖南省', null);
INSERT INTO `area` VALUES ('86431321', '双峰县', '417700', '86431300', '86430000', '86431300,86430000', '娄底市,湖南省', null);
INSERT INTO `area` VALUES ('86431322', '新化县', '417600', '86431300', '86430000', '86431300,86430000', '娄底市,湖南省', null);
INSERT INTO `area` VALUES ('86431381', '冷水江市', '417500', '86431300', '86430000', '86431300,86430000', '娄底市,湖南省', null);
INSERT INTO `area` VALUES ('86431382', '涟源市', '417100', '86431300', '86430000', '86431300,86430000', '娄底市,湖南省', null);
INSERT INTO `area` VALUES ('86433100', '湘西土家族苗族自治州', '416000', '86430000', '86430000', '86430000', '湖南省', '86433130,86433127,86433126,86433125,86433124,86433123,86433122,86433101');
INSERT INTO `area` VALUES ('86433101', '吉首市', '416000', '86433100', '86430000', '86433100,86430000', '湘西土家族苗族自治州,湖南省', null);
INSERT INTO `area` VALUES ('86433122', '泸溪县', '416100', '86433100', '86430000', '86433100,86430000', '湘西土家族苗族自治州,湖南省', null);
INSERT INTO `area` VALUES ('86433123', '凤凰县', '416200', '86433100', '86430000', '86433100,86430000', '湘西土家族苗族自治州,湖南省', null);
INSERT INTO `area` VALUES ('86433124', '花垣县', '416400', '86433100', '86430000', '86433100,86430000', '湘西土家族苗族自治州,湖南省', null);
INSERT INTO `area` VALUES ('86433125', '保靖县', '416500', '86433100', '86430000', '86433100,86430000', '湘西土家族苗族自治州,湖南省', null);
INSERT INTO `area` VALUES ('86433126', '古丈县', '416300', '86433100', '86430000', '86433100,86430000', '湘西土家族苗族自治州,湖南省', null);
INSERT INTO `area` VALUES ('86433127', '永顺县', '416700', '86433100', '86430000', '86433100,86430000', '湘西土家族苗族自治州,湖南省', null);
INSERT INTO `area` VALUES ('86433130', '龙山县', '416800', '86433100', '86430000', '86433100,86430000', '湘西土家族苗族自治州,湖南省', null);
INSERT INTO `area` VALUES ('86440000', '广东省', null, '0', null, null, null, '86445300,86445200,86445100,86442000,86441900,86441800,86441700,86441600,86441500,86441400,86441300,86441200,86440900,86440800,86440700,86440600,86440500,86440400,86440300,86440200,86440100');
INSERT INTO `area` VALUES ('86440100', '广州市', '510000', '86440000', '86440000', '86440000', '广东省', '86440184,86440183,86440114,86440113,86440112,86440111,86440107,86440106,86440105,86440104,86440103,86440102,86440101');
INSERT INTO `area` VALUES ('86440101', '市辖区', '510000', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440102', '东山区', '510000', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440103', '荔湾区', '510000', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440104', '越秀区', '510000', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440105', '海珠区', '510000', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440106', '天河区', '510000', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440107', '芳村区', '510000', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440111', '白云区', '510000', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440112', '黄埔区', '510700', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440113', '番禺区', '511400', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440114', '花都区', '510800', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440183', '增城市', '511300', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440184', '从化市', '510900', '86440100', '86440000', '86440100,86440000', '广州市,广东省', null);
INSERT INTO `area` VALUES ('86440200', '韶关市', '512000', '86440000', '86440000', '86440000', '广东省', '86440282,86440281,86440233,86440232,86440229,86440224,86440222,86440205,86440204,86440203,86440201');
INSERT INTO `area` VALUES ('86440201', '市辖区', '512000', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440203', '武江区', '512000', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440204', '浈江区', '512000', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440205', '曲江区', '512100', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440222', '始兴县', '512500', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440224', '仁化县', '512300', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440229', '翁源县', '512600', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440232', '乳源瑶族自治县', '512600', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440233', '新丰县', '511100', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440281', '乐昌市', '512200', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440282', '南雄市', '512400', '86440200', '86440000', '86440200,86440000', '韶关市,广东省', null);
INSERT INTO `area` VALUES ('86440300', '深圳市', '518000', '86440000', '86440000', '86440000', '广东省', '86440308,86440307,86440306,86440305,86440304,86440303,86440301');
INSERT INTO `area` VALUES ('86440301', '市辖区', '518000', '86440300', '86440000', '86440300,86440000', '深圳市,广东省', null);
INSERT INTO `area` VALUES ('86440303', '罗湖区', '518000', '86440300', '86440000', '86440300,86440000', '深圳市,广东省', null);
INSERT INTO `area` VALUES ('86440304', '福田区', '518000', '86440300', '86440000', '86440300,86440000', '深圳市,广东省', null);
INSERT INTO `area` VALUES ('86440305', '南山区', '518000', '86440300', '86440000', '86440300,86440000', '深圳市,广东省', null);
INSERT INTO `area` VALUES ('86440306', '宝安区', '518100', '86440300', '86440000', '86440300,86440000', '深圳市,广东省', null);
INSERT INTO `area` VALUES ('86440307', '龙岗区', '518100', '86440300', '86440000', '86440300,86440000', '深圳市,广东省', null);
INSERT INTO `area` VALUES ('86440308', '盐田区', '518000', '86440300', '86440000', '86440300,86440000', '深圳市,广东省', null);
INSERT INTO `area` VALUES ('86440400', '珠海市', '519000', '86440000', '86440000', '86440000', '广东省', '86440404,86440403,86440402,86440401');
INSERT INTO `area` VALUES ('86440401', '市辖区', '519000', '86440400', '86440000', '86440400,86440000', '珠海市,广东省', null);
INSERT INTO `area` VALUES ('86440402', '香洲区', '519000', '86440400', '86440000', '86440400,86440000', '珠海市,广东省', null);
INSERT INTO `area` VALUES ('86440403', '斗门区', '519100', '86440400', '86440000', '86440400,86440000', '珠海市,广东省', null);
INSERT INTO `area` VALUES ('86440404', '金湾区', '519090', '86440400', '86440000', '86440400,86440000', '珠海市,广东省', null);
INSERT INTO `area` VALUES ('86440500', '汕头市', '515000', '86440000', '86440000', '86440000', '广东省', '86440523,86440515,86440514,86440513,86440512,86440511,86440507,86440501');
INSERT INTO `area` VALUES ('86440501', '市辖区', '515000', '86440500', '86440000', '86440500,86440000', '汕头市,广东省', null);
INSERT INTO `area` VALUES ('86440507', '龙湖区', '515000', '86440500', '86440000', '86440500,86440000', '汕头市,广东省', null);
INSERT INTO `area` VALUES ('86440511', '金平区', '515000', '86440500', '86440000', '86440500,86440000', '汕头市,广东省', null);
INSERT INTO `area` VALUES ('86440512', '濠江区', '515000', '86440500', '86440000', '86440500,86440000', '汕头市,广东省', null);
INSERT INTO `area` VALUES ('86440513', '潮阳区', '515100', '86440500', '86440000', '86440500,86440000', '汕头市,广东省', null);
INSERT INTO `area` VALUES ('86440514', '潮南区', '515100', '86440500', '86440000', '86440500,86440000', '汕头市,广东省', null);
INSERT INTO `area` VALUES ('86440515', '澄海区', '515800', '86440500', '86440000', '86440500,86440000', '汕头市,广东省', null);
INSERT INTO `area` VALUES ('86440523', '南澳县', '515900', '86440500', '86440000', '86440500,86440000', '汕头市,广东省', null);
INSERT INTO `area` VALUES ('86440600', '佛山市', '528000', '86440000', '86440000', '86440000', '广东省', '86440608,86440607,86440606,86440605,86440604,86440601');
INSERT INTO `area` VALUES ('86440601', '市辖区', '528000', '86440600', '86440000', '86440600,86440000', '佛山市,广东省', null);
INSERT INTO `area` VALUES ('86440604', '禅城区', '528000', '86440600', '86440000', '86440600,86440000', '佛山市,广东省', null);
INSERT INTO `area` VALUES ('86440605', '南海区', '528200', '86440600', '86440000', '86440600,86440000', '佛山市,广东省', null);
INSERT INTO `area` VALUES ('86440606', '顺德区', '528000', '86440600', '86440000', '86440600,86440000', '佛山市,广东省', null);
INSERT INTO `area` VALUES ('86440607', '三水区', '528100', '86440600', '86440000', '86440600,86440000', '佛山市,广东省', null);
INSERT INTO `area` VALUES ('86440608', '高明区', '528500', '86440600', '86440000', '86440600,86440000', '佛山市,广东省', null);
INSERT INTO `area` VALUES ('86440700', '江门市', '529000', '86440000', '86440000', '86440000', '广东省', '86440785,86440784,86440783,86440781,86440705,86440704,86440703,86440701');
INSERT INTO `area` VALUES ('86440701', '市辖区', '529000', '86440700', '86440000', '86440700,86440000', '江门市,广东省', null);
INSERT INTO `area` VALUES ('86440703', '蓬江区', '529000', '86440700', '86440000', '86440700,86440000', '江门市,广东省', null);
INSERT INTO `area` VALUES ('86440704', '江海区', '529000', '86440700', '86440000', '86440700,86440000', '江门市,广东省', null);
INSERT INTO `area` VALUES ('86440705', '新会区', '529100', '86440700', '86440000', '86440700,86440000', '江门市,广东省', null);
INSERT INTO `area` VALUES ('86440781', '台山市', '529200', '86440700', '86440000', '86440700,86440000', '江门市,广东省', null);
INSERT INTO `area` VALUES ('86440783', '开平市', '529300', '86440700', '86440000', '86440700,86440000', '江门市,广东省', null);
INSERT INTO `area` VALUES ('86440784', '鹤山市', '529700', '86440700', '86440000', '86440700,86440000', '江门市,广东省', null);
INSERT INTO `area` VALUES ('86440785', '恩平市', '529400', '86440700', '86440000', '86440700,86440000', '江门市,广东省', null);
INSERT INTO `area` VALUES ('86440800', '湛江市', '524000', '86440000', '86440000', '86440000', '广东省', '86440883,86440882,86440881,86440825,86440823,86440811,86440804,86440803,86440802,86440801');
INSERT INTO `area` VALUES ('86440801', '市辖区', '524000', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440802', '赤坎区', '524000', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440803', '霞山区', '524000', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440804', '坡头区', '524000', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440811', '麻章区', '524000', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440823', '遂溪县', '524300', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440825', '徐闻县', '524100', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440881', '廉江市', '524400', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440882', '雷州市', '524200', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440883', '吴川市', '524500', '86440800', '86440000', '86440800,86440000', '湛江市,广东省', null);
INSERT INTO `area` VALUES ('86440900', '茂名市', '525000', '86440000', '86440000', '86440000', '广东省', '86440983,86440982,86440981,86440923,86440903,86440902,86440901');
INSERT INTO `area` VALUES ('86440901', '市辖区', '525000', '86440900', '86440000', '86440900,86440000', '茂名市,广东省', null);
INSERT INTO `area` VALUES ('86440902', '茂南区', '525000', '86440900', '86440000', '86440900,86440000', '茂名市,广东省', null);
INSERT INTO `area` VALUES ('86440903', '茂港区', '525000', '86440900', '86440000', '86440900,86440000', '茂名市,广东省', null);
INSERT INTO `area` VALUES ('86440923', '电白县', '525400', '86440900', '86440000', '86440900,86440000', '茂名市,广东省', null);
INSERT INTO `area` VALUES ('86440981', '高州市', '525200', '86440900', '86440000', '86440900,86440000', '茂名市,广东省', null);
INSERT INTO `area` VALUES ('86440982', '化州市', '525100', '86440900', '86440000', '86440900,86440000', '茂名市,广东省', null);
INSERT INTO `area` VALUES ('86440983', '信宜市', '525300', '86440900', '86440000', '86440900,86440000', '茂名市,广东省', null);
INSERT INTO `area` VALUES ('86441200', '肇庆市', '526000', '86440000', '86440000', '86440000', '广东省', '86441284,86441283,86441226,86441225,86441224,86441223,86441203,86441202,86441201');
INSERT INTO `area` VALUES ('86441201', '市辖区', '526000', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441202', '端州区', '526000', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441203', '鼎湖区', '526000', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441223', '广宁县', '526300', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441224', '怀集县', '526400', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441225', '封开县', '526500', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441226', '德庆县', '526600', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441283', '高要市', '526100', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441284', '四会市', '526200', '86441200', '86440000', '86441200,86440000', '肇庆市,广东省', null);
INSERT INTO `area` VALUES ('86441300', '惠州市', '516000', '86440000', '86440000', '86440000', '广东省', '86441324,86441323,86441322,86441303,86441302,86441301');
INSERT INTO `area` VALUES ('86441301', '市辖区', '516000', '86441300', '86440000', '86441300,86440000', '惠州市,广东省', null);
INSERT INTO `area` VALUES ('86441302', '惠城区', '516000', '86441300', '86440000', '86441300,86440000', '惠州市,广东省', null);
INSERT INTO `area` VALUES ('86441303', '惠阳区', '516200', '86441300', '86440000', '86441300,86440000', '惠州市,广东省', null);
INSERT INTO `area` VALUES ('86441322', '博罗县', '516100', '86441300', '86440000', '86441300,86440000', '惠州市,广东省', null);
INSERT INTO `area` VALUES ('86441323', '惠东县', '516300', '86441300', '86440000', '86441300,86440000', '惠州市,广东省', null);
INSERT INTO `area` VALUES ('86441324', '龙门县', '516800', '86441300', '86440000', '86441300,86440000', '惠州市,广东省', null);
INSERT INTO `area` VALUES ('86441400', '梅州市', '514000', '86440000', '86440000', '86440000', '广东省', '86441481,86441427,86441426,86441424,86441423,86441422,86441421,86441402,86441401');
INSERT INTO `area` VALUES ('86441401', '市辖区', '514000', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441402', '梅江区', '514000', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441421', '梅　县', '514700', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441422', '大埔县', '514200', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441423', '丰顺县', '514300', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441424', '五华县', '514400', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441426', '平远县', '514600', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441427', '蕉岭县', '514100', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441481', '兴宁市', '514500', '86441400', '86440000', '86441400,86440000', '梅州市,广东省', null);
INSERT INTO `area` VALUES ('86441500', '汕尾市', '516600', '86440000', '86440000', '86440000', '广东省', '86441581,86441523,86441521,86441502,86441501');
INSERT INTO `area` VALUES ('86441501', '市辖区', '516600', '86441500', '86440000', '86441500,86440000', '汕尾市,广东省', null);
INSERT INTO `area` VALUES ('86441502', '城　区', '516600', '86441500', '86440000', '86441500,86440000', '汕尾市,广东省', null);
INSERT INTO `area` VALUES ('86441521', '海丰县', '516400', '86441500', '86440000', '86441500,86440000', '汕尾市,广东省', null);
INSERT INTO `area` VALUES ('86441523', '陆河县', '516700', '86441500', '86440000', '86441500,86440000', '汕尾市,广东省', null);
INSERT INTO `area` VALUES ('86441581', '陆丰市', '516500', '86441500', '86440000', '86441500,86440000', '汕尾市,广东省', null);
INSERT INTO `area` VALUES ('86441600', '河源市', '517000', '86440000', '86440000', '86440000', '广东省', '86441625,86441624,86441623,86441622,86441621,86441602,86441601');
INSERT INTO `area` VALUES ('86441601', '市辖区', '517000', '86441600', '86440000', '86441600,86440000', '河源市,广东省', null);
INSERT INTO `area` VALUES ('86441602', '源城区', '517000', '86441600', '86440000', '86441600,86440000', '河源市,广东省', null);
INSERT INTO `area` VALUES ('86441621', '紫金县', '517400', '86441600', '86440000', '86441600,86440000', '河源市,广东省', null);
INSERT INTO `area` VALUES ('86441622', '龙川县', '517300', '86441600', '86440000', '86441600,86440000', '河源市,广东省', null);
INSERT INTO `area` VALUES ('86441623', '连平县', '517100', '86441600', '86440000', '86441600,86440000', '河源市,广东省', null);
INSERT INTO `area` VALUES ('86441624', '和平县', '517200', '86441600', '86440000', '86441600,86440000', '河源市,广东省', null);
INSERT INTO `area` VALUES ('86441625', '东源县', '517500', '86441600', '86440000', '86441600,86440000', '河源市,广东省', null);
INSERT INTO `area` VALUES ('86441700', '阳江市', '529500', '86440000', '86440000', '86440000', '广东省', '86441781,86441723,86441721,86441702,86441701');
INSERT INTO `area` VALUES ('86441701', '市辖区', '529500', '86441700', '86440000', '86441700,86440000', '阳江市,广东省', null);
INSERT INTO `area` VALUES ('86441702', '江城区', '529500', '86441700', '86440000', '86441700,86440000', '阳江市,广东省', null);
INSERT INTO `area` VALUES ('86441721', '阳西县', '529800', '86441700', '86440000', '86441700,86440000', '阳江市,广东省', null);
INSERT INTO `area` VALUES ('86441723', '阳东县', '529900', '86441700', '86440000', '86441700,86440000', '阳江市,广东省', null);
INSERT INTO `area` VALUES ('86441781', '阳春市', '529600', '86441700', '86440000', '86441700,86440000', '阳江市,广东省', null);
INSERT INTO `area` VALUES ('86441800', '清远市', '511500', '86440000', '86440000', '86440000', '广东省', '86441882,86441881,86441827,86441826,86441825,86441823,86441821,86441802,86441801');
INSERT INTO `area` VALUES ('86441801', '市辖区', '511500', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441802', '清城区', '511500', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441821', '佛冈县', '511600', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441823', '阳山县', '513100', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441825', '连山壮族瑶族自治县', '513200', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441826', '连南瑶族自治县', '513300', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441827', '清新县', '511800', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441881', '英德市', '513000', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441882', '连州市', '513400', '86441800', '86440000', '86441800,86440000', '清远市,广东省', null);
INSERT INTO `area` VALUES ('86441900', '东莞市', null, '86440000', '86440000', '86440000', '广东省', null);
INSERT INTO `area` VALUES ('86442000', '中山市', null, '86440000', '86440000', '86440000', '广东省', null);
INSERT INTO `area` VALUES ('86445100', '潮州市', '521000', '86440000', '86440000', '86440000', '广东省', '86445122,86445121,86445102,86445101');
INSERT INTO `area` VALUES ('86445101', '市辖区', '521000', '86445100', '86440000', '86445100,86440000', '潮州市,广东省', null);
INSERT INTO `area` VALUES ('86445102', '湘桥区', '521000', '86445100', '86440000', '86445100,86440000', '潮州市,广东省', null);
INSERT INTO `area` VALUES ('86445121', '潮安县', '515600', '86445100', '86440000', '86445100,86440000', '潮州市,广东省', null);
INSERT INTO `area` VALUES ('86445122', '饶平县', '515700', '86445100', '86440000', '86445100,86440000', '潮州市,广东省', null);
INSERT INTO `area` VALUES ('86445200', '揭阳市', '522000', '86440000', '86440000', '86440000', '广东省', '86445281,86445224,86445222,86445221,86445202,86445201');
INSERT INTO `area` VALUES ('86445201', '市辖区', '522000', '86445200', '86440000', '86445200,86440000', '揭阳市,广东省', null);
INSERT INTO `area` VALUES ('86445202', '榕城区', '522000', '86445200', '86440000', '86445200,86440000', '揭阳市,广东省', null);
INSERT INTO `area` VALUES ('86445221', '揭东县', '515500', '86445200', '86440000', '86445200,86440000', '揭阳市,广东省', null);
INSERT INTO `area` VALUES ('86445222', '揭西县', '515400', '86445200', '86440000', '86445200,86440000', '揭阳市,广东省', null);
INSERT INTO `area` VALUES ('86445224', '惠来县', '515200', '86445200', '86440000', '86445200,86440000', '揭阳市,广东省', null);
INSERT INTO `area` VALUES ('86445281', '普宁市', '515300', '86445200', '86440000', '86445200,86440000', '揭阳市,广东省', null);
INSERT INTO `area` VALUES ('86445300', '云浮市', '527300', '86440000', '86440000', '86440000', '广东省', '86445381,86445323,86445322,86445321,86445302,86445301');
INSERT INTO `area` VALUES ('86445301', '市辖区', '527300', '86445300', '86440000', '86445300,86440000', '云浮市,广东省', null);
INSERT INTO `area` VALUES ('86445302', '云城区', '527300', '86445300', '86440000', '86445300,86440000', '云浮市,广东省', null);
INSERT INTO `area` VALUES ('86445321', '新兴县', '527400', '86445300', '86440000', '86445300,86440000', '云浮市,广东省', null);
INSERT INTO `area` VALUES ('86445322', '郁南县', '527100', '86445300', '86440000', '86445300,86440000', '云浮市,广东省', null);
INSERT INTO `area` VALUES ('86445323', '云安县', '527500', '86445300', '86440000', '86445300,86440000', '云浮市,广东省', null);
INSERT INTO `area` VALUES ('86445381', '罗定市', '527200', '86445300', '86440000', '86445300,86440000', '云浮市,广东省', null);
INSERT INTO `area` VALUES ('86450000', '广西壮族自治区', null, '0', null, null, null, '86451400,86451300,86451200,86451100,86451000,86450900,86450800,86450700,86450600,86450500,86450400,86450300,86450200,86450100');
INSERT INTO `area` VALUES ('86450100', '南宁市', '530000', '86450000', '86450000', '86450000', '广西壮族自治区', '86450127,86450126,86450125,86450124,86450123,86450122,86450109,86450108,86450107,86450105,86450103,86450102,86450101');
INSERT INTO `area` VALUES ('86450101', '市辖区', '530000', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450102', '兴宁区', '530000', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450103', '青秀区', '530000', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450105', '江南区', '530000', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450107', '西乡塘区', '530000', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450108', '良庆区', '530200', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450109', '邕宁区', '530200', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450122', '武鸣县', '530100', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450123', '隆安县', '532700', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450124', '马山县', '530600', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450125', '上林县', '530500', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450126', '宾阳县', '530400', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450127', '横　县', '530300', '86450100', '86450000', '86450100,86450000', '南宁市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450200', '柳州市', '545000', '86450000', '86450000', '86450000', '广西壮族自治区', '86450226,86450225,86450224,86450223,86450222,86450221,86450205,86450204,86450203,86450202,86450201');
INSERT INTO `area` VALUES ('86450201', '市辖区', '545000', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450202', '城中区', '545000', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450203', '鱼峰区', '545000', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450204', '柳南区', '545000', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450205', '柳北区', '545000', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450221', '柳江县', '545100', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450222', '柳城县', '545200', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450223', '鹿寨县', '545600', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450224', '融安县', '545400', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450225', '融水苗族自治县', '545300', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450226', '三江侗族自治县', '545500', '86450200', '86450000', '86450200,86450000', '柳州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450300', '桂林市', '541000', '86450000', '86450000', '86450000', '广西壮族自治区', '86450332,86450331,86450330,86450329,86450328,86450327,86450326,86450325,86450324,86450323,86450322,86450321,86450311,86450305,86450304,86450303,86450302,86450301');
INSERT INTO `area` VALUES ('86450301', '市辖区', '541000', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450302', '秀峰区', '541000', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450303', '叠彩区', '541000', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450304', '象山区', '541000', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450305', '七星区', '541000', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450311', '雁山区', '541000', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450321', '阳朔县', '541900', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450322', '临桂县', '541100', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450323', '灵川县', '541200', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450324', '全州县', '541500', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450325', '兴安县', '541300', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450326', '永福县', '541800', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450327', '灌阳县', '541600', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450328', '龙胜各族自治县', '541700', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450329', '资源县', '541400', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450330', '平乐县', '542400', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450331', '荔蒲县', '546600', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450332', '恭城瑶族自治县', '542500', '86450300', '86450000', '86450300,86450000', '桂林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450400', '梧州市', '543000', '86450000', '86450000', '86450000', '广西壮族自治区', '86450481,86450423,86450422,86450421,86450405,86450404,86450403,86450401');
INSERT INTO `area` VALUES ('86450401', '市辖区', '543000', '86450400', '86450000', '86450400,86450000', '梧州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450403', '万秀区', '543000', '86450400', '86450000', '86450400,86450000', '梧州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450404', '蝶山区', '543000', '86450400', '86450000', '86450400,86450000', '梧州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450405', '长洲区', '543000', '86450400', '86450000', '86450400,86450000', '梧州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450421', '苍梧县', '543100', '86450400', '86450000', '86450400,86450000', '梧州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450422', '藤　县', '543300', '86450400', '86450000', '86450400,86450000', '梧州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450423', '蒙山县', '546700', '86450400', '86450000', '86450400,86450000', '梧州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450481', '岑溪市', '543200', '86450400', '86450000', '86450400,86450000', '梧州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450500', '北海市', '536000', '86450000', '86450000', '86450000', '广西壮族自治区', '86450521,86450512,86450503,86450502,86450501');
INSERT INTO `area` VALUES ('86450501', '市辖区', '536000', '86450500', '86450000', '86450500,86450000', '北海市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450502', '海城区', '536000', '86450500', '86450000', '86450500,86450000', '北海市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450503', '银海区', '536000', '86450500', '86450000', '86450500,86450000', '北海市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450512', '铁山港区', '536000', '86450500', '86450000', '86450500,86450000', '北海市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450521', '合浦县', '536100', '86450500', '86450000', '86450500,86450000', '北海市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450600', '防城港市', '538000', '86450000', '86450000', '86450000', '广西壮族自治区', '86450681,86450621,86450603,86450602,86450601');
INSERT INTO `area` VALUES ('86450601', '市辖区', '538000', '86450600', '86450000', '86450600,86450000', '防城港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450602', '港口区', '538000', '86450600', '86450000', '86450600,86450000', '防城港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450603', '防城区', '538000', '86450600', '86450000', '86450600,86450000', '防城港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450621', '上思县', '535500', '86450600', '86450000', '86450600,86450000', '防城港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450681', '东兴市', '538100', '86450600', '86450000', '86450600,86450000', '防城港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450700', '钦州市', '535000', '86450000', '86450000', '86450000', '广西壮族自治区', '86450722,86450721,86450703,86450702,86450701');
INSERT INTO `area` VALUES ('86450701', '市辖区', '535000', '86450700', '86450000', '86450700,86450000', '钦州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450702', '钦南区', '535000', '86450700', '86450000', '86450700,86450000', '钦州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450703', '钦北区', '535000', '86450700', '86450000', '86450700,86450000', '钦州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450721', '灵山县', '535400', '86450700', '86450000', '86450700,86450000', '钦州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450722', '浦北县', '535300', '86450700', '86450000', '86450700,86450000', '钦州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450800', '贵港市', '537100', '86450000', '86450000', '86450000', '广西壮族自治区', '86450881,86450821,86450804,86450803,86450802,86450801');
INSERT INTO `area` VALUES ('86450801', '市辖区', '537100', '86450800', '86450000', '86450800,86450000', '贵港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450802', '港北区', '537100', '86450800', '86450000', '86450800,86450000', '贵港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450803', '港南区', '537100', '86450800', '86450000', '86450800,86450000', '贵港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450804', '覃塘区', '537100', '86450800', '86450000', '86450800,86450000', '贵港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450821', '平南县', '537300', '86450800', '86450000', '86450800,86450000', '贵港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450881', '桂平市', '537200', '86450800', '86450000', '86450800,86450000', '贵港市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450900', '玉林市', '537000', '86450000', '86450000', '86450000', '广西壮族自治区', '86450981,86450924,86450923,86450922,86450921,86450902,86450901');
INSERT INTO `area` VALUES ('86450901', '市辖区', '537000', '86450900', '86450000', '86450900,86450000', '玉林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450902', '玉州区', '537000', '86450900', '86450000', '86450900,86450000', '玉林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450921', '容　县', '537500', '86450900', '86450000', '86450900,86450000', '玉林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450922', '陆川县', '537700', '86450900', '86450000', '86450900,86450000', '玉林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450923', '博白县', '537600', '86450900', '86450000', '86450900,86450000', '玉林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450924', '兴业县', '537800', '86450900', '86450000', '86450900,86450000', '玉林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86450981', '北流市', '537400', '86450900', '86450000', '86450900,86450000', '玉林市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451000', '百色市', '533000', '86450000', '86450000', '86450000', '广西壮族自治区', '86451031,86451030,86451029,86451028,86451027,86451026,86451025,86451024,86451023,86451022,86451021,86451002,86451001');
INSERT INTO `area` VALUES ('86451001', '市辖区', '533000', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451002', '右江区', '533000', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451021', '田阳县', '533600', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451022', '田东县', '531500', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451023', '平果县', '531400', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451024', '德保县', '533700', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451025', '靖西县', '533800', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451026', '那坡县', '533900', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451027', '凌云县', '533100', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451028', '乐业县', '533200', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451029', '田林县', '533300', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451030', '西林县', '533500', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451031', '隆林各族自治县', '533500', '86451000', '86450000', '86451000,86450000', '百色市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451100', '贺州市', '542800', '86450000', '86450000', '86450000', '广西壮族自治区', '86451123,86451122,86451121,86451102,86451101');
INSERT INTO `area` VALUES ('86451101', '市辖区', '542800', '86451100', '86450000', '86451100,86450000', '贺州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451102', '八步区', '552106', '86451100', '86450000', '86451100,86450000', '贺州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451121', '昭平县', '546800', '86451100', '86450000', '86451100,86450000', '贺州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451122', '钟山县', '542600', '86451100', '86450000', '86451100,86450000', '贺州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451123', '富川瑶族自治县', '542700', '86451100', '86450000', '86451100,86450000', '贺州市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451200', '河池市', '547000', '86450000', '86450000', '86450000', '广西壮族自治区', '86451281,86451229,86451228,86451227,86451226,86451225,86451224,86451223,86451222,86451221,86451202,86451201');
INSERT INTO `area` VALUES ('86451201', '市辖区', '547000', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451202', '金城江区', '547000', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451221', '南丹县', '547200', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451222', '天峨县', '547300', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451223', '凤山县', '547600', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451224', '东兰县', '547400', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451225', '罗城仫佬族自治县', '546400', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451226', '环江毛南族自治县', '547100', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451227', '巴马瑶族自治县', '547500', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451228', '都安瑶族自治县', '530700', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451229', '大化瑶族自治县', '530800', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451281', '宜州市', '546300', '86451200', '86450000', '86451200,86450000', '河池市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451300', '来宾市', '546100', '86450000', '86450000', '86450000', '广西壮族自治区', '86451381,86451324,86451323,86451322,86451321,86451302,86451301');
INSERT INTO `area` VALUES ('86451301', '市辖区', '546100', '86451300', '86450000', '86451300,86450000', '来宾市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451302', '兴宾区', '546100', '86451300', '86450000', '86451300,86450000', '来宾市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451321', '忻城县', '546200', '86451300', '86450000', '86451300,86450000', '来宾市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451322', '象州县', '545800', '86451300', '86450000', '86451300,86450000', '来宾市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451323', '武宣县', '545900', '86451300', '86450000', '86451300,86450000', '来宾市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451324', '金秀瑶族自治县', '545700', '86451300', '86450000', '86451300,86450000', '来宾市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451381', '合山市', '546500', '86451300', '86450000', '86451300,86450000', '来宾市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451400', '崇左市', '532200', '86450000', '86450000', '86450000', '广西壮族自治区', '86451481,86451425,86451424,86451423,86451422,86451421,86451402,86451401');
INSERT INTO `area` VALUES ('86451401', '市辖区', '532200', '86451400', '86450000', '86451400,86450000', '崇左市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451402', '江洲区', '532200', '86451400', '86450000', '86451400,86450000', '崇左市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451421', '扶绥县', '532100', '86451400', '86450000', '86451400,86450000', '崇左市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451422', '宁明县', '532500', '86451400', '86450000', '86451400,86450000', '崇左市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451423', '龙州县', '532400', '86451400', '86450000', '86451400,86450000', '崇左市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451424', '大新县', '532300', '86451400', '86450000', '86451400,86450000', '崇左市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451425', '天等县', '532800', '86451400', '86450000', '86451400,86450000', '崇左市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86451481', '凭祥市', '532600', '86451400', '86450000', '86451400,86450000', '崇左市,广西壮族自治区', null);
INSERT INTO `area` VALUES ('86460000', '海南省', null, '0', null, null, null, '86469000,86460200,86460100');
INSERT INTO `area` VALUES ('86460100', '海口市', '570100', '86460000', '86460000', '86460000', '海南省', '86460108,86460107,86460106,86460105,86460101');
INSERT INTO `area` VALUES ('86460101', '市辖区', '570100', '86460100', '86460000', '86460100,86460000', '海口市,海南省', null);
INSERT INTO `area` VALUES ('86460105', '秀英区', '570100', '86460100', '86460000', '86460100,86460000', '海口市,海南省', null);
INSERT INTO `area` VALUES ('86460106', '龙华区', '570100', '86460100', '86460000', '86460100,86460000', '海口市,海南省', null);
INSERT INTO `area` VALUES ('86460107', '琼山区', '571100', '86460100', '86460000', '86460100,86460000', '海口市,海南省', null);
INSERT INTO `area` VALUES ('86460108', '美兰区', '570100', '86460100', '86460000', '86460100,86460000', '海口市,海南省', null);
INSERT INTO `area` VALUES ('86460200', '三亚市', '572000', '86460000', '86460000', '86460000', '海南省', '86460201');
INSERT INTO `area` VALUES ('86460201', '市辖区', '572000', '86460200', '86460000', '86460200,86460000', '三亚市,海南省', null);
INSERT INTO `area` VALUES ('86469000', '省直辖县级行政单位', '572200', '86460000', '86460000', '86460000', '海南省', '86469039,86469038,86469037,86469036,86469035,86469034,86469033,86469031,86469030,86469028,86469027,86469026,86469025,86469007,86469006,86469005,86469003,86469002,86469001');
INSERT INTO `area` VALUES ('86469001', '五指山市', '572200', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469002', '琼海市', '571400', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469003', '儋州市', '571700', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469005', '文昌市', '571300', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469006', '万宁市', '571500', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469007', '东方市', '572600', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469025', '定安县', '571200', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469026', '屯昌县', '571600', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469027', '澄迈县', '571900', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469028', '临高县', '571800', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469030', '白沙黎族自治县', '572800', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469031', '昌江黎族自治县', '572700', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469033', '乐东黎族自治县', '572500', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469034', '陵水黎族自治县', '572400', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469035', '保亭黎族苗族自治县', '572300', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469036', '琼中黎族苗族自治县', '572900', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469037', '西沙群岛', '572000', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469038', '南沙群岛', '572000', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86469039', '中沙群岛的岛礁及其海域', '572000', '86469000', '86460000', '86469000,86460000', '省直辖县级行政单位,海南省', null);
INSERT INTO `area` VALUES ('86500000', '重庆市', '404100', '0', null, null, null, '86500300,86500200,86500100');
INSERT INTO `area` VALUES ('86500100', '市辖区', '404100', '86500000', '86500000', '86500000', '重庆市', '86500115,86500114,86500113,86500112,86500111,86500110,86500109,86500108,86500107,86500106,86500105,86500104,86500103,86500102,86500101');
INSERT INTO `area` VALUES ('86500101', '万州区', '404100', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500102', '涪陵区', '408000', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500103', '渝中区', '400000', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500104', '大渡口区', '400000', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500105', '江北区', '400000', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500106', '沙坪坝区', '400000', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500107', '九龙坡区', '400000', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500108', '南岸区', '400000', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500109', '北碚区', '400700', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500110', '万盛区', '400800', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500111', '双桥区', '400900', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500112', '渝北区', '401120', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500113', '巴南区', '401320', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500114', '黔江区', '409000', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500115', '长寿区', '401220', '86500100', '86500000', '86500100,86500000', '市辖区,重庆市', null);
INSERT INTO `area` VALUES ('86500200', '县', '401420', '86500000', '86500000', '86500000', '重庆市', '86500243,86500242,86500241,86500240,86500238,86500237,86500236,86500235,86500234,86500233,86500232,86500231,86500230,86500229,86500228,86500227,86500226,86500225,86500224,86500223,86500222');
INSERT INTO `area` VALUES ('86500222', '綦江县', '401420', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500223', '潼南县', '402660', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500224', '铜梁县', '402560', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500225', '大足县', '402360', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500226', '荣昌县', '402460', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500227', '璧山县', '402760', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500228', '梁平县', '405200', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500229', '城口县', '405900', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500230', '丰都县', '408200', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500231', '垫江县', '408300', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500232', '武隆县', '408500', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500233', '忠　县', '404300', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500234', '开　县', '405400', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500235', '云阳县', '404500', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500236', '奉节县', '404600', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500237', '巫山县', '404700', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500238', '巫溪县', '405800', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500240', '石柱土家族自治县', '409100', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500241', '秀山土家族苗族自治县', '409900', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500242', '酉阳土家族苗族自治县', '409800', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500243', '彭水苗族土家族自治县', '409600', '86500200', '86500000', '86500200,86500000', '县,重庆市', null);
INSERT INTO `area` VALUES ('86500300', '市', '402260', '86500000', '86500000', '86500000', '重庆市', '86500384,86500383,86500382,86500381');
INSERT INTO `area` VALUES ('86500381', '江津市', '402260', '86500300', '86500000', '86500300,86500000', '市,重庆市', null);
INSERT INTO `area` VALUES ('86500382', '合川市', '401520', '86500300', '86500000', '86500300,86500000', '市,重庆市', null);
INSERT INTO `area` VALUES ('86500383', '永川市', '402160', '86500300', '86500000', '86500300,86500000', '市,重庆市', null);
INSERT INTO `area` VALUES ('86500384', '南川市', '408400', '86500300', '86500000', '86500300,86500000', '市,重庆市', null);
INSERT INTO `area` VALUES ('86510000', '四川省', null, '0', null, null, null, '86513400,86513300,86513200,86512000,86511900,86511800,86511700,86511600,86511500,86511400,86511300,86511100,86511000,86510900,86510800,86510700,86510600,86510500,86510400,86510300,86510100');
INSERT INTO `area` VALUES ('86510100', '成都市', '610000', '86510000', '86510000', '86510000', '四川省', '86510184,86510183,86510182,86510181,86510132,86510131,86510129,86510124,86510122,86510121,86510115,86510114,86510113,86510112,86510108,86510107,86510106,86510105,86510104,86510101');
INSERT INTO `area` VALUES ('86510101', '市辖区', '610000', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510104', '锦江区', '610000', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510105', '青羊区', '610000', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510106', '金牛区', '610000', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510107', '武侯区', '610000', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510108', '成华区', '610000', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510112', '龙泉驿区', '610100', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510113', '青白江区', '610300', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510114', '新都区', '610500', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510115', '温江县', '611100', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510121', '金堂县', '610400', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510122', '双流县', '610200', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510124', '郫　县', '611700', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510129', '大邑县', '611300', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510131', '蒲江县', '611600', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510132', '新津县', '611400', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510181', '都江堰市', '611800', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510182', '彭州市', '610000', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510183', '邛崃市', '611500', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510184', '崇州市', '611200', '86510100', '86510000', '86510100,86510000', '成都市,四川省', null);
INSERT INTO `area` VALUES ('86510300', '自贡市', '643000', '86510000', '86510000', '86510000', '四川省', '86510322,86510321,86510311,86510304,86510303,86510302,86510301');
INSERT INTO `area` VALUES ('86510301', '市辖区', '643000', '86510300', '86510000', '86510300,86510000', '自贡市,四川省', null);
INSERT INTO `area` VALUES ('86510302', '自流井区', '643000', '86510300', '86510000', '86510300,86510000', '自贡市,四川省', null);
INSERT INTO `area` VALUES ('86510303', '贡井区', '643020', '86510300', '86510000', '86510300,86510000', '自贡市,四川省', null);
INSERT INTO `area` VALUES ('86510304', '大安区', '643010', '86510300', '86510000', '86510300,86510000', '自贡市,四川省', null);
INSERT INTO `area` VALUES ('86510311', '沿滩区', '643030', '86510300', '86510000', '86510300,86510000', '自贡市,四川省', null);
INSERT INTO `area` VALUES ('86510321', '荣　县', '643100', '86510300', '86510000', '86510300,86510000', '自贡市,四川省', null);
INSERT INTO `area` VALUES ('86510322', '富顺县', '643200', '86510300', '86510000', '86510300,86510000', '自贡市,四川省', null);
INSERT INTO `area` VALUES ('86510400', '攀枝花市', '617000', '86510000', '86510000', '86510000', '四川省', '86510422,86510421,86510411,86510403,86510402,86510401');
INSERT INTO `area` VALUES ('86510401', '市辖区', '617000', '86510400', '86510000', '86510400,86510000', '攀枝花市,四川省', null);
INSERT INTO `area` VALUES ('86510402', '东　区', '617000', '86510400', '86510000', '86510400,86510000', '攀枝花市,四川省', null);
INSERT INTO `area` VALUES ('86510403', '西　区', '617000', '86510400', '86510000', '86510400,86510000', '攀枝花市,四川省', null);
INSERT INTO `area` VALUES ('86510411', '仁和区', '617000', '86510400', '86510000', '86510400,86510000', '攀枝花市,四川省', null);
INSERT INTO `area` VALUES ('86510421', '米易县', '617200', '86510400', '86510000', '86510400,86510000', '攀枝花市,四川省', null);
INSERT INTO `area` VALUES ('86510422', '盐边县', '617100', '86510400', '86510000', '86510400,86510000', '攀枝花市,四川省', null);
INSERT INTO `area` VALUES ('86510500', '泸州市', '646000', '86510000', '86510000', '86510000', '四川省', '86510525,86510524,86510522,86510521,86510504,86510503,86510502,86510501');
INSERT INTO `area` VALUES ('86510501', '市辖区', '646000', '86510500', '86510000', '86510500,86510000', '泸州市,四川省', null);
INSERT INTO `area` VALUES ('86510502', '江阳区', '646000', '86510500', '86510000', '86510500,86510000', '泸州市,四川省', null);
INSERT INTO `area` VALUES ('86510503', '纳溪区', '646300', '86510500', '86510000', '86510500,86510000', '泸州市,四川省', null);
INSERT INTO `area` VALUES ('86510504', '龙马潭区', '646000', '86510500', '86510000', '86510500,86510000', '泸州市,四川省', null);
INSERT INTO `area` VALUES ('86510521', '泸　县', '646100', '86510500', '86510000', '86510500,86510000', '泸州市,四川省', null);
INSERT INTO `area` VALUES ('86510522', '合江县', '646200', '86510500', '86510000', '86510500,86510000', '泸州市,四川省', null);
INSERT INTO `area` VALUES ('86510524', '叙永县', '646400', '86510500', '86510000', '86510500,86510000', '泸州市,四川省', null);
INSERT INTO `area` VALUES ('86510525', '古蔺县', '646500', '86510500', '86510000', '86510500,86510000', '泸州市,四川省', null);
INSERT INTO `area` VALUES ('86510600', '德阳市', '618000', '86510000', '86510000', '86510000', '四川省', '86510683,86510682,86510681,86510626,86510623,86510603,86510601');
INSERT INTO `area` VALUES ('86510601', '市辖区', '618000', '86510600', '86510000', '86510600,86510000', '德阳市,四川省', null);
INSERT INTO `area` VALUES ('86510603', '旌阳区', '618000', '86510600', '86510000', '86510600,86510000', '德阳市,四川省', null);
INSERT INTO `area` VALUES ('86510623', '中江县', '618300', '86510600', '86510000', '86510600,86510000', '德阳市,四川省', null);
INSERT INTO `area` VALUES ('86510626', '罗江县', '618500', '86510600', '86510000', '86510600,86510000', '德阳市,四川省', null);
INSERT INTO `area` VALUES ('86510681', '广汉市', '618300', '86510600', '86510000', '86510600,86510000', '德阳市,四川省', null);
INSERT INTO `area` VALUES ('86510682', '什邡市', '618400', '86510600', '86510000', '86510600,86510000', '德阳市,四川省', null);
INSERT INTO `area` VALUES ('86510683', '绵竹市', '618200', '86510600', '86510000', '86510600,86510000', '德阳市,四川省', null);
INSERT INTO `area` VALUES ('86510700', '绵阳市', '621000', '86510000', '86510000', '86510000', '四川省', '86510781,86510727,86510726,86510725,86510724,86510723,86510722,86510704,86510703,86510701');
INSERT INTO `area` VALUES ('86510701', '市辖区', '621000', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510703', '涪城区', '621000', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510704', '游仙区', '621000', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510722', '三台县', '621100', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510723', '盐亭县', '621600', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510724', '安　县', '622650', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510725', '梓潼县', '622150', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510726', '北川羌族自治县', '622550', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510727', '平武县', '622550', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510781', '江油市', '621700', '86510700', '86510000', '86510700,86510000', '绵阳市,四川省', null);
INSERT INTO `area` VALUES ('86510800', '广元市', '628000', '86510000', '86510000', '86510000', '四川省', '86510824,86510823,86510822,86510821,86510812,86510811,86510802,86510801');
INSERT INTO `area` VALUES ('86510801', '市辖区', '628000', '86510800', '86510000', '86510800,86510000', '广元市,四川省', null);
INSERT INTO `area` VALUES ('86510802', '市中区', '628000', '86510800', '86510000', '86510800,86510000', '广元市,四川省', null);
INSERT INTO `area` VALUES ('86510811', '元坝区', '628000', '86510800', '86510000', '86510800,86510000', '广元市,四川省', null);
INSERT INTO `area` VALUES ('86510812', '朝天区', '628000', '86510800', '86510000', '86510800,86510000', '广元市,四川省', null);
INSERT INTO `area` VALUES ('86510821', '旺苍县', '628200', '86510800', '86510000', '86510800,86510000', '广元市,四川省', null);
INSERT INTO `area` VALUES ('86510822', '青川县', '628100', '86510800', '86510000', '86510800,86510000', '广元市,四川省', null);
INSERT INTO `area` VALUES ('86510823', '剑阁县', '628300', '86510800', '86510000', '86510800,86510000', '广元市,四川省', null);
INSERT INTO `area` VALUES ('86510824', '苍溪县', '628400', '86510800', '86510000', '86510800,86510000', '广元市,四川省', null);
INSERT INTO `area` VALUES ('86510900', '遂宁市', '629000', '86510000', '86510000', '86510000', '四川省', '86510923,86510922,86510921,86510904,86510903,86510901');
INSERT INTO `area` VALUES ('86510901', '市辖区', '629000', '86510900', '86510000', '86510900,86510000', '遂宁市,四川省', null);
INSERT INTO `area` VALUES ('86510903', '船山区', '629000', '86510900', '86510000', '86510900,86510000', '遂宁市,四川省', null);
INSERT INTO `area` VALUES ('86510904', '安居区', '629000', '86510900', '86510000', '86510900,86510000', '遂宁市,四川省', null);
INSERT INTO `area` VALUES ('86510921', '蓬溪县', '629100', '86510900', '86510000', '86510900,86510000', '遂宁市,四川省', null);
INSERT INTO `area` VALUES ('86510922', '射洪县', '629200', '86510900', '86510000', '86510900,86510000', '遂宁市,四川省', null);
INSERT INTO `area` VALUES ('86510923', '大英县', '629300', '86510900', '86510000', '86510900,86510000', '遂宁市,四川省', null);
INSERT INTO `area` VALUES ('86511000', '内江市', '628000', '86510000', '86510000', '86510000', '四川省', '86511028,86511025,86511024,86511011,86511002,86511001');
INSERT INTO `area` VALUES ('86511001', '市辖区', '628000', '86511000', '86510000', '86511000,86510000', '内江市,四川省', null);
INSERT INTO `area` VALUES ('86511002', '市中区', '641000', '86511000', '86510000', '86511000,86510000', '内江市,四川省', null);
INSERT INTO `area` VALUES ('86511011', '东兴区', '641100', '86511000', '86510000', '86511000,86510000', '内江市,四川省', null);
INSERT INTO `area` VALUES ('86511024', '威远县', '642450', '86511000', '86510000', '86511000,86510000', '内江市,四川省', null);
INSERT INTO `area` VALUES ('86511025', '资中县', '641200', '86511000', '86510000', '86511000,86510000', '内江市,四川省', null);
INSERT INTO `area` VALUES ('86511028', '隆昌县', '642150', '86511000', '86510000', '86511000,86510000', '内江市,四川省', null);
INSERT INTO `area` VALUES ('86511100', '乐山市', '614000', '86510000', '86510000', '86510000', '四川省', '86511181,86511133,86511132,86511129,86511126,86511124,86511123,86511113,86511112,86511111,86511102,86511101');
INSERT INTO `area` VALUES ('86511101', '市辖区', '614000', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511102', '市中区', '614000', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511111', '沙湾区', '614900', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511112', '五通桥区', '614800', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511113', '金口河区', '614700', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511123', '犍为县', '614400', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511124', '井研县', '613100', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511126', '夹江县', '614100', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511129', '沐川县', '614500', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511132', '峨边彝族自治县', '614300', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511133', '马边彝族自治县', '614600', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511181', '峨眉山市', '614200', '86511100', '86510000', '86511100,86510000', '乐山市,四川省', null);
INSERT INTO `area` VALUES ('86511300', '南充市', '637000', '86510000', '86510000', '86510000', '四川省', '86511381,86511325,86511324,86511323,86511322,86511321,86511304,86511303,86511302,86511301');
INSERT INTO `area` VALUES ('86511301', '市辖区', '637000', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511302', '顺庆区', '637000', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511303', '高坪区', '637100', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511304', '嘉陵区', '637500', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511321', '南部县', '637300', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511322', '营山县', '637700', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511323', '蓬安县', '637800', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511324', '仪陇县', '637600', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511325', '西充县', '637200', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511381', '阆中市', '637400', '86511300', '86510000', '86511300,86510000', '南充市,四川省', null);
INSERT INTO `area` VALUES ('86511400', '眉山市', '620000', '86510000', '86510000', '86510000', '四川省', '86511425,86511424,86511423,86511422,86511421,86511402,86511401');
INSERT INTO `area` VALUES ('86511401', '市辖区', '620000', '86511400', '86510000', '86511400,86510000', '眉山市,四川省', null);
INSERT INTO `area` VALUES ('86511402', '东坡区', '620000', '86511400', '86510000', '86511400,86510000', '眉山市,四川省', null);
INSERT INTO `area` VALUES ('86511421', '仁寿县', '620500', '86511400', '86510000', '86511400,86510000', '眉山市,四川省', null);
INSERT INTO `area` VALUES ('86511422', '彭山县', '620800', '86511400', '86510000', '86511400,86510000', '眉山市,四川省', null);
INSERT INTO `area` VALUES ('86511423', '洪雅县', '620300', '86511400', '86510000', '86511400,86510000', '眉山市,四川省', null);
INSERT INTO `area` VALUES ('86511424', '丹棱县', '620200', '86511400', '86510000', '86511400,86510000', '眉山市,四川省', null);
INSERT INTO `area` VALUES ('86511425', '青神县', '620400', '86511400', '86510000', '86511400,86510000', '眉山市,四川省', null);
INSERT INTO `area` VALUES ('86511500', '宜宾市', '644000', '86510000', '86510000', '86510000', '四川省', '86511529,86511528,86511527,86511526,86511525,86511524,86511523,86511522,86511521,86511502,86511501');
INSERT INTO `area` VALUES ('86511501', '市辖区', '644000', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511502', '翠屏区', '644000', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511521', '宜宾县', '644600', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511522', '南溪县', '644100', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511523', '江安县', '644200', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511524', '长宁县', '644300', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511525', '高　县', '645150', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511526', '珙　县', '644500', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511527', '筠连县', '645250', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511528', '兴文县', '644400', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511529', '屏山县', '645350', '86511500', '86510000', '86511500,86510000', '宜宾市,四川省', null);
INSERT INTO `area` VALUES ('86511600', '广安市', '638550', '86510000', '86510000', '86510000', '四川省', '86511681,86511623,86511622,86511621,86511602,86511601');
INSERT INTO `area` VALUES ('86511601', '市辖区', '638550', '86511600', '86510000', '86511600,86510000', '广安市,四川省', null);
INSERT INTO `area` VALUES ('86511602', '广安区', '638550', '86511600', '86510000', '86511600,86510000', '广安市,四川省', null);
INSERT INTO `area` VALUES ('86511621', '岳池县', '638300', '86511600', '86510000', '86511600,86510000', '广安市,四川省', null);
INSERT INTO `area` VALUES ('86511622', '武胜县', '638400', '86511600', '86510000', '86511600,86510000', '广安市,四川省', null);
INSERT INTO `area` VALUES ('86511623', '邻水县', '638500', '86511600', '86510000', '86511600,86510000', '广安市,四川省', null);
INSERT INTO `area` VALUES ('86511681', '华莹市', '638600', '86511600', '86510000', '86511600,86510000', '广安市,四川省', null);
INSERT INTO `area` VALUES ('86511700', '达州市', '635000', '86510000', '86510000', '86510000', '四川省', '86511781,86511725,86511724,86511723,86511722,86511721,86511702,86511701');
INSERT INTO `area` VALUES ('86511701', '市辖区', '635000', '86511700', '86510000', '86511700,86510000', '达州市,四川省', null);
INSERT INTO `area` VALUES ('86511702', '通川区', '635000', '86511700', '86510000', '86511700,86510000', '达州市,四川省', null);
INSERT INTO `area` VALUES ('86511721', '达　县', '635000', '86511700', '86510000', '86511700,86510000', '达州市,四川省', null);
INSERT INTO `area` VALUES ('86511722', '宣汉县', '636150', '86511700', '86510000', '86511700,86510000', '达州市,四川省', null);
INSERT INTO `area` VALUES ('86511723', '开江县', '636250', '86511700', '86510000', '86511700,86510000', '达州市,四川省', null);
INSERT INTO `area` VALUES ('86511724', '大竹县', '635100', '86511700', '86510000', '86511700,86510000', '达州市,四川省', null);
INSERT INTO `area` VALUES ('86511725', '渠　县', '635200', '86511700', '86510000', '86511700,86510000', '达州市,四川省', null);
INSERT INTO `area` VALUES ('86511781', '万源市', '636350', '86511700', '86510000', '86511700,86510000', '达州市,四川省', null);
INSERT INTO `area` VALUES ('86511800', '雅安市', '625000', '86510000', '86510000', '86510000', '四川省', '86511827,86511826,86511825,86511824,86511823,86511822,86511821,86511802,86511801');
INSERT INTO `area` VALUES ('86511801', '市辖区', '625000', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511802', '雨城区', '625000', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511821', '名山县', '625100', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511822', '荥经县', '625200', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511823', '汉源县', '625300', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511824', '石棉县', '625400', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511825', '天全县', '625500', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511826', '芦山县', '625600', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511827', '宝兴县', '625700', '86511800', '86510000', '86511800,86510000', '雅安市,四川省', null);
INSERT INTO `area` VALUES ('86511900', '巴中市', '636600', '86510000', '86510000', '86510000', '四川省', '86511923,86511922,86511921,86511902,86511901');
INSERT INTO `area` VALUES ('86511901', '市辖区', '636600', '86511900', '86510000', '86511900,86510000', '巴中市,四川省', null);
INSERT INTO `area` VALUES ('86511902', '巴州区', '636600', '86511900', '86510000', '86511900,86510000', '巴中市,四川省', null);
INSERT INTO `area` VALUES ('86511921', '通江县', '636700', '86511900', '86510000', '86511900,86510000', '巴中市,四川省', null);
INSERT INTO `area` VALUES ('86511922', '南江县', '635600', '86511900', '86510000', '86511900,86510000', '巴中市,四川省', null);
INSERT INTO `area` VALUES ('86511923', '平昌县', '636400', '86511900', '86510000', '86511900,86510000', '巴中市,四川省', null);
INSERT INTO `area` VALUES ('86512000', '资阳市', '641300', '86510000', '86510000', '86510000', '四川省', '86512081,86512022,86512021,86512002,86512001');
INSERT INTO `area` VALUES ('86512001', '市辖区', '641300', '86512000', '86510000', '86512000,86510000', '资阳市,四川省', null);
INSERT INTO `area` VALUES ('86512002', '雁江区', '641300', '86512000', '86510000', '86512000,86510000', '资阳市,四川省', null);
INSERT INTO `area` VALUES ('86512021', '安岳县', '642350', '86512000', '86510000', '86512000,86510000', '资阳市,四川省', null);
INSERT INTO `area` VALUES ('86512022', '乐至县', '641500', '86512000', '86510000', '86512000,86510000', '资阳市,四川省', null);
INSERT INTO `area` VALUES ('86512081', '简阳市', '641400', '86512000', '86510000', '86512000,86510000', '资阳市,四川省', null);
INSERT INTO `area` VALUES ('86513200', '阿坝藏族羌族自治州', '623000', '86510000', '86510000', '86510000', '四川省', '86513233,86513232,86513231,86513230,86513229,86513228,86513227,86513226,86513225,86513224,86513223,86513222,86513221');
INSERT INTO `area` VALUES ('86513221', '汶川县', '623000', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513222', '理　县', '623100', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513223', '茂　县', '623200', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513224', '松潘县', '623300', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513225', '九寨沟县', '623400', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513226', '金川县', '624100', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513227', '小金县', '624200', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513228', '黑水县', '623500', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513229', '马尔康县', '624000', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513230', '壤塘县', '624300', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513231', '阿坝县', '624600', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513232', '若尔盖县', '624500', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513233', '红原县', '624400', '86513200', '86510000', '86513200,86510000', '阿坝藏族羌族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513300', '甘孜藏族自治州', '626000', '86510000', '86510000', '86510000', '四川省', '86513338,86513337,86513336,86513335,86513334,86513333,86513332,86513331,86513330,86513329,86513328,86513327,86513326,86513325,86513324,86513323,86513322,86513321');
INSERT INTO `area` VALUES ('86513321', '康定县', '626000', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513322', '泸定县', '626100', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513323', '丹巴县', '626300', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513324', '九龙县', '616200', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513325', '雅江县', '627450', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513326', '道孚县', '626400', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513327', '炉霍县', '626500', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513328', '甘孜县', '626700', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513329', '新龙县', '626800', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513330', '德格县', '627250', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513331', '白玉县', '627150', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513332', '石渠县', '627350', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513333', '色达县', '626600', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513334', '理塘县', '624300', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513335', '巴塘县', '627650', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513336', '乡城县', '627850', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513337', '稻城县', '627750', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513338', '得荣县', '627950', '86513300', '86510000', '86513300,86510000', '甘孜藏族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513400', '凉山彝族自治州', '615000', '86510000', '86510000', '86510000', '四川省', '86513437,86513436,86513435,86513434,86513433,86513432,86513431,86513430,86513429,86513428,86513427,86513426,86513425,86513424,86513423,86513422,86513401');
INSERT INTO `area` VALUES ('86513401', '西昌市', '615000', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513422', '木里藏族自治县', '615800', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513423', '盐源县', '615700', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513424', '德昌县', '615500', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513425', '会理县', '615100', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513426', '会东县', '615200', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513427', '宁南县', '615400', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513428', '普格县', '615300', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513429', '布拖县', '615350', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513430', '金阳县', '616250', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513431', '昭觉县', '616150', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513432', '喜德县', '616750', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513433', '冕宁县', '615600', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513434', '越西县', '616650', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513435', '甘洛县', '616850', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513436', '美姑县', '616450', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86513437', '雷波县', '616550', '86513400', '86510000', '86513400,86510000', '凉山彝族自治州,四川省', null);
INSERT INTO `area` VALUES ('86520000', '贵州省', null, '0', null, null, null, '86522700,86522600,86522400,86522300,86522200,86520400,86520300,86520200,86520100');
INSERT INTO `area` VALUES ('86520100', '贵阳市', '550000', '86520000', '86520000', '86520000', '贵州省', '86520181,86520123,86520122,86520121,86520114,86520113,86520112,86520111,86520103,86520102,86520101');
INSERT INTO `area` VALUES ('86520101', '市辖区', '550000', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520102', '南明区', '550000', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520103', '云岩区', '550000', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520111', '花溪区', '550000', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520112', '乌当区', '550000', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520113', '白云区', '550000', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520114', '小河区', '550000', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520121', '开阳县', '550300', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520122', '息烽县', '551100', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520123', '修文县', '550200', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520181', '清镇市', '551400', '86520100', '86520000', '86520100,86520000', '贵阳市,贵州省', null);
INSERT INTO `area` VALUES ('86520200', '六盘水市', '553000', '86520000', '86520000', '86520000', '贵州省', '86520222,86520221,86520203,86520201');
INSERT INTO `area` VALUES ('86520201', '钟山区', '553000', '86520200', '86520000', '86520200,86520000', '六盘水市,贵州省', null);
INSERT INTO `area` VALUES ('86520203', '六枝特区', '553400', '86520200', '86520000', '86520200,86520000', '六盘水市,贵州省', null);
INSERT INTO `area` VALUES ('86520221', '水城县', '553000', '86520200', '86520000', '86520200,86520000', '六盘水市,贵州省', null);
INSERT INTO `area` VALUES ('86520222', '盘　县', '561600', '86520200', '86520000', '86520200,86520000', '六盘水市,贵州省', null);
INSERT INTO `area` VALUES ('86520300', '遵义市', '563000', '86520000', '86520000', '86520000', '贵州省', '86520382,86520381,86520330,86520329,86520328,86520327,86520326,86520325,86520324,86520323,86520322,86520321,86520303,86520302,86520301');
INSERT INTO `area` VALUES ('86520301', '市辖区', '563000', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520302', '红花岗区', '563000', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520303', '汇川区', '563000', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520321', '遵义县', '563100', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520322', '桐梓县', '563200', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520323', '绥阳县', '563300', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520324', '正安县', '563400', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520325', '道真仡佬族苗族自治县', '563500', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520326', '务川仡佬族苗族自治县', '564300', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520327', '凤冈县', '564200', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520328', '湄潭县', '564100', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520329', '余庆县', '564400', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520330', '习水县', '564600', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520381', '赤水市', '564700', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520382', '仁怀市', '564500', '86520300', '86520000', '86520300,86520000', '遵义市,贵州省', null);
INSERT INTO `area` VALUES ('86520400', '安顺市', '561000', '86520000', '86520000', '86520000', '贵州省', '86520425,86520424,86520423,86520422,86520421,86520402,86520401');
INSERT INTO `area` VALUES ('86520401', '市辖区', '561000', '86520400', '86520000', '86520400,86520000', '安顺市,贵州省', null);
INSERT INTO `area` VALUES ('86520402', '西秀区', '561000', '86520400', '86520000', '86520400,86520000', '安顺市,贵州省', null);
INSERT INTO `area` VALUES ('86520421', '平坝县', '561100', '86520400', '86520000', '86520400,86520000', '安顺市,贵州省', null);
INSERT INTO `area` VALUES ('86520422', '普定县', '562100', '86520400', '86520000', '86520400,86520000', '安顺市,贵州省', null);
INSERT INTO `area` VALUES ('86520423', '镇宁布依族苗族自治县', '561200', '86520400', '86520000', '86520400,86520000', '安顺市,贵州省', null);
INSERT INTO `area` VALUES ('86520424', '关岭布依族苗族自治县', '561300', '86520400', '86520000', '86520400,86520000', '安顺市,贵州省', null);
INSERT INTO `area` VALUES ('86520425', '紫云苗族布依族自治县', '550800', '86520400', '86520000', '86520400,86520000', '安顺市,贵州省', null);
INSERT INTO `area` VALUES ('86522200', '铜仁地区', '554300', '86520000', '86520000', '86520000', '贵州省', '86522230,86522229,86522228,86522227,86522226,86522225,86522224,86522223,86522222,86522201');
INSERT INTO `area` VALUES ('86522201', '铜仁市', '554300', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522222', '江口县', '554400', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522223', '玉屏侗族自治县', '554000', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522224', '石阡县', '555100', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522225', '思南县', '565100', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522226', '印江土家族苗族自治县', '555200', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522227', '德江县', '565200', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522228', '沿河土家族自治县', '565300', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522229', '松桃苗族自治县', '554100', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522230', '万山特区', '554200', '86522200', '86520000', '86522200,86520000', '铜仁地区,贵州省', null);
INSERT INTO `area` VALUES ('86522300', '黔西南布依族苗族自治州', '562400', '86520000', '86520000', '86520000', '贵州省', '86522328,86522327,86522326,86522325,86522324,86522323,86522322,86522301');
INSERT INTO `area` VALUES ('86522301', '兴义市', '562400', '86522300', '86520000', '86522300,86520000', '黔西南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522322', '兴仁县', '562300', '86522300', '86520000', '86522300,86520000', '黔西南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522323', '普安县', '561500', '86522300', '86520000', '86522300,86520000', '黔西南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522324', '晴隆县', '561400', '86522300', '86520000', '86522300,86520000', '黔西南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522325', '贞丰县', '562200', '86522300', '86520000', '86522300,86520000', '黔西南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522326', '望谟县', '552300', '86522300', '86520000', '86522300,86520000', '黔西南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522327', '册亨县', '552200', '86522300', '86520000', '86522300,86520000', '黔西南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522328', '安龙县', '552400', '86522300', '86520000', '86522300,86520000', '黔西南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522400', '毕节地区', '551700', '86520000', '86520000', '86520000', '贵州省', '86522428,86522427,86522426,86522425,86522424,86522423,86522422,86522401');
INSERT INTO `area` VALUES ('86522401', '毕节市', '551700', '86522400', '86520000', '86522400,86520000', '毕节地区,贵州省', null);
INSERT INTO `area` VALUES ('86522422', '大方县', '551600', '86522400', '86520000', '86522400,86520000', '毕节地区,贵州省', null);
INSERT INTO `area` VALUES ('86522423', '黔西县', '551500', '86522400', '86520000', '86522400,86520000', '毕节地区,贵州省', null);
INSERT INTO `area` VALUES ('86522424', '金沙县', '551800', '86522400', '86520000', '86522400,86520000', '毕节地区,贵州省', null);
INSERT INTO `area` VALUES ('86522425', '织金县', '552100', '86522400', '86520000', '86522400,86520000', '毕节地区,贵州省', null);
INSERT INTO `area` VALUES ('86522426', '纳雍县', '553300', '86522400', '86520000', '86522400,86520000', '毕节地区,贵州省', null);
INSERT INTO `area` VALUES ('86522427', '威宁彝族回族苗族自治县', '553100', '86522400', '86520000', '86522400,86520000', '毕节地区,贵州省', null);
INSERT INTO `area` VALUES ('86522428', '赫章县', '553200', '86522400', '86520000', '86522400,86520000', '毕节地区,贵州省', null);
INSERT INTO `area` VALUES ('86522600', '黔东南苗族侗族自治州', '556000', '86520000', '86520000', '86520000', '贵州省', '86522636,86522635,86522634,86522633,86522632,86522631,86522630,86522629,86522628,86522627,86522626,86522625,86522624,86522623,86522622,86522601');
INSERT INTO `area` VALUES ('86522601', '凯里市', '556000', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522622', '黄平县', '556100', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522623', '施秉县', '556200', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522624', '三穗县', '556500', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522625', '镇远县', '557700', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522626', '岑巩县', '557800', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522627', '天柱县', '556600', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522628', '锦屏县', '556700', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522629', '剑河县', '556400', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522630', '台江县', '556300', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522631', '黎平县', '557300', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522632', '榕江县', '557200', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522633', '从江县', '557400', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522634', '雷山县', '557100', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522635', '麻江县', '557600', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522636', '丹寨县', '557500', '86522600', '86520000', '86522600,86520000', '黔东南苗族侗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522700', '黔南布依族苗族自治州', '558000', '86520000', '86520000', '86520000', '贵州省', '86522732,86522731,86522730,86522729,86522728,86522727,86522726,86522725,86522723,86522722,86522702,86522701');
INSERT INTO `area` VALUES ('86522701', '都匀市', '558000', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522702', '福泉市', '550500', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522722', '荔波县', '558400', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522723', '贵定县', '551300', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522725', '瓮安县', '550400', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522726', '独山县', '558200', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522727', '平塘县', '558300', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522728', '罗甸县', '550100', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522729', '长顺县', '550700', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522730', '龙里县', '551200', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522731', '惠水县', '550600', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86522732', '三都水族自治县', '558100', '86522700', '86520000', '86522700,86520000', '黔南布依族苗族自治州,贵州省', null);
INSERT INTO `area` VALUES ('86530000', '云南省', null, '0', null, null, null, '86533400,86533300,86533100,86532900,86532800,86532600,86532500,86532300,86530900,86530800,86530700,86530600,86530500,86530400,86530300,86530100');
INSERT INTO `area` VALUES ('86530100', '昆明市', '650000', '86530000', '86530000', '86530000', '云南省', '86530181,86530129,86530128,86530127,86530126,86530125,86530124,86530122,86530121,86530113,86530112,86530111,86530103,86530102,86530101');
INSERT INTO `area` VALUES ('86530101', '市辖区', '650000', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530102', '五华区', '650000', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530103', '盘龙区', '650000', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530111', '官渡区', '650200', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530112', '西山区', '650100', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530113', '东川区', '654100', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530121', '呈贡县', '650500', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530122', '晋宁县', '650600', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530124', '富民县', '650400', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530125', '宜良县', '652100', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530126', '石林彝族自治县', '652200', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530127', '嵩明县', '651700', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530128', '禄劝彝族苗族自治县', '651500', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530129', '寻甸回族彝族自治县', '655200', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530181', '安宁市', '650300', '86530100', '86530000', '86530100,86530000', '昆明市,云南省', null);
INSERT INTO `area` VALUES ('86530300', '曲靖市', '655000', '86530000', '86530000', '86530000', '云南省', '86530381,86530328,86530326,86530325,86530324,86530323,86530322,86530321,86530302,86530301');
INSERT INTO `area` VALUES ('86530301', '市辖区', '655000', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530302', '麒麟区', '655000', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530321', '马龙县', '655100', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530322', '陆良县', '655600', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530323', '师宗县', '655700', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530324', '罗平县', '655800', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530325', '富源县', '655500', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530326', '会泽县', '654200', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530328', '沾益县', '655500', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530381', '宣威市', '655400', '86530300', '86530000', '86530300,86530000', '曲靖市,云南省', null);
INSERT INTO `area` VALUES ('86530400', '玉溪市', '653100', '86530000', '86530000', '86530000', '云南省', '86530428,86530427,86530426,86530425,86530424,86530423,86530422,86530421,86530402,86530401');
INSERT INTO `area` VALUES ('86530401', '市辖区', '653100', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530402', '红塔区', '653100', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530421', '江川县', '652600', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530422', '澄江县', '652500', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530423', '通海县', '652700', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530424', '华宁县', '652800', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530425', '易门县', '651100', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530426', '峨山彝族自治县', '653200', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530427', '新平彝族傣族自治县', '653400', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530428', '元江哈尼族彝族傣族自治县', '653300', '86530400', '86530000', '86530400,86530000', '玉溪市,云南省', null);
INSERT INTO `area` VALUES ('86530500', '保山市', '678000', '86530000', '86530000', '86530000', '云南省', '86530524,86530523,86530522,86530521,86530502,86530501');
INSERT INTO `area` VALUES ('86530501', '市辖区', '678000', '86530500', '86530000', '86530500,86530000', '保山市,云南省', null);
INSERT INTO `area` VALUES ('86530502', '隆阳区', '678000', '86530500', '86530000', '86530500,86530000', '保山市,云南省', null);
INSERT INTO `area` VALUES ('86530521', '施甸县', '678200', '86530500', '86530000', '86530500,86530000', '保山市,云南省', null);
INSERT INTO `area` VALUES ('86530522', '腾冲县', '679100', '86530500', '86530000', '86530500,86530000', '保山市,云南省', null);
INSERT INTO `area` VALUES ('86530523', '龙陵县', '678300', '86530500', '86530000', '86530500,86530000', '保山市,云南省', null);
INSERT INTO `area` VALUES ('86530524', '昌宁县', '678100', '86530500', '86530000', '86530500,86530000', '保山市,云南省', null);
INSERT INTO `area` VALUES ('86530600', '昭通市', '657000', '86530000', '86530000', '86530000', '云南省', '86530630,86530629,86530628,86530627,86530626,86530625,86530624,86530623,86530622,86530621,86530602,86530601');
INSERT INTO `area` VALUES ('86530601', '市辖区', '657000', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530602', '昭阳区', '657000', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530621', '鲁甸县', '657100', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530622', '巧家县', '654600', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530623', '盐津县', '657500', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530624', '大关县', '657400', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530625', '永善县', '657300', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530626', '绥江县', '657700', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530627', '镇雄县', '657200', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530628', '彝良县', '657600', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530629', '威信县', '657900', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530630', '水富县', '657800', '86530600', '86530000', '86530600,86530000', '昭通市,云南省', null);
INSERT INTO `area` VALUES ('86530700', '丽江市', '674100', '86530000', '86530000', '86530000', '云南省', '86530724,86530723,86530722,86530721,86530702,86530701');
INSERT INTO `area` VALUES ('86530701', '市辖区', '674100', '86530700', '86530000', '86530700,86530000', '丽江市,云南省', null);
INSERT INTO `area` VALUES ('86530702', '古城区', '674100', '86530700', '86530000', '86530700,86530000', '丽江市,云南省', null);
INSERT INTO `area` VALUES ('86530721', '玉龙纳西族自治县', '674100', '86530700', '86530000', '86530700,86530000', '丽江市,云南省', null);
INSERT INTO `area` VALUES ('86530722', '永胜县', '674200', '86530700', '86530000', '86530700,86530000', '丽江市,云南省', null);
INSERT INTO `area` VALUES ('86530723', '华坪县', '674800', '86530700', '86530000', '86530700,86530000', '丽江市,云南省', null);
INSERT INTO `area` VALUES ('86530724', '宁蒗彝族自治县', '674300', '86530700', '86530000', '86530700,86530000', '丽江市,云南省', null);
INSERT INTO `area` VALUES ('86530800', '思茅市', '665000', '86530000', '86530000', '86530000', '云南省', '86530829,86530828,86530827,86530826,86530825,86530824,86530823,86530822,86530821,86530802,86530801');
INSERT INTO `area` VALUES ('86530801', '市辖区', '665000', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530802', '翠云区', '665000', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530821', '普洱哈尼族彝族自治县', '665100', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530822', '墨江哈尼族自治县', '654800', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530823', '景东彝族自治县', '676200', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530824', '景谷傣族彝族自治县', '666400', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530825', '镇沅彝族哈尼族拉祜族自治县', '666500', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530826', '江城哈尼族彝族自治县', '665900', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530827', '孟连傣族拉祜族佤族自治县', '665800', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530828', '澜沧拉祜族自治县', '665600', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530829', '西盟佤族自治县', '665700', '86530800', '86530000', '86530800,86530000', '思茅市,云南省', null);
INSERT INTO `area` VALUES ('86530900', '临沧市', '677000', '86530000', '86530000', '86530000', '云南省', '86530927,86530926,86530925,86530924,86530923,86530922,86530921,86530902,86530901');
INSERT INTO `area` VALUES ('86530901', '市辖区', '677000', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86530902', '临翔区', '677000', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86530921', '凤庆县', '675900', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86530922', '云　县', '675800', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86530923', '永德县', '677600', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86530924', '镇康县', '677700', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86530925', '双江拉祜族佤族布朗族傣族自治县', '677300', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86530926', '耿马傣族佤族自治县', '677500', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86530927', '沧源佤族自治县', '677400', '86530900', '86530000', '86530900,86530000', '临沧市,云南省', null);
INSERT INTO `area` VALUES ('86532300', '楚雄彝族自治州', '675000', '86530000', '86530000', '86530000', '云南省', '86532331,86532329,86532328,86532327,86532326,86532325,86532324,86532323,86532322,86532301');
INSERT INTO `area` VALUES ('86532301', '楚雄市', '675000', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532322', '双柏县', '675100', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532323', '牟定县', '675500', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532324', '南华县', '675200', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532325', '姚安县', '675300', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532326', '大姚县', '675400', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532327', '永仁县', '651400', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532328', '元谋县', '651300', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532329', '武定县', '651600', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532331', '禄丰县', '651200', '86532300', '86530000', '86532300,86530000', '楚雄彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532500', '红河哈尼族彝族自治州', '661000', '86530000', '86530000', '86530000', '云南省', '86532532,86532531,86532530,86532529,86532528,86532527,86532526,86532525,86532524,86532523,86532522,86532502,86532501');
INSERT INTO `area` VALUES ('86532501', '个旧市', '661000', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532502', '开远市', '661600', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532522', '蒙自县', '661100', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532523', '屏边苗族自治县', '661200', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532524', '建水县', '654300', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532525', '石屏县', '662200', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532526', '弥勒县', '652300', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532527', '泸西县', '652400', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532528', '元阳县', '662400', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532529', '红河县', '654400', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532530', '金平苗族瑶族傣族自治县', '661500', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532531', '绿春县', '662500', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532532', '河口瑶族自治县', '661300', '86532500', '86530000', '86532500,86530000', '红河哈尼族彝族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532600', '文山壮族苗族自治州', '663000', '86530000', '86530000', '86530000', '云南省', '86532628,86532627,86532626,86532625,86532624,86532623,86532622,86532621');
INSERT INTO `area` VALUES ('86532621', '文山县', '663000', '86532600', '86530000', '86532600,86530000', '文山壮族苗族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532622', '砚山县', '663100', '86532600', '86530000', '86532600,86530000', '文山壮族苗族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532623', '西畴县', '663500', '86532600', '86530000', '86532600,86530000', '文山壮族苗族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532624', '麻栗坡县', '663600', '86532600', '86530000', '86532600,86530000', '文山壮族苗族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532625', '马关县', '663700', '86532600', '86530000', '86532600,86530000', '文山壮族苗族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532626', '丘北县', '663200', '86532600', '86530000', '86532600,86530000', '文山壮族苗族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532627', '广南县', '663300', '86532600', '86530000', '86532600,86530000', '文山壮族苗族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532628', '富宁县', '663400', '86532600', '86530000', '86532600,86530000', '文山壮族苗族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532800', '西双版纳傣族自治州', '666100', '86530000', '86530000', '86530000', '云南省', '86532823,86532822,86532801');
INSERT INTO `area` VALUES ('86532801', '景洪市', '666100', '86532800', '86530000', '86532800,86530000', '西双版纳傣族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532822', '勐海县', '666200', '86532800', '86530000', '86532800,86530000', '西双版纳傣族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532823', '勐腊县', '666300', '86532800', '86530000', '86532800,86530000', '西双版纳傣族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532900', '大理白族自治州', '671000', '86530000', '86530000', '86530000', '云南省', '86532932,86532931,86532930,86532929,86532928,86532927,86532926,86532925,86532924,86532923,86532922,86532901');
INSERT INTO `area` VALUES ('86532901', '大理市', '671000', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532922', '漾濞彝族自治县', '672500', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532923', '祥云县', '672100', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532924', '宾川县', '671600', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532925', '弥渡县', '675600', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532926', '南涧彝族自治县', '675700', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532927', '巍山彝族回族自治县', '672400', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532928', '永平县', '672600', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532929', '云龙县', '672700', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532930', '洱源县', '671200', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532931', '剑川县', '671300', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86532932', '鹤庆县', '671500', '86532900', '86530000', '86532900,86530000', '大理白族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533100', '德宏傣族景颇族自治州', '678600', '86530000', '86530000', '86530000', '云南省', '86533124,86533123,86533122,86533103,86533102');
INSERT INTO `area` VALUES ('86533102', '瑞丽市', '678600', '86533100', '86530000', '86533100,86530000', '德宏傣族景颇族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533103', '潞西市', '678400', '86533100', '86530000', '86533100,86530000', '德宏傣族景颇族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533122', '梁河县', '679200', '86533100', '86530000', '86533100,86530000', '德宏傣族景颇族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533123', '盈江县', '679300', '86533100', '86530000', '86533100,86530000', '德宏傣族景颇族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533124', '陇川县', '678700', '86533100', '86530000', '86533100,86530000', '德宏傣族景颇族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533300', '怒江傈僳族自治州', '673200', '86530000', '86530000', '86530000', '云南省', '86533325,86533324,86533323,86533321');
INSERT INTO `area` VALUES ('86533321', '泸水县', '673200', '86533300', '86530000', '86533300,86530000', '怒江傈僳族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533323', '福贡县', '673400', '86533300', '86530000', '86533300,86530000', '怒江傈僳族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533324', '贡山独龙族怒族自治县', '673500', '86533300', '86530000', '86533300,86530000', '怒江傈僳族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533325', '兰坪白族普米族自治县', '671400', '86533300', '86530000', '86533300,86530000', '怒江傈僳族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533400', '迪庆藏族自治州', '674400', '86530000', '86530000', '86530000', '云南省', '86533423,86533422,86533421');
INSERT INTO `area` VALUES ('86533421', '香格里拉县', '674400', '86533400', '86530000', '86533400,86530000', '迪庆藏族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533422', '德钦县', '674500', '86533400', '86530000', '86533400,86530000', '迪庆藏族自治州,云南省', null);
INSERT INTO `area` VALUES ('86533423', '维西傈僳族自治县', '674600', '86533400', '86530000', '86533400,86530000', '迪庆藏族自治州,云南省', null);
INSERT INTO `area` VALUES ('86540000', '西藏自治区', null, '0', null, null, null, '86542600,86542500,86542400,86542300,86542200,86542100,86540100');
INSERT INTO `area` VALUES ('86540100', '拉萨市', '850000', '86540000', '86540000', '86540000', '西藏自治区', '86540127,86540126,86540125,86540124,86540123,86540122,86540121,86540102,86540101');
INSERT INTO `area` VALUES ('86540101', '市辖区', '850000', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86540102', '城关区', '850000', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86540121', '林周县', '851600', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86540122', '当雄县', '851500', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86540123', '尼木县', '851600', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86540124', '曲水县', '850600', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86540125', '堆龙德庆县', '851400', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86540126', '达孜县', '850100', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86540127', '墨竹工卡县', '850200', '86540100', '86540000', '86540100,86540000', '拉萨市,西藏自治区', null);
INSERT INTO `area` VALUES ('86542100', '昌都地区', '854000', '86540000', '86540000', '86540000', '西藏自治区', '86542133,86542132,86542129,86542128,86542127,86542126,86542125,86542124,86542123,86542122,86542121');
INSERT INTO `area` VALUES ('86542121', '昌都县', '854000', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542122', '江达县', '854100', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542123', '贡觉县', '854200', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542124', '类乌齐县', '855600', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542125', '丁青县', '855700', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542126', '察雅县', '854300', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542127', '八宿县', '854600', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542128', '左贡县', '854400', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542129', '芒康县', '854500', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542132', '洛隆县', '855400', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542133', '边坝县', '855500', '86542100', '86540000', '86542100,86540000', '昌都地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542200', '山南地区', '856100', '86540000', '86540000', '86540000', '西藏自治区', '86542233,86542232,86542231,86542229,86542228,86542227,86542226,86542225,86542224,86542223,86542222,86542221');
INSERT INTO `area` VALUES ('86542221', '乃东县', '856100', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542222', '扎囊县', '850800', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542223', '贡嘎县', '850700', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542224', '桑日县', '856200', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542225', '琼结县', '856800', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542226', '曲松县', '856300', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542227', '措美县', '856900', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542228', '洛扎县', '851200', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542229', '加查县', '856400', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542231', '隆子县', '856600', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542232', '错那县', '856700', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542233', '浪卡子县', '851100', '86542200', '86540000', '86542200,86540000', '山南地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542300', '日喀则地区', '857000', '86540000', '86540000', '86540000', '西藏自治区', '86542338,86542337,86542336,86542335,86542334,86542333,86542332,86542331,86542330,86542329,86542328,86542327,86542326,86542325,86542324,86542323,86542322,86542301');
INSERT INTO `area` VALUES ('86542301', '日喀则市', '857000', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542322', '南木林县', '857100', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542323', '江孜县', '857400', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542324', '定日县', '858200', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542325', '萨迦县', '857800', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542326', '拉孜县', '858100', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542327', '昂仁县', '858500', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542328', '谢通门县', '858900', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542329', '白朗县', '857300', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542330', '仁布县', '857200', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542331', '康马县', '857500', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542332', '定结县', '857900', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542333', '仲巴县', '858800', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542334', '亚东县', '857600', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542335', '吉隆县', '858700', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542336', '聂拉木县', '858300', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542337', '萨嘎县', '858600', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542338', '岗巴县', '857700', '86542300', '86540000', '86542300,86540000', '日喀则地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542400', '那曲地区', '852000', '86540000', '86540000', '86540000', '西藏自治区', '86542430,86542429,86542428,86542427,86542426,86542425,86542424,86542423,86542422,86542421');
INSERT INTO `area` VALUES ('86542421', '那曲县', '852000', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542422', '嘉黎县', '852400', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542423', '比如县', '852300', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542424', '聂荣县', '853500', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542425', '安多县', '853400', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542426', '申扎县', '853100', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542427', '索　县', '852200', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542428', '班戈县', '852500', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542429', '巴青县', '852100', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542430', '尼玛县', '853200', '86542400', '86540000', '86542400,86540000', '那曲地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542500', '阿里地区', '859500', '86540000', '86540000', '86540000', '西藏自治区', '86542527,86542526,86542525,86542524,86542523,86542522,86542521');
INSERT INTO `area` VALUES ('86542521', '普兰县', '859500', '86542500', '86540000', '86542500,86540000', '阿里地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542522', '札达县', '859600', '86542500', '86540000', '86542500,86540000', '阿里地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542523', '噶尔县', '859000', '86542500', '86540000', '86542500,86540000', '阿里地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542524', '日土县', '859700', '86542500', '86540000', '86542500,86540000', '阿里地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542525', '革吉县', '859100', '86542500', '86540000', '86542500,86540000', '阿里地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542526', '改则县', '859200', '86542500', '86540000', '86542500,86540000', '阿里地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542527', '措勤县', '859300', '86542500', '86540000', '86542500,86540000', '阿里地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542600', '林芝地区', '860100', '86540000', '86540000', '86540000', '西藏自治区', '86542627,86542626,86542625,86542624,86542623,86542622,86542621');
INSERT INTO `area` VALUES ('86542621', '林芝县', '860100', '86542600', '86540000', '86542600,86540000', '林芝地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542622', '工布江达县', '860200', '86542600', '86540000', '86542600,86540000', '林芝地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542623', '米林县', '860500', '86542600', '86540000', '86542600,86540000', '林芝地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542624', '墨脱县', '860700', '86542600', '86540000', '86542600,86540000', '林芝地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542625', '波密县', '860300', '86542600', '86540000', '86542600,86540000', '林芝地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542626', '察隅县', '860600', '86542600', '86540000', '86542600,86540000', '林芝地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86542627', '朗　县', '860400', '86542600', '86540000', '86542600,86540000', '林芝地区,西藏自治区', null);
INSERT INTO `area` VALUES ('86610000', '陕西省', null, '0', null, null, null, '86611000,86610900,86610800,86610700,86610600,86610500,86610400,86610300,86610200,86610100');
INSERT INTO `area` VALUES ('86610100', '西安市', '710000', '86610000', '86610000', '86610000', '陕西省', '86610126,86610125,86610124,86610122,86610116,86610115,86610114,86610113,86610112,86610111,86610104,86610103,86610102,86610101');
INSERT INTO `area` VALUES ('86610101', '市辖区', '710000', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610102', '新城区', '710000', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610103', '碑林区', '710000', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610104', '莲湖区', '710000', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610111', '灞桥区', '710000', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610112', '未央区', '710000', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610113', '雁塔区', '710000', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610114', '阎良区', '710000', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610115', '临潼区', '710600', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610116', '长安区', '710100', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610122', '蓝田县', '710500', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610124', '周至县', '710400', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610125', '户　县', '710300', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610126', '高陵县', '710200', '86610100', '86610000', '86610100,86610000', '西安市,陕西省', null);
INSERT INTO `area` VALUES ('86610200', '铜川市', '727000', '86610000', '86610000', '86610000', '陕西省', '86610222,86610204,86610203,86610202,86610201');
INSERT INTO `area` VALUES ('86610201', '市辖区', '727000', '86610200', '86610000', '86610200,86610000', '铜川市,陕西省', null);
INSERT INTO `area` VALUES ('86610202', '王益区', '727000', '86610200', '86610000', '86610200,86610000', '铜川市,陕西省', null);
INSERT INTO `area` VALUES ('86610203', '印台区', '727000', '86610200', '86610000', '86610200,86610000', '铜川市,陕西省', null);
INSERT INTO `area` VALUES ('86610204', '耀州区', '727100', '86610200', '86610000', '86610200,86610000', '铜川市,陕西省', null);
INSERT INTO `area` VALUES ('86610222', '宜君县', '727200', '86610200', '86610000', '86610200,86610000', '铜川市,陕西省', null);
INSERT INTO `area` VALUES ('86610300', '宝鸡市', '721000', '86610000', '86610000', '86610000', '陕西省', '86610331,86610330,86610329,86610328,86610327,86610326,86610324,86610323,86610322,86610304,86610303,86610302,86610301');
INSERT INTO `area` VALUES ('86610301', '市辖区', '721000', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610302', '渭滨区', '721000', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610303', '金台区', '721000', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610304', '陈仓区', '721300', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610322', '凤翔县', '721400', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610323', '岐山县', '722400', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610324', '扶风县', '722200', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610326', '眉　县', '722300', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610327', '陇　县', '721200', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610328', '千阳县', '721100', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610329', '麟游县', '721500', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610330', '凤　县', '721700', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610331', '太白县', '721600', '86610300', '86610000', '86610300,86610000', '宝鸡市,陕西省', null);
INSERT INTO `area` VALUES ('86610400', '咸阳市', '712000', '86610000', '86610000', '86610000', '陕西省', '86610481,86610431,86610430,86610429,86610428,86610427,86610426,86610425,86610424,86610423,86610422,86610404,86610403,86610402,86610401');
INSERT INTO `area` VALUES ('86610401', '市辖区', '712000', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610402', '秦都区', '712000', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610403', '杨凌区', '712000', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610404', '渭城区', '712000', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610422', '三原县', '713800', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610423', '泾阳县', '713700', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610424', '乾　县', '713300', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610425', '礼泉县', '713200', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610426', '永寿县', '713400', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610427', '彬　县', '713500', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610428', '长武县', '713600', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610429', '旬邑县', '711300', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610430', '淳化县', '711200', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610431', '武功县', '712200', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610481', '兴平市', '713100', '86610400', '86610000', '86610400,86610000', '咸阳市,陕西省', null);
INSERT INTO `area` VALUES ('86610500', '渭南市', '714000', '86610000', '86610000', '86610000', '陕西省', '86610582,86610581,86610528,86610527,86610526,86610525,86610524,86610523,86610522,86610521,86610502,86610501');
INSERT INTO `area` VALUES ('86610501', '市辖区', '714000', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610502', '临渭区', '714000', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610521', '华　县', '714100', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610522', '潼关县', '714300', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610523', '大荔县', '715100', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610524', '合阳县', '715300', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610525', '澄城县', '715200', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610526', '蒲城县', '715500', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610527', '白水县', '715600', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610528', '富平县', '711700', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610581', '韩城市', '715400', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610582', '华阴市', '714200', '86610500', '86610000', '86610500,86610000', '渭南市,陕西省', null);
INSERT INTO `area` VALUES ('86610600', '延安市', '716000', '86610000', '86610000', '86610000', '陕西省', '86610632,86610631,86610630,86610629,86610628,86610627,86610626,86610625,86610624,86610623,86610622,86610621,86610602,86610601');
INSERT INTO `area` VALUES ('86610601', '市辖区', '716000', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610602', '宝塔区', '716000', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610621', '延长县', '717100', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610622', '延川县', '717200', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610623', '子长县', '717300', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610624', '安塞县', '717400', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610625', '志丹县', '717500', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610626', '吴旗县', '717600', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610627', '甘泉县', '716100', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610628', '富　县', '727500', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610629', '洛川县', '727400', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610630', '宜川县', '716200', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610631', '黄龙县', '715700', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610632', '黄陵县', '727300', '86610600', '86610000', '86610600,86610000', '延安市,陕西省', null);
INSERT INTO `area` VALUES ('86610700', '汉中市', '723000', '86610000', '86610000', '86610000', '陕西省', '86610730,86610729,86610728,86610727,86610726,86610725,86610724,86610723,86610722,86610721,86610702,86610701');
INSERT INTO `area` VALUES ('86610701', '市辖区', '723000', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610702', '汉台区', '723000', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610721', '南郑县', '723100', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610722', '城固县', '723200', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610723', '洋　县', '723300', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610724', '西乡县', '723500', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610725', '勉　县', '724200', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610726', '宁强县', '724400', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610727', '略阳县', '724300', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610728', '镇巴县', '723600', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610729', '留坝县', '724100', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610730', '佛坪县', '723400', '86610700', '86610000', '86610700,86610000', '汉中市,陕西省', null);
INSERT INTO `area` VALUES ('86610800', '榆林市', '719000', '86610000', '86610000', '86610000', '陕西省', '86610831,86610830,86610829,86610828,86610827,86610826,86610825,86610824,86610823,86610822,86610821,86610802,86610801');
INSERT INTO `area` VALUES ('86610801', '市辖区', '719000', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610802', '榆阳区', '719000', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610821', '神木县', '719300', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610822', '府谷县', '719400', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610823', '横山县', '719200', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610824', '靖边县', '718500', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610825', '定边县', '718600', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610826', '绥德县', '718000', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610827', '米脂县', '718100', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610828', '佳　县', '719200', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610829', '吴堡县', '718200', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610830', '清涧县', '718300', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610831', '子洲县', '718400', '86610800', '86610000', '86610800,86610000', '榆林市,陕西省', null);
INSERT INTO `area` VALUES ('86610900', '安康市', '725000', '86610000', '86610000', '86610000', '陕西省', '86610929,86610928,86610927,86610926,86610925,86610924,86610923,86610922,86610921,86610902,86610901');
INSERT INTO `area` VALUES ('86610901', '市辖区', '725000', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610902', '汉滨区', '725000', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610921', '汉阴县', '725100', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610922', '石泉县', '725200', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610923', '宁陕县', '711600', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610924', '紫阳县', '725300', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610925', '岚皋县', '725400', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610926', '平利县', '725500', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610927', '镇坪县', '725600', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610928', '旬阳县', '725700', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86610929', '白河县', '725800', '86610900', '86610000', '86610900,86610000', '安康市,陕西省', null);
INSERT INTO `area` VALUES ('86611000', '商洛市', '726000', '86610000', '86610000', '86610000', '陕西省', '86611026,86611025,86611024,86611023,86611022,86611021,86611002,86611001');
INSERT INTO `area` VALUES ('86611001', '市辖区', '726000', '86611000', '86610000', '86611000,86610000', '商洛市,陕西省', null);
INSERT INTO `area` VALUES ('86611002', '商州区', '726000', '86611000', '86610000', '86611000,86610000', '商洛市,陕西省', null);
INSERT INTO `area` VALUES ('86611021', '洛南县', '726100', '86611000', '86610000', '86611000,86610000', '商洛市,陕西省', null);
INSERT INTO `area` VALUES ('86611022', '丹凤县', '726200', '86611000', '86610000', '86611000,86610000', '商洛市,陕西省', null);
INSERT INTO `area` VALUES ('86611023', '商南县', '726300', '86611000', '86610000', '86611000,86610000', '商洛市,陕西省', null);
INSERT INTO `area` VALUES ('86611024', '山阳县', '726400', '86611000', '86610000', '86611000,86610000', '商洛市,陕西省', null);
INSERT INTO `area` VALUES ('86611025', '镇安县', '711500', '86611000', '86610000', '86611000,86610000', '商洛市,陕西省', null);
INSERT INTO `area` VALUES ('86611026', '柞水县', '711400', '86611000', '86610000', '86611000,86610000', '商洛市,陕西省', null);
INSERT INTO `area` VALUES ('86620000', '甘肃省', null, '0', null, null, null, '86623000,86622900,86621200,86621100,86621000,86620900,86620800,86620700,86620600,86620500,86620400,86620300,86620200,86620100');
INSERT INTO `area` VALUES ('86620100', '兰州市', '730000', '86620000', '86620000', '86620000', '甘肃省', '86620123,86620122,86620121,86620111,86620105,86620104,86620103,86620102,86620101');
INSERT INTO `area` VALUES ('86620101', '市辖区', '730000', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620102', '城关区', '730030', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620103', '七里河区', '730050', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620104', '西固区', '730060', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620105', '安宁区', '730070', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620111', '红古区', '730080', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620121', '永登县', '730300', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620122', '皋兰县', '730200', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620123', '榆中县', '730100', '86620100', '86620000', '86620100,86620000', '兰州市,甘肃省', null);
INSERT INTO `area` VALUES ('86620200', '嘉峪关市', '737100', '86620000', '86620000', '86620000', '甘肃省', '86620201');
INSERT INTO `area` VALUES ('86620201', '市辖区', '737100', '86620200', '86620000', '86620200,86620000', '嘉峪关市,甘肃省', null);
INSERT INTO `area` VALUES ('86620300', '金昌市', '737100', '86620000', '86620000', '86620000', '甘肃省', '86620321,86620302,86620301');
INSERT INTO `area` VALUES ('86620301', '市辖区', '737100', '86620300', '86620000', '86620300,86620000', '金昌市,甘肃省', null);
INSERT INTO `area` VALUES ('86620302', '金川区', '737100', '86620300', '86620000', '86620300,86620000', '金昌市,甘肃省', null);
INSERT INTO `area` VALUES ('86620321', '永昌县', '737200', '86620300', '86620000', '86620300,86620000', '金昌市,甘肃省', null);
INSERT INTO `area` VALUES ('86620400', '白银市', '730900', '86620000', '86620000', '86620000', '甘肃省', '86620423,86620422,86620421,86620403,86620402,86620401');
INSERT INTO `area` VALUES ('86620401', '市辖区', '730900', '86620400', '86620000', '86620400,86620000', '白银市,甘肃省', null);
INSERT INTO `area` VALUES ('86620402', '白银区', '730900', '86620400', '86620000', '86620400,86620000', '白银市,甘肃省', null);
INSERT INTO `area` VALUES ('86620403', '平川区', '730900', '86620400', '86620000', '86620400,86620000', '白银市,甘肃省', null);
INSERT INTO `area` VALUES ('86620421', '靖远县', '730600', '86620400', '86620000', '86620400,86620000', '白银市,甘肃省', null);
INSERT INTO `area` VALUES ('86620422', '会宁县', '730700', '86620400', '86620000', '86620400,86620000', '白银市,甘肃省', null);
INSERT INTO `area` VALUES ('86620423', '景泰县', '730400', '86620400', '86620000', '86620400,86620000', '白银市,甘肃省', null);
INSERT INTO `area` VALUES ('86620500', '天水市', '741000', '86620000', '86620000', '86620000', '甘肃省', '86620525,86620524,86620523,86620522,86620521,86620503,86620502,86620501');
INSERT INTO `area` VALUES ('86620501', '市辖区', '741000', '86620500', '86620000', '86620500,86620000', '天水市,甘肃省', null);
INSERT INTO `area` VALUES ('86620502', '秦城区', '741000', '86620500', '86620000', '86620500,86620000', '天水市,甘肃省', null);
INSERT INTO `area` VALUES ('86620503', '北道区', '741000', '86620500', '86620000', '86620500,86620000', '天水市,甘肃省', null);
INSERT INTO `area` VALUES ('86620521', '清水县', '741400', '86620500', '86620000', '86620500,86620000', '天水市,甘肃省', null);
INSERT INTO `area` VALUES ('86620522', '秦安县', '741600', '86620500', '86620000', '86620500,86620000', '天水市,甘肃省', null);
INSERT INTO `area` VALUES ('86620523', '甘谷县', '741200', '86620500', '86620000', '86620500,86620000', '天水市,甘肃省', null);
INSERT INTO `area` VALUES ('86620524', '武山县', '741300', '86620500', '86620000', '86620500,86620000', '天水市,甘肃省', null);
INSERT INTO `area` VALUES ('86620525', '张家川回族自治县', '733000', '86620500', '86620000', '86620500,86620000', '天水市,甘肃省', null);
INSERT INTO `area` VALUES ('86620600', '武威市', '733000', '86620000', '86620000', '86620000', '甘肃省', '86620623,86620622,86620621,86620602,86620601');
INSERT INTO `area` VALUES ('86620601', '市辖区', '733000', '86620600', '86620000', '86620600,86620000', '武威市,甘肃省', null);
INSERT INTO `area` VALUES ('86620602', '凉州区', '733000', '86620600', '86620000', '86620600,86620000', '武威市,甘肃省', null);
INSERT INTO `area` VALUES ('86620621', '民勤县', '733300', '86620600', '86620000', '86620600,86620000', '武威市,甘肃省', null);
INSERT INTO `area` VALUES ('86620622', '古浪县', '733100', '86620600', '86620000', '86620600,86620000', '武威市,甘肃省', null);
INSERT INTO `area` VALUES ('86620623', '天祝藏族自治县', '733200', '86620600', '86620000', '86620600,86620000', '武威市,甘肃省', null);
INSERT INTO `area` VALUES ('86620700', '张掖市', '734000', '86620000', '86620000', '86620000', '甘肃省', '86620725,86620724,86620723,86620722,86620721,86620702,86620701');
INSERT INTO `area` VALUES ('86620701', '市辖区', '734000', '86620700', '86620000', '86620700,86620000', '张掖市,甘肃省', null);
INSERT INTO `area` VALUES ('86620702', '甘州区', '734000', '86620700', '86620000', '86620700,86620000', '张掖市,甘肃省', null);
INSERT INTO `area` VALUES ('86620721', '肃南裕固族自治县', '734400', '86620700', '86620000', '86620700,86620000', '张掖市,甘肃省', null);
INSERT INTO `area` VALUES ('86620722', '民乐县', '734500', '86620700', '86620000', '86620700,86620000', '张掖市,甘肃省', null);
INSERT INTO `area` VALUES ('86620723', '临泽县', '734200', '86620700', '86620000', '86620700,86620000', '张掖市,甘肃省', null);
INSERT INTO `area` VALUES ('86620724', '高台县', '734300', '86620700', '86620000', '86620700,86620000', '张掖市,甘肃省', null);
INSERT INTO `area` VALUES ('86620725', '山丹县', '734100', '86620700', '86620000', '86620700,86620000', '张掖市,甘肃省', null);
INSERT INTO `area` VALUES ('86620800', '平凉市', '744000', '86620000', '86620000', '86620000', '甘肃省', '86620826,86620825,86620824,86620823,86620822,86620821,86620802,86620801');
INSERT INTO `area` VALUES ('86620801', '市辖区', '744000', '86620800', '86620000', '86620800,86620000', '平凉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620802', '崆峒区', '744000', '86620800', '86620000', '86620800,86620000', '平凉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620821', '泾川县', '744300', '86620800', '86620000', '86620800,86620000', '平凉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620822', '灵台县', '744400', '86620800', '86620000', '86620800,86620000', '平凉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620823', '崇信县', '744200', '86620800', '86620000', '86620800,86620000', '平凉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620824', '华亭县', '744100', '86620800', '86620000', '86620800,86620000', '平凉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620825', '庄浪县', '744600', '86620800', '86620000', '86620800,86620000', '平凉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620826', '静宁县', '743400', '86620800', '86620000', '86620800,86620000', '平凉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620900', '酒泉市', '735000', '86620000', '86620000', '86620000', '甘肃省', '86620982,86620981,86620924,86620923,86620922,86620921,86620902,86620901');
INSERT INTO `area` VALUES ('86620901', '市辖区', '735000', '86620900', '86620000', '86620900,86620000', '酒泉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620902', '肃州区', '735000', '86620900', '86620000', '86620900,86620000', '酒泉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620921', '金塔县', '735300', '86620900', '86620000', '86620900,86620000', '酒泉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620922', '安西县', '736100', '86620900', '86620000', '86620900,86620000', '酒泉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620923', '肃北蒙古族自治县', '736300', '86620900', '86620000', '86620900,86620000', '酒泉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620924', '阿克塞哈萨克族自治县', '736400', '86620900', '86620000', '86620900,86620000', '酒泉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620981', '玉门市', '735200', '86620900', '86620000', '86620900,86620000', '酒泉市,甘肃省', null);
INSERT INTO `area` VALUES ('86620982', '敦煌市', '736200', '86620900', '86620000', '86620900,86620000', '酒泉市,甘肃省', null);
INSERT INTO `area` VALUES ('86621000', '庆阳市', '745000', '86620000', '86620000', '86620000', '甘肃省', '86621027,86621026,86621025,86621024,86621023,86621022,86621021,86621002,86621001');
INSERT INTO `area` VALUES ('86621001', '市辖区', '745000', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621002', '西峰区', '745000', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621021', '庆城县', '745000', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621022', '环　县', '745700', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621023', '华池县', '745600', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621024', '合水县', '745400', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621025', '正宁县', '745300', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621026', '宁　县', '745200', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621027', '镇原县', '744500', '86621000', '86620000', '86621000,86620000', '庆阳市,甘肃省', null);
INSERT INTO `area` VALUES ('86621100', '定西市', '743000', '86620000', '86620000', '86620000', '甘肃省', '86621126,86621125,86621124,86621123,86621122,86621121,86621102,86621101');
INSERT INTO `area` VALUES ('86621101', '市辖区', '743000', '86621100', '86620000', '86621100,86620000', '定西市,甘肃省', null);
INSERT INTO `area` VALUES ('86621102', '安定区', '743000', '86621100', '86620000', '86621100,86620000', '定西市,甘肃省', null);
INSERT INTO `area` VALUES ('86621121', '通渭县', '743300', '86621100', '86620000', '86621100,86620000', '定西市,甘肃省', null);
INSERT INTO `area` VALUES ('86621122', '陇西县', '748100', '86621100', '86620000', '86621100,86620000', '定西市,甘肃省', null);
INSERT INTO `area` VALUES ('86621123', '渭源县', '748200', '86621100', '86620000', '86621100,86620000', '定西市,甘肃省', null);
INSERT INTO `area` VALUES ('86621124', '临洮县', '730500', '86621100', '86620000', '86621100,86620000', '定西市,甘肃省', null);
INSERT INTO `area` VALUES ('86621125', '漳　县', '748300', '86621100', '86620000', '86621100,86620000', '定西市,甘肃省', null);
INSERT INTO `area` VALUES ('86621126', '岷　县', '748400', '86621100', '86620000', '86621100,86620000', '定西市,甘肃省', null);
INSERT INTO `area` VALUES ('86621200', '陇南市', '746000', '86620000', '86620000', '86620000', '甘肃省', '86621228,86621227,86621226,86621225,86621224,86621223,86621222,86621221,86621202,86621201');
INSERT INTO `area` VALUES ('86621201', '市辖区', '746000', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621202', '武都区', '746000', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621221', '成　县', '742500', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621222', '文　县', '746400', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621223', '宕昌县', '748500', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621224', '康　县', '746500', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621225', '西和县', '742100', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621226', '礼　县', '742200', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621227', '徽　县', '742300', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86621228', '两当县', '742400', '86621200', '86620000', '86621200,86620000', '陇南市,甘肃省', null);
INSERT INTO `area` VALUES ('86622900', '临夏回族自治州', '731100', '86620000', '86620000', '86620000', '甘肃省', '86622927,86622926,86622925,86622924,86622923,86622922,86622921,86622901');
INSERT INTO `area` VALUES ('86622901', '临夏市', '731100', '86622900', '86620000', '86622900,86620000', '临夏回族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86622921', '临夏县', '731800', '86622900', '86620000', '86622900,86620000', '临夏回族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86622922', '康乐县', '731500', '86622900', '86620000', '86622900,86620000', '临夏回族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86622923', '永靖县', '731600', '86622900', '86620000', '86622900,86620000', '临夏回族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86622924', '广河县', '731300', '86622900', '86620000', '86622900,86620000', '临夏回族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86622925', '和政县', '731200', '86622900', '86620000', '86622900,86620000', '临夏回族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86622926', '东乡族自治县', '731400', '86622900', '86620000', '86622900,86620000', '临夏回族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86622927', '积石山保安族东乡族撒拉族自治县', '731700', '86622900', '86620000', '86622900,86620000', '临夏回族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86623000', '甘南藏族自治州', '747000', '86620000', '86620000', '86620000', '甘肃省', '86623027,86623026,86623025,86623024,86623023,86623022,86623021,86623001');
INSERT INTO `area` VALUES ('86623001', '合作市', '747000', '86623000', '86620000', '86623000,86620000', '甘南藏族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86623021', '临潭县', '747500', '86623000', '86620000', '86623000,86620000', '甘南藏族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86623022', '卓尼县', '747600', '86623000', '86620000', '86623000,86620000', '甘南藏族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86623023', '舟曲县', '746300', '86623000', '86620000', '86623000,86620000', '甘南藏族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86623024', '迭部县', '747400', '86623000', '86620000', '86623000,86620000', '甘南藏族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86623025', '玛曲县', '747300', '86623000', '86620000', '86623000,86620000', '甘南藏族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86623026', '碌曲县', '747200', '86623000', '86620000', '86623000,86620000', '甘南藏族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86623027', '夏河县', '747100', '86623000', '86620000', '86623000,86620000', '甘南藏族自治州,甘肃省', null);
INSERT INTO `area` VALUES ('86630000', '青海省', null, '0', null, null, null, '86632800,86632700,86632600,86632500,86632300,86632200,86632100,86630100');
INSERT INTO `area` VALUES ('86630100', '西宁市', '810000', '86630000', '86630000', '86630000', '青海省', '86630123,86630122,86630121,86630105,86630104,86630103,86630102,86630101');
INSERT INTO `area` VALUES ('86630101', '市辖区', '810000', '86630100', '86630000', '86630100,86630000', '西宁市,青海省', null);
INSERT INTO `area` VALUES ('86630102', '城东区', '810000', '86630100', '86630000', '86630100,86630000', '西宁市,青海省', null);
INSERT INTO `area` VALUES ('86630103', '城中区', '810000', '86630100', '86630000', '86630100,86630000', '西宁市,青海省', null);
INSERT INTO `area` VALUES ('86630104', '城西区', '810000', '86630100', '86630000', '86630100,86630000', '西宁市,青海省', null);
INSERT INTO `area` VALUES ('86630105', '城北区', '810000', '86630100', '86630000', '86630100,86630000', '西宁市,青海省', null);
INSERT INTO `area` VALUES ('86630121', '大通回族土族自治县', '810100', '86630100', '86630000', '86630100,86630000', '西宁市,青海省', null);
INSERT INTO `area` VALUES ('86630122', '湟中县', '811600', '86630100', '86630000', '86630100,86630000', '西宁市,青海省', null);
INSERT INTO `area` VALUES ('86630123', '湟源县', '812100', '86630100', '86630000', '86630100,86630000', '西宁市,青海省', null);
INSERT INTO `area` VALUES ('86632100', '海东地区', '810600', '86630000', '86630000', '86630000', '青海省', '86632128,86632127,86632126,86632123,86632122,86632121');
INSERT INTO `area` VALUES ('86632121', '平安县', '810600', '86632100', '86630000', '86632100,86630000', '海东地区,青海省', null);
INSERT INTO `area` VALUES ('86632122', '民和回族土族自治县', '810800', '86632100', '86630000', '86632100,86630000', '海东地区,青海省', null);
INSERT INTO `area` VALUES ('86632123', '乐都县', '810700', '86632100', '86630000', '86632100,86630000', '海东地区,青海省', null);
INSERT INTO `area` VALUES ('86632126', '互助土族自治县', '810500', '86632100', '86630000', '86632100,86630000', '海东地区,青海省', null);
INSERT INTO `area` VALUES ('86632127', '化隆回族自治县', '810900', '86632100', '86630000', '86632100,86630000', '海东地区,青海省', null);
INSERT INTO `area` VALUES ('86632128', '循化撒拉族自治县', '811100', '86632100', '86630000', '86632100,86630000', '海东地区,青海省', null);
INSERT INTO `area` VALUES ('86632200', '海北藏族自治州', '810300', '86630000', '86630000', '86630000', '青海省', '86632224,86632223,86632222,86632221');
INSERT INTO `area` VALUES ('86632221', '门源回族自治县', '810300', '86632200', '86630000', '86632200,86630000', '海北藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632222', '祁连县', '810400', '86632200', '86630000', '86632200,86630000', '海北藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632223', '海晏县', '812200', '86632200', '86630000', '86632200,86630000', '海北藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632224', '刚察县', '812300', '86632200', '86630000', '86632200,86630000', '海北藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632300', '黄南藏族自治州', '811300', '86630000', '86630000', '86630000', '青海省', '86632324,86632323,86632322,86632321');
INSERT INTO `area` VALUES ('86632321', '同仁县', '811300', '86632300', '86630000', '86632300,86630000', '黄南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632322', '尖扎县', '811200', '86632300', '86630000', '86632300,86630000', '黄南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632323', '泽库县', '811400', '86632300', '86630000', '86632300,86630000', '黄南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632324', '河南蒙古族自治县', '811500', '86632300', '86630000', '86632300,86630000', '黄南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632500', '海南藏族自治州', '813000', '86630000', '86630000', '86630000', '青海省', '86632525,86632524,86632523,86632522,86632521');
INSERT INTO `area` VALUES ('86632521', '共和县', '813000', '86632500', '86630000', '86632500,86630000', '海南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632522', '同德县', '813200', '86632500', '86630000', '86632500,86630000', '海南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632523', '贵德县', '811700', '86632500', '86630000', '86632500,86630000', '海南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632524', '兴海县', '813300', '86632500', '86630000', '86632500,86630000', '海南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632525', '贵南县', '813100', '86632500', '86630000', '86632500,86630000', '海南藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632600', '果洛藏族自治州', '814000', '86630000', '86630000', '86630000', '青海省', '86632626,86632625,86632624,86632623,86632622,86632621');
INSERT INTO `area` VALUES ('86632621', '玛沁县', '814000', '86632600', '86630000', '86632600,86630000', '果洛藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632622', '班玛县', '814300', '86632600', '86630000', '86632600,86630000', '果洛藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632623', '甘德县', '814100', '86632600', '86630000', '86632600,86630000', '果洛藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632624', '达日县', '814200', '86632600', '86630000', '86632600,86630000', '果洛藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632625', '久治县', '624700', '86632600', '86630000', '86632600,86630000', '果洛藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632626', '玛多县', '813500', '86632600', '86630000', '86632600,86630000', '果洛藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632700', '玉树藏族自治州', '815000', '86630000', '86630000', '86630000', '青海省', '86632726,86632725,86632724,86632723,86632722,86632721');
INSERT INTO `area` VALUES ('86632721', '玉树县', '815000', '86632700', '86630000', '86632700,86630000', '玉树藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632722', '杂多县', '815300', '86632700', '86630000', '86632700,86630000', '玉树藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632723', '称多县', '815100', '86632700', '86630000', '86632700,86630000', '玉树藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632724', '治多县', '815400', '86632700', '86630000', '86632700,86630000', '玉树藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632725', '囊谦县', '815200', '86632700', '86630000', '86632700,86630000', '玉树藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632726', '曲麻莱县', '815500', '86632700', '86630000', '86632700,86630000', '玉树藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632800', '海西蒙古族藏族自治州', '816000', '86630000', '86630000', '86630000', '青海省', '86632823,86632822,86632821,86632802,86632801');
INSERT INTO `area` VALUES ('86632801', '格尔木市', '816000', '86632800', '86630000', '86632800,86630000', '海西蒙古族藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632802', '德令哈市', '817000', '86632800', '86630000', '86632800,86630000', '海西蒙古族藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632821', '乌兰县', '817100', '86632800', '86630000', '86632800,86630000', '海西蒙古族藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632822', '都兰县', '816100', '86632800', '86630000', '86632800,86630000', '海西蒙古族藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86632823', '天峻县', '817200', '86632800', '86630000', '86632800,86630000', '海西蒙古族藏族自治州,青海省', null);
INSERT INTO `area` VALUES ('86640000', '宁夏回族自治区', null, '0', null, null, null, '86640500,86640400,86640300,86640200,86640100');
INSERT INTO `area` VALUES ('86640100', '银川市', '750000', '86640000', '86640000', '86640000', '宁夏回族自治区', '86640181,86640122,86640121,86640106,86640105,86640104,86640101');
INSERT INTO `area` VALUES ('86640101', '市辖区', '750000', '86640100', '86640000', '86640100,86640000', '银川市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640104', '兴庆区', '750000', '86640100', '86640000', '86640100,86640000', '银川市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640105', '西夏区', '750000', '86640100', '86640000', '86640100,86640000', '银川市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640106', '金凤区', '750000', '86640100', '86640000', '86640100,86640000', '银川市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640121', '永宁县', '750100', '86640100', '86640000', '86640100,86640000', '银川市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640122', '贺兰县', '750200', '86640100', '86640000', '86640100,86640000', '银川市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640181', '灵武市', '751400', '86640100', '86640000', '86640100,86640000', '银川市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640200', '石嘴山市', '753000', '86640000', '86640000', '86640000', '宁夏回族自治区', '86640221,86640205,86640202,86640201');
INSERT INTO `area` VALUES ('86640201', '市辖区', '753000', '86640200', '86640000', '86640200,86640000', '石嘴山市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640202', '大武口区', '753000', '86640200', '86640000', '86640200,86640000', '石嘴山市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640205', '惠农区', '753600', '86640200', '86640000', '86640200,86640000', '石嘴山市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640221', '平罗县', '753400', '86640200', '86640000', '86640200,86640000', '石嘴山市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640300', '吴忠市', '751100', '86640000', '86640000', '86640000', '宁夏回族自治区', '86640381,86640324,86640323,86640302,86640301');
INSERT INTO `area` VALUES ('86640301', '市辖区', '751100', '86640300', '86640000', '86640300,86640000', '吴忠市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640302', '利通区', '751100', '86640300', '86640000', '86640300,86640000', '吴忠市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640323', '盐池县', '751500', '86640300', '86640000', '86640300,86640000', '吴忠市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640324', '同心县', '751300', '86640300', '86640000', '86640300,86640000', '吴忠市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640381', '青铜峡市', '751600', '86640300', '86640000', '86640300,86640000', '吴忠市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640400', '固原市', '756000', '86640000', '86640000', '86640000', '宁夏回族自治区', '86640522,86640425,86640424,86640423,86640422,86640402,86640401');
INSERT INTO `area` VALUES ('86640401', '市辖区', '756000', '86640400', '86640000', '86640400,86640000', '固原市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640402', '原州区', '756000', '86640400', '86640000', '86640400,86640000', '固原市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640422', '西吉县', '756200', '86640400', '86640000', '86640400,86640000', '固原市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640423', '隆德县', '756300', '86640400', '86640000', '86640400,86640000', '固原市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640424', '泾源县', '756400', '86640400', '86640000', '86640400,86640000', '固原市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640425', '彭阳县', '756500', '86640400', '86640000', '86640400,86640000', '固原市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640500', '中卫市', '751700', '86640000', '86640000', '86640000', '宁夏回族自治区', '86640521,86640502,86640501');
INSERT INTO `area` VALUES ('86640501', '市辖区', '751700', '86640500', '86640000', '86640500,86640000', '中卫市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640502', '沙坡头区', '751700', '86640500', '86640000', '86640500,86640000', '中卫市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640521', '中宁县', '751200', '86640500', '86640000', '86640500,86640000', '中卫市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86640522', '海原县', '751800', '86640400', '86640000', '86640400,86640000', '固原市,宁夏回族自治区', null);
INSERT INTO `area` VALUES ('86650000', '新疆维吾尔自治区', null, '0', null, null, null, '86659000,86654300,86654200,86654000,86653200,86653100,86653000,86652900,86652800,86652700,86652300,86652200,86652100,86650200,86650100');
INSERT INTO `area` VALUES ('86650100', '乌鲁木齐市', '830000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86650121,86650108,86650107,86650106,86650105,86650104,86650103,86650102,86650101');
INSERT INTO `area` VALUES ('86650101', '市辖区', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650102', '天山区', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650103', '沙依巴克区', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650104', '新市区', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650105', '水磨沟区', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650106', '头屯河区', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650107', '达坂城区', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650108', '东山区', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650121', '乌鲁木齐县', '830000', '86650100', '86650000', '86650100,86650000', '乌鲁木齐市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650200', '克拉玛依市', '834000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86650205,86650204,86650203,86650202,86650201');
INSERT INTO `area` VALUES ('86650201', '市辖区', '834000', '86650200', '86650000', '86650200,86650000', '克拉玛依市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650202', '独山子区', '838600', '86650200', '86650000', '86650200,86650000', '克拉玛依市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650203', '克拉玛依区', '834000', '86650200', '86650000', '86650200,86650000', '克拉玛依市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650204', '白碱滩区', '834000', '86650200', '86650000', '86650200,86650000', '克拉玛依市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86650205', '乌尔禾区', '834000', '86650200', '86650000', '86650200,86650000', '克拉玛依市,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652100', '吐鲁番地区', '838000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86652123,86652122,86652101');
INSERT INTO `area` VALUES ('86652101', '吐鲁番市', '838000', '86652100', '86650000', '86652100,86650000', '吐鲁番地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652122', '鄯善县', '838200', '86652100', '86650000', '86652100,86650000', '吐鲁番地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652123', '托克逊县', '838100', '86652100', '86650000', '86652100,86650000', '吐鲁番地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652200', '哈密地区', '839000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86652223,86652222,86652201');
INSERT INTO `area` VALUES ('86652201', '哈密市', '839000', '86652200', '86650000', '86652200,86650000', '哈密地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652222', '巴里坤哈萨克自治县', '839200', '86652200', '86650000', '86652200,86650000', '哈密地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652223', '伊吾县', '839300', '86652200', '86650000', '86652200,86650000', '哈密地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652300', '昌吉回族自治州', '831100', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86652328,86652327,86652325,86652324,86652323,86652303,86652302,86652301');
INSERT INTO `area` VALUES ('86652301', '昌吉市', '831100', '86652300', '86650000', '86652300,86650000', '昌吉回族自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652302', '阜康市', '831500', '86652300', '86650000', '86652300,86650000', '昌吉回族自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652303', '米泉市', '831400', '86652300', '86650000', '86652300,86650000', '昌吉回族自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652323', '呼图壁县', '831200', '86652300', '86650000', '86652300,86650000', '昌吉回族自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652324', '玛纳斯县', '832200', '86652300', '86650000', '86652300,86650000', '昌吉回族自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652325', '奇台县', '831800', '86652300', '86650000', '86652300,86650000', '昌吉回族自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652327', '吉木萨尔县', '831700', '86652300', '86650000', '86652300,86650000', '昌吉回族自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652328', '木垒哈萨克自治县', '831900', '86652300', '86650000', '86652300,86650000', '昌吉回族自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652700', '博尔塔拉蒙古自治州', '833400', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86652723,86652722,86652701');
INSERT INTO `area` VALUES ('86652701', '博乐市', '833400', '86652700', '86650000', '86652700,86650000', '博尔塔拉蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652722', '精河县', '833300', '86652700', '86650000', '86652700,86650000', '博尔塔拉蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652723', '温泉县', '833500', '86652700', '86650000', '86652700,86650000', '博尔塔拉蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652800', '巴音郭楞蒙古自治州', '841000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86652829,86652828,86652827,86652826,86652825,86652824,86652823,86652822,86652801');
INSERT INTO `area` VALUES ('86652801', '库尔勒市', '841000', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652822', '轮台县', '841600', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652823', '尉犁县', '841500', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652824', '若羌县', '841800', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652825', '且末县', '841900', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652826', '焉耆回族自治县', '841100', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652827', '和静县', '841300', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652828', '和硕县', '841200', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652829', '博湖县', '841400', '86652800', '86650000', '86652800,86650000', '巴音郭楞蒙古自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652900', '阿克苏地区', '843000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86652929,86652928,86652927,86652926,86652925,86652924,86652923,86652922,86652901');
INSERT INTO `area` VALUES ('86652901', '阿克苏市', '843000', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652922', '温宿县', '843100', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652923', '库车县', '842000', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652924', '沙雅县', '842200', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652925', '新和县', '842100', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652926', '拜城县', '842300', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652927', '乌什县', '843400', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652928', '阿瓦提县', '843200', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86652929', '柯坪县', '845350', '86652900', '86650000', '86652900,86650000', '阿克苏地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653000', '克孜勒苏柯尔克孜自治州', '845350', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86653024,86653023,86653022,86653001');
INSERT INTO `area` VALUES ('86653001', '阿图什市', '845350', '86653000', '86650000', '86653000,86650000', '克孜勒苏柯尔克孜自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653022', '阿克陶县', '845550', '86653000', '86650000', '86653000,86650000', '克孜勒苏柯尔克孜自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653023', '阿合奇县', '843500', '86653000', '86650000', '86653000,86650000', '克孜勒苏柯尔克孜自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653024', '乌恰县', '845450', '86653000', '86650000', '86653000,86650000', '克孜勒苏柯尔克孜自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653100', '喀什地区', '844000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86653131,86653130,86653129,86653128,86653127,86653126,86653125,86653124,86653123,86653122,86653121,86653101');
INSERT INTO `area` VALUES ('86653101', '喀什市', '844000', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653121', '疏附县', '844100', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653122', '疏勒县', '844200', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653123', '英吉沙县', '844500', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653124', '泽普县', '844800', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653125', '莎车县', '844700', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653126', '叶城县', '844900', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653127', '麦盖提县', '844600', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653128', '岳普湖县', '844400', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653129', '伽师县', '844300', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653130', '巴楚县', '843800', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653131', '塔什库尔干塔吉克自治县', '845250', '86653100', '86650000', '86653100,86650000', '喀什地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653200', '和田地区', '848000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86653227,86653226,86653225,86653224,86653223,86653222,86653221,86653201');
INSERT INTO `area` VALUES ('86653201', '和田市', '848000', '86653200', '86650000', '86653200,86650000', '和田地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653221', '和田县', '848000', '86653200', '86650000', '86653200,86650000', '和田地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653222', '墨玉县', '848100', '86653200', '86650000', '86653200,86650000', '和田地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653223', '皮山县', '845150', '86653200', '86650000', '86653200,86650000', '和田地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653224', '洛浦县', '848200', '86653200', '86650000', '86653200,86650000', '和田地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653225', '策勒县', '848300', '86653200', '86650000', '86653200,86650000', '和田地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653226', '于田县', '848400', '86653200', '86650000', '86653200,86650000', '和田地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86653227', '民丰县', '848500', '86653200', '86650000', '86653200,86650000', '和田地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654000', '伊犁哈萨克自治州', '835000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86654028,86654027,86654026,86654025,86654024,86654023,86654022,86654021,86654003,86654002');
INSERT INTO `area` VALUES ('86654002', '伊宁市', '835000', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654003', '奎屯市', '833200', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654021', '伊宁县', '835100', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654022', '察布查尔锡伯自治县', '835300', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654023', '霍城县', '835200', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654024', '巩留县', '835400', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654025', '新源县', '835800', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654026', '昭苏县', '835600', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654027', '特克斯县', '835500', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654028', '尼勒克县', '835700', '86654000', '86650000', '86654000,86650000', '伊犁哈萨克自治州,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654200', '塔城地区', '834700', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86654226,86654225,86654224,86654223,86654221,86654202,86654201');
INSERT INTO `area` VALUES ('86654201', '塔城市', '834300', '86654200', '86650000', '86654200,86650000', '塔城地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654202', '乌苏市', '833300', '86654200', '86650000', '86654200,86650000', '塔城地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654221', '额敏县', '834600', '86654200', '86650000', '86654200,86650000', '塔城地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654223', '沙湾县', '832100', '86654200', '86650000', '86654200,86650000', '塔城地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654224', '托里县', '834500', '86654200', '86650000', '86654200,86650000', '塔城地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654225', '裕民县', '834800', '86654200', '86650000', '86654200,86650000', '塔城地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654226', '和布克赛尔蒙古自治县', '834400', '86654200', '86650000', '86654200,86650000', '塔城地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654300', '阿勒泰地区', '836500', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86654326,86654325,86654324,86654323,86654322,86654321,86654301');
INSERT INTO `area` VALUES ('86654301', '阿勒泰市', '836500', '86654300', '86650000', '86654300,86650000', '阿勒泰地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654321', '布尔津县', '836600', '86654300', '86650000', '86654300,86650000', '阿勒泰地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654322', '富蕴县', '836100', '86654300', '86650000', '86654300,86650000', '阿勒泰地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654323', '福海县', '836400', '86654300', '86650000', '86654300,86650000', '阿勒泰地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654324', '哈巴河县', '836700', '86654300', '86650000', '86654300,86650000', '阿勒泰地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654325', '青河县', '836200', '86654300', '86650000', '86654300,86650000', '阿勒泰地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86654326', '吉木乃县', '836800', '86654300', '86650000', '86654300,86650000', '阿勒泰地区,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86659000', '省直辖行政单位', '832000', '86650000', '86650000', '86650000', '新疆维吾尔自治区', '86659004,86659003,86659002,86659001');
INSERT INTO `area` VALUES ('86659001', '石河子市', '832000', '86659000', '86650000', '86659000,86650000', '省直辖行政单位,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86659002', '阿拉尔市', '843300', '86659000', '86650000', '86659000,86650000', '省直辖行政单位,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86659003', '图木舒克市', '844000', '86659000', '86650000', '86659000,86650000', '省直辖行政单位,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86659004', '五家渠市', '831300', '86659000', '86650000', '86659000,86650000', '省直辖行政单位,新疆维吾尔自治区', null);
INSERT INTO `area` VALUES ('86710000', '台湾省', null, '0', null, null, null, null);
INSERT INTO `area` VALUES ('86810000', '香港特别行政区', null, '0', null, null, null, null);
INSERT INTO `area` VALUES ('86820000', '澳门特别行政区', null, '0', null, null, null, null);
