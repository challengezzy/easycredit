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
  `mortgagorid` int(10) DEFAULT NULL COMMENT '�����id',
  `companyname` varchar(64) DEFAULT NULL COMMENT '��˾����',
  `department` varchar(64) DEFAULT NULL COMMENT '����',
  `position` int(10) DEFAULT NULL COMMENT 'ְλ�ֵ䣬0�������ˣ�1���߼�������Ա��2���м�������Ա��3��һ�������Ա��4��һ����ʽԱ����5����ǲԱ����6��������Ա��7������',
  `companytype` int(10) DEFAULT NULL COMMENT '��˾�����ֵ䣬0��������ҵ��λ��1������2�����ʣ�3�����ʣ�4����Ӫ��5�����壬6������',
  `primarybusiness` varchar(255) DEFAULT NULL COMMENT '��Ӫҵ��',
  `licenceno` varchar(64) DEFAULT NULL COMMENT 'Ӫҵִ�ձ��',
  `registerdate` datetime(5) DEFAULT NULL COMMENT 'Ӫҵִ��ע������',
  `limittype` int(5) DEFAULT NULL COMMENT 'Ӫҵִ���������ͣ�0�������ڣ�1��������',
  `limitdate` datetime(5) DEFAULT NULL COMMENT 'Ӫҵִ�յ�������',
  `registeredcapital` double(20,0) DEFAULT NULL COMMENT 'ע���ʱ�',
  `areaid` int(5) DEFAULT NULL COMMENT '��ҵ������id',
  `detailaddress` varchar(255) DEFAULT NULL COMMENT 'ʵ�ʾ�Ӫ��ϸ��ַ',
  `entrydate` int(10) DEFAULT NULL COMMENT '������ְ��˾ʱ��',
  `incomeperyear` double(20,0) DEFAULT NULL COMMENT '��������',
  `incomepermonth` double(20,0) DEFAULT NULL COMMENT '������',
  `otherincomepermonth` double(20,0) DEFAULT NULL COMMENT 'ÿ����������',
  `otherincomeresourse` varchar(255) DEFAULT NULL COMMENT '������Դ',
  `supportnum` int(10) DEFAULT NULL COMMENT 'Ŀǰ�蹩������',
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
  `orderid` int(10) DEFAULT NULL COMMENT 'ҵ�����뵥id',
  `imageurl` varchar(255) DEFAULT NULL COMMENT 'ͼƬ·��',
  `imagetype` int(10) DEFAULT NULL COMMENT 'ͼƬ�����ֵ䣬0��Ӫҵִ�գ�1������֤����2�����֤��3����Ӫ����������ϣ�4�������5��˰��Ǽ�֤��6����ż���֤��7������˻��ڱ���8����ż���ڱ���9������˽��֤��10��������ˮ��11����Ӫ����ʹ��Ȩ֤�����ϣ�12��������13������������Ȩ��',
  `comments` varchar(255) DEFAULT NULL COMMENT '��ע',
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
  `mortgagorid` int(10) DEFAULT NULL COMMENT '�����id',
  `spousename` varchar(64) DEFAULT NULL COMMENT '��ż����',
  `idnumber` varchar(64) DEFAULT NULL COMMENT '��ż���֤��',
  `cellphone` varchar(64) DEFAULT NULL COMMENT '��ż�ֻ���',
  `registeraddress` varchar(255) DEFAULT NULL COMMENT '��ż������ַ',
  `contactaddresstype` varchar(255) DEFAULT NULL COMMENT '��ż��ϵ��ַ�����ֵ䣬0���뻧����ַ��ͬ��1������������ϵ��ַ��ͬ',
  `correlation1name` varchar(64) DEFAULT NULL COMMENT '������ϵ��1����',
  `correlation1type` int(10) DEFAULT NULL COMMENT '������ϵ��1�����ֵ䣬0��������1�����ѣ�2��ͬ��',
  `correlation1cellphone` varchar(64) DEFAULT NULL COMMENT '������ϵ��1�ֻ���',
  `correlation2name` varchar(64) DEFAULT NULL COMMENT '������ϵ��2����',
  `correlation2type` int(10) DEFAULT NULL COMMENT '������ϵ��2�����ֵ䣬0��������1�����ѣ�2��ͬ��',
  `correlation2cellphone` varchar(64) DEFAULT NULL COMMENT '������ϵ��2�ֻ���',
  `reterence1name` varchar(64) DEFAULT NULL COMMENT '����֤����1����',
  `reterence1depart` varchar(64) DEFAULT NULL COMMENT '����֤����1����',
  `reterence1position` varchar(64) DEFAULT NULL COMMENT '����֤����1ְλ',
  `reterence1cellphone` varchar(64) DEFAULT NULL COMMENT '����֤����1�ֻ���',
  `reterence2name` varchar(64) DEFAULT NULL COMMENT '����֤����2����',
  `reterence2depart` varchar(64) DEFAULT NULL COMMENT '����֤����2����',
  `reterence2position` varchar(64) DEFAULT NULL COMMENT '����֤����2ְλ',
  `reterence2cellphone` varchar(64) DEFAULT NULL COMMENT '����֤����2�ֻ���',
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
  `mortgagorid` int(10) DEFAULT NULL COMMENT '�����id',
  `houseproperty` int(10) DEFAULT NULL COMMENT '���������ֵ䣬0�����ɷ�����1�����ޣ�2��������ͬס��3����λ���ᣬ4������',
  `housingloan` double(20,0) DEFAULT NULL COMMENT '�»�����',
  `residentialaddress` varchar(255) DEFAULT NULL COMMENT '��ס��ַ',
  `registeraddress` varchar(255) DEFAULT NULL COMMENT '������ַ',
  `contactaddresstype` int(10) DEFAULT NULL COMMENT '��ϵ��ַ�����ֵ䣬0����ס��ַ��1��������ַ',
  `citylife` int(10) DEFAULT NULL COMMENT '�ڴ˳�������ʱ��',
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
  `mortgagorname` varchar(64) DEFAULT NULL COMMENT '���������',
  `idnumber` varchar(64) DEFAULT NULL COMMENT '���֤��',
  `sex` int(5) DEFAULT NULL COMMENT '�Ա�0���У�1��Ů',
  `matrimonial` int(10) DEFAULT NULL COMMENT '����״���ֵ䣬0��δ�飬1���ѻ�����Ů��2���ѻ�����Ů',
  `educationalstatus` int(10) DEFAULT NULL COMMENT '����״̬�ֵ䣬0����ʿ�о�����1��˶ʿ�о�����2����ѧ���ƣ�3����ѧר�ƺ�ר��ѧУ��4���е�רҵѧУ��5������ѧУ��6�����У�7�����У�8��Сѧ��9����ä�����ä��10������',
  `workinglife` int(10) DEFAULT NULL COMMENT '��ҵ����',
  `childrennum` int(10) DEFAULT NULL COMMENT '��Ů����',
  `email` varchar(64) DEFAULT NULL COMMENT '��������',
  `cellphone` varchar(64) DEFAULT NULL COMMENT '�ֻ���',
  `telephone` varchar(64) DEFAULT NULL COMMENT '�̶��绰',
  `userid` int(10) DEFAULT NULL COMMENT '������',
  `createtime` datetime(5) DEFAULT NULL COMMENT '����ʱ��',
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
  `orderid` int(10) DEFAULT NULL COMMENT 'ҵ�����뵥id',
  `operatorid` int(10) DEFAULT NULL COMMENT '������id',
  `assigntime` datetime(5) DEFAULT NULL COMMENT '���񵽴�ʱ��',
  `submittime` datetime(5) DEFAULT NULL COMMENT '�����ύʱ��',
  `resultflag` int(10) DEFAULT NULL COMMENT '��������ֵ䣬0�������1��ͬ��',
  `comments` varchar(255) DEFAULT NULL COMMENT '�������',
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
  `orderid` int(10) DEFAULT NULL COMMENT 'ҵ�����뵥id',
  `loanno` varchar(64) DEFAULT NULL COMMENT '��ݱ�ţ�ID��',
  `loanamount` double(20,0) DEFAULT NULL COMMENT '�ſ���',
  `loanrate` double(20,0) DEFAULT NULL COMMENT '�ſ�����',
  `loantimelimit` int(10) DEFAULT NULL COMMENT '�ſ�����',
  `loantime` datetime(5) DEFAULT NULL COMMENT '�ſ�ʱ��',
  `loanlimittime` datetime(5) DEFAULT NULL COMMENT '����ʱ��',
  `norepaymentamount` double(20,0) DEFAULT NULL COMMENT 'δ������',
  `loanstatus` int(10) DEFAULT NULL COMMENT '����״̬�ֵ䣬0��δ���1���ѻ���',
  `comments` varchar(255) DEFAULT NULL COMMENT '�ſ����',
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
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '��Ʒid',
  `orderno` varchar(64) DEFAULT NULL COMMENT 'ҵ�����뵥���',
  `productid` int(10) DEFAULT NULL,
  `mortgagorid` int(10) DEFAULT NULL COMMENT '�����id',
  `status` int(10) DEFAULT NULL COMMENT 'ҵ��״̬�ֵ䣬-1����һ�����������Ϣ���ݴ棬-2���ڶ�������ҵ��Ϣ���ݴ棬-3���������������Ϣ���ݴ棬-4�����Ĳ��������ϴ����ݴ棬0�������У�1�������У�2�������������У�3������ͨ����4�������ܾ���5���˻�',
  `operatorid` int(10) DEFAULT NULL COMMENT '������',
  `createtime` datetime(5) DEFAULT NULL COMMENT '��������ʱ��',
  `comments` varchar(255) DEFAULT NULL COMMENT '��ע',
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
  `applicationamount` double(10,0) DEFAULT NULL COMMENT '������',
  `applicationlimit` int(10) DEFAULT NULL COMMENT '��������',
  `avilblemonthlyrepayment` double(10,0) DEFAULT NULL COMMENT '�ɽ����»�����',
  `tradecode` varchar(64) DEFAULT NULL COMMENT '��ҵͶ�����',
  `tradename` varchar(64) DEFAULT NULL COMMENT '��ҵͶ������',
  `purpose` varchar(255) DEFAULT NULL COMMENT '�����;˵��',
  `sourceofrepayment` varchar(255) DEFAULT NULL COMMENT '�����Դ˵��',
  `comments` varchar(255) DEFAULT NULL COMMENT '��ע',
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
  `organizationtype` int(10) DEFAULT NULL COMMENT '��֯���ͽ�ɫ�ֵ䣬0�������飬1�������飬2�������������飬3��ϵͳ������',
  `organizationname` varchar(64) DEFAULT NULL COMMENT '��֯��������',
  `userid` int(10) DEFAULT NULL COMMENT '������',
  `createtime` datetime(5) DEFAULT NULL COMMENT '����ʱ��',
  `comments` varchar(64) DEFAULT NULL COMMENT '��ע',
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
  `organizationid` int(10) DEFAULT NULL COMMENT '��֯����id',
  `authoritytypeflag` int(10) DEFAULT NULL COMMENT '����Ȩ���ֵ䣬0���û��������1����Ʒ����2���ͻ�����3�����뵥������4�����ά����5���ۺϲ�ѯͳ�ƣ�6��Ȩ�����ã�7���ͻ���Ϣ����',
  `comments` varchar(64) DEFAULT NULL COMMENT '��ע�������ֶ�',
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
  `organizationid` int(10) DEFAULT NULL COMMENT '��֯����id',
  `organizationareaid` int(10) DEFAULT NULL COMMENT '��֯�����ɹ��������id',
  `comments` varchar(64) DEFAULT NULL COMMENT '��ע�������ֶ�',
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
  `productname` varchar(255) DEFAULT NULL COMMENT '��Ʒ����',
  `productno` varchar(64) DEFAULT NULL COMMENT '��Ʒ���',
  `userid` int(10) DEFAULT NULL COMMENT '������',
  `comments` varchar(255) DEFAULT NULL COMMENT '��Ʒ˵����������',
  `createtime` datetime(5) DEFAULT NULL COMMENT '����ʱ��',
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
  `productid` int(10) DEFAULT NULL COMMENT '��Ʒid',
  `evidenceurl` varchar(255) DEFAULT NULL COMMENT '��Ʒ����ͼ��·��',
  `evidencedescribe` varchar(255) DEFAULT NULL COMMENT '��Ʒ����ͼ������',
  `displayorder` int(5) DEFAULT NULL COMMENT '��ʾ˳���',
  `operatorid` int(10) DEFAULT NULL COMMENT '������',
  `createdate` datetime DEFAULT NULL COMMENT '����ʱ��',
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
  `productid` int(10) DEFAULT NULL COMMENT '��ƷID',
  `organizationid` int(10) DEFAULT NULL COMMENT '��֯����id',
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
  `username` varchar(64) DEFAULT NULL COMMENT '�û���',
  `password` varchar(64) DEFAULT NULL COMMENT '��½����',
  `cellphone` varchar(64) DEFAULT NULL COMMENT '�ֻ���',
  `mail` varchar(64) DEFAULT NULL COMMENT '����',
  `organizationid` int(10) DEFAULT NULL COMMENT '��֯����id',
  `companyname` varchar(64) DEFAULT NULL COMMENT '��˾����',
  `nickname` varchar(64) DEFAULT NULL COMMENT '�ǳ�',
  `applyproductflag` int(10) DEFAULT '1' COMMENT '�Ƿ��������Ʒ��Ȩ�ޣ�0����1����',
  `usertype` int(10) DEFAULT NULL COMMENT '�û����ͣ�0����Ա�ͻ���1��ϵͳ�û���2������Ա��3�������',
  `comments` varchar(64) DEFAULT NULL COMMENT '��ע',
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
INSERT INTO `area` VALUES ('86110000', '������', '100000', '0', null, null, null, '86110200,86110100');
INSERT INTO `area` VALUES ('86110100', '��Ͻ��', '100000', '86110000', '86110000', '86110000', '������', '86110117,86110116,86110115,86110114,86110113,86110112,86110111,86110109,86110108,86110107,86110106,86110105,86110104,86110103,86110102,86110101');
INSERT INTO `area` VALUES ('86110101', '������', '100000', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110102', '������', '100000', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110103', '������', '100000', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110104', '������', '100000', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110105', '������', '100000', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110106', '��̨��', '100000', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110107', 'ʯ��ɽ��', '100000', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110108', '������{}', '100000', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110109', '��ͷ����', '102300', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110111', '��ɽ��', '102400', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110112', 'ͨ����', '101100', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110113', '˳����', '101300', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110114', '��ƽ��', '102200', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110115', '������', '102600', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110116', '������', '101400', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110117', 'ƽ����', '101200', '86110100', '86110000', '86110100,86110000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86110200', '��', '101500', '86110000', '86110000', '86110000', '������', '86110229,86110228');
INSERT INTO `area` VALUES ('86110228', '������', '101500', '86110200', '86110000', '86110200,86110000', '��,������', null);
INSERT INTO `area` VALUES ('86110229', '������', '102100', '86110200', '86110000', '86110200,86110000', '��,������', null);
INSERT INTO `area` VALUES ('86120000', '�����', '300000', '0', null, null, null, '86120200,86120100');
INSERT INTO `area` VALUES ('86120100', '��Ͻ��', '300000', '86120000', '86120000', '86120000', '�����', '86120115,86120114,86120113,86120112,86120111,86120110,86120109,86120108,86120107,86120106,86120105,86120104,86120103,86120102,86120101');
INSERT INTO `area` VALUES ('86120101', '��ƽ��', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120102', '�Ӷ���', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120103', '������', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120104', '�Ͽ���', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120105', '�ӱ���', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120106', '������', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120107', '������', '300450', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120108', '������', '300480', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120109', '�����', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120110', '������', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120111', '������', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120112', '������', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120113', '������', '300000', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120114', '������', '301700', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120115', '������', '301800', '86120100', '86120000', '86120100,86120000', '��Ͻ��,�����', null);
INSERT INTO `area` VALUES ('86120200', '��', '301500', '86120000', '86120000', '86120000', '�����', '86120225,86120223,86120221');
INSERT INTO `area` VALUES ('86120221', '������', '301500', '86120200', '86120000', '86120200,86120000', '��,�����', null);
INSERT INTO `area` VALUES ('86120223', '������', '301600', '86120200', '86120000', '86120200,86120000', '��,�����', null);
INSERT INTO `area` VALUES ('86120225', '������', '301900', '86120200', '86120000', '86120200,86120000', '��,�����', null);
INSERT INTO `area` VALUES ('86130000', '�ӱ�ʡ', null, '0', null, null, null, '86131100,86131000,86130900,86130800,86130700,86130600,86130500,86130400,86130300,86130200,86130100');
INSERT INTO `area` VALUES ('86130100', 'ʯ��ׯ��', '050000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130185,86130184,86130183,86130182,86130181,86130133,86130132,86130131,86130130,86130129,86130128,86130127,86130126,86130125,86130124,86130123,86130121,86130108,86130107,86130105,86130104,86130103,86130102,86130101');
INSERT INTO `area` VALUES ('86130101', '��Ͻ��', '050000', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130102', '������', '050000', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130103', '�Ŷ���', '050000', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130104', '������', '050000', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130105', '�»���', '050000', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130107', '�������', '051000', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130108', 'ԣ����', '050000', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130121', '������', '050300', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130123', '������', '050800', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130124', '�����', '051430', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130125', '������', '050600', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130126', '������', '050500', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130127', '������', '051330', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130128', '������', '052500', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130129', '�޻���', '051230', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130130', '�޼���', '052400', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130131', 'ƽɽ��', '050400', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130132', 'Ԫ����', '051130', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130133', '�ԡ���', '051530', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130181', '������', '052300', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130182', '޻����', '052160', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130183', '������', '052200', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130184', '������', '050700', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130185', '¹Ȫ��', '050200', '86130100', '86130000', '86130100,86130000', 'ʯ��ׯ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130200', '��ɽ��', '063000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130283,86130281,86130230,86130229,86130227,86130225,86130224,86130223,86130208,86130207,86130205,86130204,86130203,86130202,86130201');
INSERT INTO `area` VALUES ('86130201', '��Ͻ��', '063000', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130202', '·����', '063000', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130203', '·����', '063000', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130204', '��ұ��', '063000', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130205', '��ƽ��', '063000', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130207', '������', '063300', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130208', '������', '063000', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130223', '�С���', '063700', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130224', '������', '063500', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130225', '��ͤ��', '063600', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130227', 'Ǩ����', '064300', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130229', '������', '064100', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130230', '�ƺ���', '063200', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130281', '����', '064200', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130283', 'Ǩ����', '064400', '86130200', '86130000', '86130200,86130000', '��ɽ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130300', '�ػʵ���', '066000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130324,86130323,86130322,86130321,86130304,86130303,86130302,86130301');
INSERT INTO `area` VALUES ('86130301', '��Ͻ��', '066000', '86130300', '86130000', '86130300,86130000', '�ػʵ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130302', '������', '066000', '86130300', '86130000', '86130300,86130000', '�ػʵ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130303', 'ɽ������', '066200', '86130300', '86130000', '86130300,86130000', '�ػʵ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130304', '��������', '066100', '86130300', '86130000', '86130300,86130000', '�ػʵ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130321', '��������������', '066500', '86130300', '86130000', '86130300,86130000', '�ػʵ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130322', '������', '066600', '86130300', '86130000', '86130300,86130000', '�ػʵ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130323', '������', '066300', '86130300', '86130000', '86130300,86130000', '�ػʵ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130324', '¬����', '066400', '86130300', '86130000', '86130300,86130000', '�ػʵ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130400', '������', '056000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130481,86130435,86130434,86130433,86130432,86130431,86130430,86130429,86130428,86130427,86130426,86130425,86130424,86130423,86130421,86130406,86130404,86130403,86130402,86130401');
INSERT INTO `area` VALUES ('86130401', '��Ͻ��', '056000', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130402', '��ɽ��', '056000', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130403', '��̨��', '056000', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130404', '������', '056000', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130406', '������', '056200', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130421', '������', '056000', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130423', '������', '056600', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130424', '�ɰ���', '056700', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130425', '������', '056900', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130426', '�桡��', '056400', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130427', '�š���', '056500', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130428', '������', '057550', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130429', '������', '057150', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130430', '����', '057450', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130431', '������', '057350', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130432', '��ƽ��', '057650', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130433', '������', '057750', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130434', 'κ����', '056800', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130435', '������', '057250', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130481', '�䰲��', '056300', '86130400', '86130000', '86130400,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130500', '��̨��', '054000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130582,86130581,86130535,86130534,86130533,86130532,86130531,86130530,86130529,86130528,86130527,86130526,86130525,86130524,86130523,86130522,86130521,86130503,86130502,86130501');
INSERT INTO `area` VALUES ('86130501', '��Ͻ��', '054000', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130502', '�Ŷ���', '054000', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130503', '������', '054000', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130521', '��̨��', '054000', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130522', '�ٳ���', '054300', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130523', '������', '054200', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130524', '������', '055450', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130525', '¡Ң��', '055350', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130526', '�Ρ���', '055150', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130527', '�Ϻ���', '054400', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130528', '������', '055550', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130529', '��¹��', '055250', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130530', '�º���', '051730', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130531', '������', '054600', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130532', 'ƽ����', '054500', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130533', '������', '054700', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130534', '�����', '054800', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130535', '������', '054900', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130581', '�Ϲ���', '051800', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130582', 'ɳ����', '054100', '86130500', '86130000', '86130500,86130000', '��̨��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130600', '������', '071000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130684,86130683,86130682,86130681,86130638,86130637,86130636,86130635,86130634,86130633,86130632,86130631,86130630,86130629,86130628,86130627,86130626,86130625,86130624,86130623,86130622,86130621,86130604,86130603,86130602,86130601');
INSERT INTO `area` VALUES ('86130601', '��Ͻ��', '071000', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130602', '������', '071000', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130603', '������', '071000', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130604', '������', '071000', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130621', '������', '072150', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130622', '��Է��', '071100', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130623', '�ˮ��', '074100', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130624', '��ƽ��', '073200', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130625', '��ˮ��', '072550', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130626', '������', '072650', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130627', '�ơ���', '072350', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130628', '������', '071500', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130629', '�ݳ���', '071700', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130630', '�Դ��', '102900', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130631', '������', '072450', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130632', '������', '071600', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130633', '�ס���', '074200', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130634', '������', '073100', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130635', '󻡡��', '071400', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130636', '˳ƽ��', '072250', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130637', '��Ұ��', '071300', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130638', '�ۡ���', '071800', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130681', '������', '072750', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130682', '������', '073000', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130683', '������', '071200', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130684', '�߱�����', '074000', '86130600', '86130000', '86130600,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130700', '�żҿ���', '075000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130733,86130732,86130731,86130730,86130729,86130728,86130727,86130726,86130725,86130724,86130723,86130722,86130721,86130706,86130705,86130703,86130702,86130701');
INSERT INTO `area` VALUES ('86130701', '��Ͻ��', '075000', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130702', '�Ŷ���', '075000', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130703', '������', '075000', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130705', '������', '075000', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130706', '�»�԰��', '075000', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130721', '������', '075100', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130722', '�ű���', '076450', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130723', '������', '076650', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130724', '��Դ��', '076550', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130725', '������', '076750', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130726', 'ε����', '075700', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130727', '��ԭ��', '075800', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130728', '������', '076150', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130729', '��ȫ��', '076250', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130730', '������', '075400', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130731', '��¹��', '075600', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130732', '�����', '075500', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130733', '������', '076350', '86130700', '86130000', '86130700,86130000', '�żҿ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130800', '�е���', '067000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130828,86130827,86130826,86130825,86130824,86130823,86130822,86130821,86130804,86130803,86130802,86130801');
INSERT INTO `area` VALUES ('86130801', '��Ͻ��', '067000', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130802', '˫����', '067000', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130803', '˫����', '067000', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130804', 'ӥ��Ӫ�ӿ���', '067200', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130821', '�е���', '067400', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130822', '��¡��', '067300', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130823', 'ƽȪ��', '067500', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130824', '��ƽ��', '068250', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130825', '¡����', '068150', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130826', '��������������', '068350', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130827', '�������������', '067600', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130828', 'Χ�������ɹ���������', '068450', '86130800', '86130000', '86130800,86130000', '�е���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130900', '������', '061000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86130984,86130983,86130982,86130981,86130930,86130929,86130928,86130927,86130926,86130925,86130924,86130923,86130922,86130921,86130903,86130902,86130901');
INSERT INTO `area` VALUES ('86130901', '��Ͻ��', '061000', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130902', '�»���', '061000', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130903', '�˺���', '061000', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130921', '�ס���', '061000', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130922', '�ࡡ��', '062650', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130923', '������', '061600', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130924', '������', '061200', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130925', '��ɽ��', '061300', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130926', '������', '062350', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130927', '��Ƥ��', '061500', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130928', '������', '061800', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130929', '�ס���', '062250', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130930', '�ϴ����������', '061400', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130981', '��ͷ��', '062150', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130982', '������', '062550', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130983', '������', '061100', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86130984', '�Ӽ���', '062450', '86130900', '86130000', '86130900,86130000', '������,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131000', '�ȷ���', '065000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86131082,86131081,86131028,86131026,86131025,86131024,86131023,86131022,86131003,86131002,86131001');
INSERT INTO `area` VALUES ('86131001', '��Ͻ��', '065000', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131002', '������', '065000', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131003', '������', '065000', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131022', '�̰���', '065500', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131023', '������', '065600', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131024', '�����', '065400', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131025', '�����', '065900', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131026', '�İ���', '065800', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131028', '�󳧻���������', '065300', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131081', '������', '065700', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131082', '������', '065200', '86131000', '86130000', '86131000,86130000', '�ȷ���,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131100', '��ˮ��', '053000', '86130000', '86130000', '86130000', '�ӱ�ʡ', '86131182,86131181,86131128,86131127,86131126,86131125,86131124,86131123,86131122,86131121,86131102,86131101');
INSERT INTO `area` VALUES ('86131101', '��Ͻ��', '053000', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131102', '�ҳ���', '053000', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131121', '��ǿ��', '053100', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131122', '������', '053400', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131123', '��ǿ��', '053300', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131124', '������', '053900', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131125', '��ƽ��', '053600', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131126', '�ʳ���', '053800', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131127', '������', '053500', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131128', '������', '053700', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131181', '������', '053200', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86131182', '������', '052800', '86131100', '86130000', '86131100,86130000', '��ˮ��,�ӱ�ʡ', null);
INSERT INTO `area` VALUES ('86140000', 'ɽ��ʡ', null, '0', null, null, null, '86141100,86141000,86140900,86140800,86140700,86140600,86140500,86140400,86140300,86140200,86140100');
INSERT INTO `area` VALUES ('86140100', '̫ԭ��', '030000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140181,86140123,86140122,86140121,86140110,86140109,86140108,86140107,86140106,86140105,86140101');
INSERT INTO `area` VALUES ('86140101', '��Ͻ��', '030000', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140105', 'С����', '030000', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140106', 'ӭ����', '030000', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140107', '�ӻ�����', '030000', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140108', '���ƺ��', '030000', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140109', '�������', '030000', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140110', '��Դ��', '030000', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140121', '������', '030400', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140122', '������', '030100', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140123', '¦����', '030300', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140181', '�Ž���', '030200', '86140100', '86140000', '86140100,86140000', '̫ԭ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140200', '��ͬ��', '037000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140227,86140226,86140225,86140224,86140223,86140222,86140221,86140212,86140211,86140203,86140202,86140201');
INSERT INTO `area` VALUES ('86140201', '��Ͻ��', '037000', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140202', '�ǡ���', '037000', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140203', '����', '037000', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140211', '�Ͻ���', '037000', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140212', '������', '037000', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140221', '������', '038100', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140222', '������', '038200', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140223', '������', '037500', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140224', '������', '034400', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140225', '��Դ��', '037400', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140226', '������', '037100', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140227', '��ͬ��', '037300', '86140200', '86140000', '86140200,86140000', '��ͬ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140300', '��Ȫ��', '045000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140322,86140321,86140311,86140303,86140302,86140301');
INSERT INTO `area` VALUES ('86140301', '��Ͻ��', '045000', '86140300', '86140000', '86140300,86140000', '��Ȫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140302', '�ǡ���', '045000', '86140300', '86140000', '86140300,86140000', '��Ȫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140303', '����', '045000', '86140300', '86140000', '86140300,86140000', '��Ȫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140311', '������', '045000', '86140300', '86140000', '86140300,86140000', '��Ȫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140321', 'ƽ����', '045200', '86140300', '86140000', '86140300,86140000', '��Ȫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140322', '�ۡ���', '045100', '86140300', '86140000', '86140300,86140000', '��Ȫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140400', '������', '046000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140481,86140431,86140430,86140429,86140428,86140427,86140426,86140425,86140424,86140423,86140421,86140411,86140402,86140401');
INSERT INTO `area` VALUES ('86140401', '��Ͻ��', '046000', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140402', '�ǡ���', '046000', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140411', '������', '046000', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140421', '������', '046000', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140423', '��ԫ��', '046200', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140424', '������', '046100', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140425', 'ƽ˳��', '047400', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140426', '�����', '047600', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140427', '������', '047300', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140428', '������', '046600', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140429', '������', '046300', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140430', '�ߡ���', '046400', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140431', '��Դ��', '046500', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140481', 'º����', '047500', '86140400', '86140000', '86140400,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140500', '������', '048000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140581,86140525,86140524,86140522,86140521,86140502,86140501');
INSERT INTO `area` VALUES ('86140501', '��Ͻ��', '048000', '86140500', '86140000', '86140500,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140502', '�ǡ���', '048000', '86140500', '86140000', '86140500,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140521', '��ˮ��', '048200', '86140500', '86140000', '86140500,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140522', '������', '048100', '86140500', '86140000', '86140500,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140524', '�괨��', '048300', '86140500', '86140000', '86140500,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140525', '������', '048000', '86140500', '86140000', '86140500,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140581', '��ƽ��', '046700', '86140500', '86140000', '86140500,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140600', '˷����', '038500', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140624,86140623,86140622,86140621,86140603,86140602,86140601');
INSERT INTO `area` VALUES ('86140601', '��Ͻ��', '038500', '86140600', '86140000', '86140600,86140000', '˷����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140602', '˷����', '038500', '86140600', '86140000', '86140600,86140000', '˷����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140603', 'ƽ³��', '038500', '86140600', '86140000', '86140600,86140000', '˷����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140621', 'ɽ����', '038400', '86140600', '86140000', '86140600,86140000', '˷����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140622', 'Ӧ����', '037600', '86140600', '86140000', '86140600,86140000', '˷����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140623', '������', '037200', '86140600', '86140000', '86140600,86140000', '˷����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140624', '������', '038300', '86140600', '86140000', '86140600,86140000', '˷����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140700', '������', '030600', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140781,86140729,86140728,86140727,86140726,86140725,86140724,86140723,86140722,86140721,86140702,86140701');
INSERT INTO `area` VALUES ('86140701', '��Ͻ��', '030600', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140702', '�ܴ���', '030600', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140721', '������', '031800', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140722', '��Ȩ��', '032600', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140723', '��˳��', '032700', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140724', '������', '045300', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140725', '������', '031700', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140726', '̫����', '030800', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140727', '���', '030900', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140728', 'ƽң��', '031100', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140729', '��ʯ��', '031300', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140781', '������', '031200', '86140700', '86140000', '86140700,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140800', '�˳���', '044000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140882,86140881,86140830,86140829,86140828,86140827,86140826,86140825,86140824,86140823,86140822,86140821,86140802,86140801');
INSERT INTO `area` VALUES ('86140801', '��Ͻ��', '044000', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140802', '�κ���', '044000', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140821', '�����', '044100', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140822', '������', '044200', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140823', '��ϲ��', '043800', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140824', '�ɽ��', '043200', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140825', '�����', '043100', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140826', '筡���', '043600', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140827', 'ԫ����', '043700', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140828', '�ġ���', '044400', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140829', 'ƽ½��', '044300', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140830', '�ǳ���', '044600', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140881', '������', '044500', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140882', '�ӽ���', '043300', '86140800', '86140000', '86140800,86140000', '�˳���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140900', '������', '034000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86140981,86140932,86140931,86140930,86140929,86140928,86140927,86140926,86140925,86140924,86140923,86140922,86140921,86140902,86140901');
INSERT INTO `area` VALUES ('86140901', '��Ͻ��', '034000', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140902', '�ø���', '034000', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140921', '������', '035400', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140922', '��̨��', '035500', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140923', '������', '034200', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140924', '������', '034300', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140925', '������', '036000', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140926', '������', '035100', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140927', '�����', '036100', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140928', '��կ��', '036200', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140929', '����', '036300', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140930', '������', '036500', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140931', '������', '036600', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140932', 'ƫ����', '036400', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86140981', 'ԭƽ��', '034100', '86140900', '86140000', '86140900,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141000', '�ٷ���', '041000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86141082,86141081,86141034,86141033,86141032,86141031,86141030,86141029,86141028,86141027,86141026,86141025,86141024,86141023,86141022,86141021,86141002,86141001');
INSERT INTO `area` VALUES ('86141001', '��Ͻ��', '041000', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141002', 'Ң����', '041000', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141021', '������', '043400', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141022', '�����', '043500', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141023', '�����', '041500', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141024', '�鶴��', '031600', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141025', '�š���', '042400', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141026', '������', '042500', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141027', '��ɽ��', '042600', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141028', '������', '042200', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141029', '������', '042100', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141030', '������', '042300', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141031', '������', '041300', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141032', '������', '041400', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141033', '�ѡ���', '041200', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141034', '������', '031500', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141081', '������', '043000', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141082', '������', '031400', '86141000', '86140000', '86141000,86140000', '�ٷ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141100', '������', '033000', '86140000', '86140000', '86140000', 'ɽ��ʡ', '86141182,86141181,86141130,86141129,86141128,86141127,86141126,86141125,86141124,86141123,86141122,86141121,86141102,86141101');
INSERT INTO `area` VALUES ('86141101', '��Ͻ��', '033000', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141102', '��ʯ��', '033000', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141121', '��ˮ��', '032100', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141122', '������', '030500', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141123', '�ˡ���', '035300', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141124', '�١���', '033200', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141125', '������', '033300', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141126', 'ʯ¥��', '032500', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141127', 'ᰡ���', '035200', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141128', '��ɽ��', '033100', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141129', '������', '033400', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141130', '������', '032400', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141181', 'Т����', '032300', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86141182', '������', '032200', '86141100', '86140000', '86141100,86140000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86150000', '���ɹ�������', null, '0', null, null, null, '86152900,86152500,86152200,86150900,86150800,86150700,86150600,86150500,86150400,86150300,86150200,86150100');
INSERT INTO `area` VALUES ('86150100', '���ͺ�����', '010000', '86150000', '86150000', '86150000', '���ɹ�������', '86150125,86150124,86150123,86150122,86150121,86150105,86150104,86150103,86150102,86150101');
INSERT INTO `area` VALUES ('86150101', '��Ͻ��', '010000', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150102', '�³���', '010000', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150103', '������', '010000', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150104', '��Ȫ��', '010000', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150105', '������', '010000', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150121', '��Ĭ������', '010100', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150122', '�п�����', '010200', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150123', '���ָ����', '011500', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150124', '��ˮ����', '011600', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150125', '�䴨��', '011700', '86150100', '86150000', '86150100,86150000', '���ͺ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150200', '��ͷ��', '014000', '86150000', '86150000', '86150000', '���ɹ�������', '86150223,86150222,86150221,86150207,86150206,86150205,86150204,86150203,86150202,86150201');
INSERT INTO `area` VALUES ('86150201', '��Ͻ��', '014000', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150202', '������', '014000', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150203', '��������', '014000', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150204', '��ɽ��', '014000', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150205', 'ʯ����', '014000', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150206', '���ƿ���', '014000', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150207', '��ԭ��', '014000', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150221', '��Ĭ������', '014100', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150222', '������', '014200', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150223', '�����ï����������', '014500', '86150200', '86150000', '86150200,86150000', '��ͷ��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150300', '�ں���', '016000', '86150000', '86150000', '86150000', '���ɹ�������', '86150304,86150303,86150302,86150301');
INSERT INTO `area` VALUES ('86150301', '��Ͻ��', '016000', '86150300', '86150000', '86150300,86150000', '�ں���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150302', '��������', '016000', '86150300', '86150000', '86150300,86150000', '�ں���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150303', '������', '016000', '86150300', '86150000', '86150300,86150000', '�ں���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150304', '�ڴ���', '016000', '86150300', '86150000', '86150300,86150000', '�ں���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150400', '�����', '024000', '86150000', '86150000', '86150000', '���ɹ�������', '86150430,86150429,86150428,86150426,86150425,86150424,86150423,86150422,86150421,86150404,86150403,86150402,86150401');
INSERT INTO `area` VALUES ('86150401', '��Ͻ��', '024000', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150402', '��ɽ��', '024000', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150403', 'Ԫ��ɽ��', '024000', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150404', '��ɽ��', '024000', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150421', '��³�ƶ�����', '025500', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150422', '��������', '025450', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150423', '��������', '025150', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150424', '������', '025250', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150425', '��ʲ������', '025350', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150426', '��ţ����', '024500', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150428', '��������', '024400', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150429', '������', '024200', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150430', '������', '024300', '86150400', '86150000', '86150400,86150000', '�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150500', 'ͨ����', '028000', '86150000', '86150000', '86150000', '���ɹ�������', '86150581,86150526,86150525,86150524,86150523,86150522,86150521,86150502,86150501');
INSERT INTO `area` VALUES ('86150501', '��Ͻ��', '028000', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150502', '�ƶ�����', '028000', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150521', '�ƶ�����������', '029300', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150522', '�ƶ����������', '028100', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150523', '��³��', '028400', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150524', '������', '028200', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150525', '������', '028300', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150526', '��³����', '029100', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150581', '���ֹ�����', '029200', '86150500', '86150000', '86150500,86150000', 'ͨ����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150600', '������˹��', '017000', '86150000', '86150000', '86150000', '���ɹ�������', '86150627,86150626,86150625,86150624,86150623,86150622,86150621,86150602');
INSERT INTO `area` VALUES ('86150602', '��ʤ��', '017000', '86150600', '86150000', '86150600,86150000', '������˹��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150621', '��������', '017000', '86150600', '86150000', '86150600,86150000', '������˹��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150622', '׼�����', '017100', '86150600', '86150000', '86150600,86150000', '������˹��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150623', '���п�ǰ��', '016200', '86150600', '86150000', '86150600,86150000', '������˹��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150624', '���п���', '016100', '86150600', '86150000', '86150600,86150000', '������˹��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150625', '������', '017400', '86150600', '86150000', '86150600,86150000', '������˹��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150626', '������', '017300', '86150600', '86150000', '86150600,86150000', '������˹��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150627', '���������', '017200', '86150600', '86150000', '86150600,86150000', '������˹��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150700', '���ױ�����', '021000', '86150000', '86150000', '86150000', '���ɹ�������', '86150785,86150784,86150783,86150782,86150781,86150727,86150726,86150725,86150724,86150723,86150722,86150721,86150702,86150701');
INSERT INTO `area` VALUES ('86150701', '��Ͻ��', '021000', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150702', '��������', '021000', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150721', '������', '162750', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150722', 'Ī�����ߴ��Ӷ���������', '162850', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150723', '���״�������', '022450', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150724', '���¿���������', '021100', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150725', '�°Ͷ�����', '021500', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150726', '�°Ͷ�������', '021200', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150727', '�°Ͷ�������', '021300', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150781', '��������', '021400', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150782', '����ʯ��', '022150', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150783', '��������', '162650', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150784', '���������', '022250', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150785', '������', '022350', '86150700', '86150000', '86150700,86150000', '���ױ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150800', '�����׶���', '015000', '86150000', '86150000', '86150000', '���ɹ�������', '86150826,86150825,86150824,86150823,86150822,86150821,86150802,86150801');
INSERT INTO `area` VALUES ('86150801', '��Ͻ��', '015000', '86150800', '86150000', '86150800,86150000', '�����׶���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150802', '�ٺ���', '015000', '86150800', '86150000', '86150800,86150000', '�����׶���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150821', '��ԭ��', '015100', '86150800', '86150000', '86150800,86150000', '�����׶���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150822', '�����', '015200', '86150800', '86150000', '86150800,86150000', '�����׶���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150823', '������ǰ��', '014400', '86150800', '86150000', '86150800,86150000', '�����׶���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150824', '����������', '015300', '86150800', '86150000', '86150800,86150000', '�����׶���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150825', '�����غ���', '015500', '86150800', '86150000', '86150800,86150000', '�����׶���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150826', '��������', '015400', '86150800', '86150000', '86150800,86150000', '�����׶���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150900', '�����첼��', '012000', '86150000', '86150000', '86150000', '���ɹ�������', '86150981,86150929,86150928,86150927,86150926,86150925,86150924,86150923,86150922,86150921,86150902,86150901');
INSERT INTO `area` VALUES ('86150901', '��Ͻ��', '012000', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150902', '������', '012000', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150921', '׿����', '012300', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150922', '������', '013350', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150923', '�̶���', '013400', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150924', '�˺���', '013650', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150925', '������', '013750', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150926', '���������ǰ��', '012200', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150927', '�������������', '013500', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150928', '������������', '012400', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150929', '��������', '011800', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86150981', '������', '012100', '86150900', '86150000', '86150900,86150000', '�����첼��,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152200', '�˰���', '137400', '86150000', '86150000', '86150000', '���ɹ�������', '86152224,86152223,86152222,86152221,86152202,86152201');
INSERT INTO `area` VALUES ('86152201', '����������', '137400', '86152200', '86150000', '86152200,86150000', '�˰���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152202', '����ɽ��', '137400', '86152200', '86150000', '86152200,86150000', '�˰���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152221', '�ƶ�������ǰ��', '137400', '86152200', '86150000', '86152200,86150000', '�˰���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152222', '�ƶ�����������', '029400', '86152200', '86150000', '86152200,86150000', '�˰���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152223', '��������', '137600', '86152200', '86150000', '86152200,86150000', '�˰���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152224', 'ͻȪ��', '137500', '86152200', '86150000', '86152200,86150000', '�˰���,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152500', '���ֹ�����', '012600', '86150000', '86150000', '86150000', '���ɹ�������', '86152531,86152530,86152529,86152528,86152527,86152526,86152525,86152524,86152523,86152522,86152502,86152501');
INSERT INTO `area` VALUES ('86152501', '����������', '012600', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152502', '���ֺ�����', '026000', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152522', '���͸���', '011400', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152523', '����������', '011300', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152524', '����������', '011200', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152525', '������������', '026300', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152526', '������������', '026200', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152527', '̫������', '027000', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152528', '�����', '013250', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152529', '�������', '013800', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152530', '������', '027200', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152531', '������', '027300', '86152500', '86150000', '86152500,86150000', '���ֹ�����,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152900', '��������', '750300', '86150000', '86150000', '86150000', '���ɹ�������', '86152923,86152922,86152921');
INSERT INTO `area` VALUES ('86152921', '����������', '750300', '86152900', '86150000', '86152900,86150000', '��������,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152922', '����������', '737300', '86152900', '86150000', '86152900,86150000', '��������,���ɹ�������', null);
INSERT INTO `area` VALUES ('86152923', '�������', '735400', '86152900', '86150000', '86152900,86150000', '��������,���ɹ�������', null);
INSERT INTO `area` VALUES ('86210000', '����ʡ', null, '0', null, null, null, '86211400,86211300,86211200,86211100,86211000,86210900,86210800,86210700,86210600,86210500,86210400,86210300,86210200,86210100');
INSERT INTO `area` VALUES ('86210100', '������', '110000', '86210000', '86210000', '86210000', '����ʡ', '86210181,86210124,86210123,86210122,86210114,86210113,86210112,86210111,86210106,86210105,86210104,86210103,86210102,86210101');
INSERT INTO `area` VALUES ('86210101', '��Ͻ��', '110000', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210102', '��ƽ��', '110000', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210103', '�����', '110000', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210104', '����', '110000', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210105', '�ʹ���', '110000', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210106', '������', '110020', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210111', '�ռ�����', '110100', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210112', '������', '110000', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210113', '�³�����', '110000', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210114', '�ں���', '110000', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210122', '������', '110200', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210123', '��ƽ��', '110500', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210124', '������', '110400', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210181', '������', '110300', '86210100', '86210000', '86210100,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210200', '������', '116000', '86210000', '86210000', '86210000', '����ʡ', '86210283,86210282,86210281,86210224,86210213,86210212,86210211,86210204,86210203,86210202,86210201');
INSERT INTO `area` VALUES ('86210201', '��Ͻ��', '116000', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210202', '��ɽ��', '116000', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210203', '������', '116000', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210204', 'ɳ�ӿ���', '116000', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210211', '�ʾ�����', '116000', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210212', '��˳����', '116000', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210213', '������', '116000', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210224', '������', '116500', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210281', '�߷�����', '116300', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210282', '��������', '116200', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210283', 'ׯ����', '116400', '86210200', '86210000', '86210200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210300', '��ɽ��', '114000', '86210000', '86210000', '86210000', '����ʡ', '86210381,86210323,86210321,86210311,86210304,86210303,86210302,86210301');
INSERT INTO `area` VALUES ('86210301', '��Ͻ��', '114000', '86210300', '86210000', '86210300,86210000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210302', '������', '114000', '86210300', '86210000', '86210300,86210000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210303', '������', '114000', '86210300', '86210000', '86210300,86210000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210304', '��ɽ��', '114000', '86210300', '86210000', '86210300,86210000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210311', 'ǧɽ��', '114000', '86210300', '86210000', '86210300,86210000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210321', '̨����', '114100', '86210300', '86210000', '86210300,86210000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210323', '�������������', '118400', '86210300', '86210000', '86210300,86210000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210381', '������', '114200', '86210300', '86210000', '86210300,86210000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210400', '��˳��', '113000', '86210000', '86210000', '86210000', '����ʡ', '86210423,86210422,86210421,86210411,86210404,86210403,86210402,86210401');
INSERT INTO `area` VALUES ('86210401', '��Ͻ��', '113000', '86210400', '86210000', '86210400,86210000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86210402', '�¸���', '113000', '86210400', '86210000', '86210400,86210000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86210403', '������', '113000', '86210400', '86210000', '86210400,86210000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86210404', '������', '113000', '86210400', '86210000', '86210400,86210000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86210411', '˳����', '113000', '86210400', '86210000', '86210400,86210000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86210421', '��˳��', '113100', '86210400', '86210000', '86210400,86210000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86210422', '�±�����������', '113200', '86210400', '86210000', '86210400,86210000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86210423', '��ԭ����������', '113300', '86210400', '86210000', '86210400,86210000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86210500', '��Ϫ��', '117000', '86210000', '86210000', '86210000', '����ʡ', '86210522,86210521,86210505,86210504,86210503,86210502,86210501');
INSERT INTO `area` VALUES ('86210501', '��Ͻ��', '117000', '86210500', '86210000', '86210500,86210000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210502', 'ƽɽ��', '117000', '86210500', '86210000', '86210500,86210000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210503', 'Ϫ����', '117000', '86210500', '86210000', '86210500,86210000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210504', '��ɽ��', '117000', '86210500', '86210000', '86210500,86210000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210505', '�Ϸ���', '117000', '86210500', '86210000', '86210500,86210000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210521', '��Ϫ����������', '117100', '86210500', '86210000', '86210500,86210000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210522', '��������������', '117200', '86210500', '86210000', '86210500,86210000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86210600', '������', '118000', '86210000', '86210000', '86210000', '����ʡ', '86210682,86210681,86210624,86210604,86210603,86210602,86210601');
INSERT INTO `area` VALUES ('86210601', '��Ͻ��', '118000', '86210600', '86210000', '86210600,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210602', 'Ԫ����', '118000', '86210600', '86210000', '86210600,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210603', '������', '118000', '86210600', '86210000', '86210600,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210604', '����', '118000', '86210600', '86210000', '86210600,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210624', '�������������', '118200', '86210600', '86210000', '86210600,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210681', '������', '118300', '86210600', '86210000', '86210600,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210682', '�����', '118100', '86210600', '86210000', '86210600,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210700', '������', '121000', '86210000', '86210000', '86210000', '����ʡ', '86210782,86210781,86210727,86210726,86210711,86210703,86210702,86210701');
INSERT INTO `area` VALUES ('86210701', '��Ͻ��', '121000', '86210700', '86210000', '86210700,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210702', '������', '121000', '86210700', '86210000', '86210700,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210703', '�����', '121000', '86210700', '86210000', '86210700,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210711', '̫����', '121000', '86210700', '86210000', '86210700,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210726', '��ɽ��', '121400', '86210700', '86210000', '86210700,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210727', '�塡��', '121100', '86210700', '86210000', '86210700,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210781', '�躣��', '121200', '86210700', '86210000', '86210700,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210782', '������', '121300', '86210700', '86210000', '86210700,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210800', 'Ӫ����', '115000', '86210000', '86210000', '86210000', '����ʡ', '86210882,86210881,86210811,86210804,86210803,86210802,86210801');
INSERT INTO `area` VALUES ('86210801', '��Ͻ��', '115000', '86210800', '86210000', '86210800,86210000', 'Ӫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86210802', 'վǰ��', '115000', '86210800', '86210000', '86210800,86210000', 'Ӫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86210803', '������', '115000', '86210800', '86210000', '86210800,86210000', 'Ӫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86210804', '����Ȧ��', '115000', '86210800', '86210000', '86210800,86210000', 'Ӫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86210811', '�ϱ���', '115000', '86210800', '86210000', '86210800,86210000', 'Ӫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86210881', '������', '115200', '86210800', '86210000', '86210800,86210000', 'Ӫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86210882', '��ʯ����', '115100', '86210800', '86210000', '86210800,86210000', 'Ӫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86210900', '������', '123000', '86210000', '86210000', '86210000', '����ʡ', '86210922,86210921,86210911,86210905,86210904,86210903,86210902,86210901');
INSERT INTO `area` VALUES ('86210901', '��Ͻ��', '123000', '86210900', '86210000', '86210900,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210902', '������', '123000', '86210900', '86210000', '86210900,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210903', '������', '123000', '86210900', '86210000', '86210900,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210904', '̫ƽ��', '123000', '86210900', '86210000', '86210900,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210905', '�������', '123000', '86210900', '86210000', '86210900,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210911', 'ϸ����', '123000', '86210900', '86210000', '86210900,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210921', '�����ɹ���������', '123100', '86210900', '86210000', '86210900,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86210922', '������', '123200', '86210900', '86210000', '86210900,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211000', '������', '111000', '86210000', '86210000', '86210000', '����ʡ', '86211081,86211021,86211011,86211005,86211004,86211003,86211002,86211001');
INSERT INTO `area` VALUES ('86211001', '��Ͻ��', '111000', '86211000', '86210000', '86211000,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211002', '������', '111000', '86211000', '86210000', '86211000,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211003', '��ʥ��', '111000', '86211000', '86210000', '86211000,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211004', '��ΰ��', '111000', '86211000', '86210000', '86211000,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211005', '��������', '111000', '86211000', '86210000', '86211000,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211011', '̫�Ӻ���', '111000', '86211000', '86210000', '86211000,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211021', '������', '111200', '86211000', '86210000', '86211000,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211081', '������', '111300', '86211000', '86210000', '86211000,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211100', '�̽���', '124000', '86210000', '86210000', '86210000', '����ʡ', '86211122,86211121,86211103,86211102,86211101');
INSERT INTO `area` VALUES ('86211101', '��Ͻ��', '124000', '86211100', '86210000', '86211100,86210000', '�̽���,����ʡ', null);
INSERT INTO `area` VALUES ('86211102', '˫̨����', '124000', '86211100', '86210000', '86211100,86210000', '�̽���,����ʡ', null);
INSERT INTO `area` VALUES ('86211103', '��¡̨��', '124000', '86211100', '86210000', '86211100,86210000', '�̽���,����ʡ', null);
INSERT INTO `area` VALUES ('86211121', '������', '124200', '86211100', '86210000', '86211100,86210000', '�̽���,����ʡ', null);
INSERT INTO `area` VALUES ('86211122', '��ɽ��', '124100', '86211100', '86210000', '86211100,86210000', '�̽���,����ʡ', null);
INSERT INTO `area` VALUES ('86211200', '������', '112000', '86210000', '86210000', '86210000', '����ʡ', '86211282,86211281,86211224,86211223,86211221,86211204,86211202,86211201');
INSERT INTO `area` VALUES ('86211201', '��Ͻ��', '112000', '86211200', '86210000', '86211200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211202', '������', '112000', '86211200', '86210000', '86211200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211204', '�����', '112000', '86211200', '86210000', '86211200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211221', '������', '112600', '86211200', '86210000', '86211200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211223', '������', '112400', '86211200', '86210000', '86211200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211224', '��ͼ��', '112500', '86211200', '86210000', '86211200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211281', '����ɽ��', '112700', '86211200', '86210000', '86211200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211282', '��ԭ��', '112300', '86211200', '86210000', '86211200,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211300', '������', '122000', '86210000', '86210000', '86210000', '����ʡ', '86211382,86211381,86211324,86211322,86211321,86211303,86211302,86211301');
INSERT INTO `area` VALUES ('86211301', '��Ͻ��', '122000', '86211300', '86210000', '86211300,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211302', '˫����', '122000', '86211300', '86210000', '86211300,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211303', '������', '122000', '86211300', '86210000', '86211300,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211321', '������', '122000', '86211300', '86210000', '86211300,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211322', '��ƽ��', '122400', '86211300', '86210000', '86211300,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211324', '�����������ɹ���������', '122300', '86211300', '86210000', '86211300,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211381', '��Ʊ��', '122100', '86211300', '86210000', '86211300,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211382', '��Դ��', '122500', '86211300', '86210000', '86211300,86210000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86211400', '��«����', '125000', '86210000', '86210000', '86210000', '����ʡ', '86211481,86211422,86211421,86211404,86211403,86211402,86211401');
INSERT INTO `area` VALUES ('86211401', '��Ͻ��', '125000', '86211400', '86210000', '86211400,86210000', '��«����,����ʡ', null);
INSERT INTO `area` VALUES ('86211402', '��ɽ��', '125000', '86211400', '86210000', '86211400,86210000', '��«����,����ʡ', null);
INSERT INTO `area` VALUES ('86211403', '������', '125000', '86211400', '86210000', '86211400,86210000', '��«����,����ʡ', null);
INSERT INTO `area` VALUES ('86211404', '��Ʊ��', '125000', '86211400', '86210000', '86211400,86210000', '��«����,����ʡ', null);
INSERT INTO `area` VALUES ('86211421', '������', '125200', '86211400', '86210000', '86211400,86210000', '��«����,����ʡ', null);
INSERT INTO `area` VALUES ('86211422', '������', '125300', '86211400', '86210000', '86211400,86210000', '��«����,����ʡ', null);
INSERT INTO `area` VALUES ('86211481', '�˳���', '125100', '86211400', '86210000', '86211400,86210000', '��«����,����ʡ', null);
INSERT INTO `area` VALUES ('86220000', '����ʡ', null, '0', null, null, null, '86222400,86220800,86220700,86220600,86220500,86220400,86220300,86220200,86220100');
INSERT INTO `area` VALUES ('86220100', '������', '130000', '86220000', '86220000', '86220000', '����ʡ', '86220183,86220182,86220181,86220122,86220112,86220106,86220105,86220104,86220103,86220102,86220101');
INSERT INTO `area` VALUES ('86220101', '��Ͻ��', '130000', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220102', '�Ϲ���', '130000', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220103', '�����', '130000', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220104', '������', '130000', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220105', '������', '130000', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220106', '��԰��', '130000', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220112', '˫����', '130600', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220122', 'ũ����', '130200', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220181', '��̨��', '130500', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220182', '������', '130400', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220183', '�»���', '130300', '86220100', '86220000', '86220100,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220200', '������', '132000', '86220000', '86220000', '86220000', '����ʡ', '86220284,86220283,86220282,86220281,86220221,86220211,86220204,86220203,86220202,86220201');
INSERT INTO `area` VALUES ('86220201', '��Ͻ��', '132000', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220202', '������', '132000', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220203', '��̶��', '132000', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220204', '��Ӫ��', '132000', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220211', '������', '132000', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220221', '������', '132100', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220281', '�Ժ���', '132500', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220282', '�����', '132400', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220283', '������', '132600', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220284', '��ʯ��', '132300', '86220200', '86220000', '86220200,86220000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86220300', '��ƽ��', '136000', '86220000', '86220000', '86220000', '����ʡ', '86220382,86220381,86220323,86220322,86220303,86220302,86220301');
INSERT INTO `area` VALUES ('86220301', '��Ͻ��', '136000', '86220300', '86220000', '86220300,86220000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220302', '������', '136000', '86220300', '86220000', '86220300,86220000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220303', '������', '136000', '86220300', '86220000', '86220300,86220000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220322', '������', '136500', '86220300', '86220000', '86220300,86220000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220323', '��ͨ����������', '130700', '86220300', '86220000', '86220300,86220000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220381', '��������', '136100', '86220300', '86220000', '86220300,86220000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220382', '˫����', '136400', '86220300', '86220000', '86220300,86220000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220400', '��Դ��', '136200', '86220000', '86220000', '86220000', '����ʡ', '86220422,86220421,86220403,86220402,86220401');
INSERT INTO `area` VALUES ('86220401', '��Ͻ��', '136200', '86220400', '86220000', '86220400,86220000', '��Դ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220402', '��ɽ��', '136200', '86220400', '86220000', '86220400,86220000', '��Դ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220403', '������', '136200', '86220400', '86220000', '86220400,86220000', '��Դ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220421', '������', '136300', '86220400', '86220000', '86220400,86220000', '��Դ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220422', '������', '136600', '86220400', '86220000', '86220400,86220000', '��Դ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220500', 'ͨ����', '134000', '86220000', '86220000', '86220000', '����ʡ', '86220582,86220581,86220524,86220523,86220521,86220503,86220502,86220501');
INSERT INTO `area` VALUES ('86220501', '��Ͻ��', '134000', '86220500', '86220000', '86220500,86220000', 'ͨ����,����ʡ', null);
INSERT INTO `area` VALUES ('86220502', '������', '134000', '86220500', '86220000', '86220500,86220000', 'ͨ����,����ʡ', null);
INSERT INTO `area` VALUES ('86220503', '��������', '134000', '86220500', '86220000', '86220500,86220000', 'ͨ����,����ʡ', null);
INSERT INTO `area` VALUES ('86220521', 'ͨ����', '134100', '86220500', '86220000', '86220500,86220000', 'ͨ����,����ʡ', null);
INSERT INTO `area` VALUES ('86220523', '������', '135100', '86220500', '86220000', '86220500,86220000', 'ͨ����,����ʡ', null);
INSERT INTO `area` VALUES ('86220524', '������', '135300', '86220500', '86220000', '86220500,86220000', 'ͨ����,����ʡ', null);
INSERT INTO `area` VALUES ('86220581', '÷�ӿ���', '135000', '86220500', '86220000', '86220500,86220000', 'ͨ����,����ʡ', null);
INSERT INTO `area` VALUES ('86220582', '������', '134200', '86220500', '86220000', '86220500,86220000', 'ͨ����,����ʡ', null);
INSERT INTO `area` VALUES ('86220600', '��ɽ��', '134300', '86220000', '86220000', '86220000', '����ʡ', '86220681,86220625,86220623,86220622,86220621,86220602,86220601');
INSERT INTO `area` VALUES ('86220601', '��Ͻ��', '134300', '86220600', '86220000', '86220600,86220000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220602', '�˵�����', '134300', '86220600', '86220000', '86220600,86220000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220621', '������', '134500', '86220600', '86220000', '86220600,86220000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220622', '������', '135200', '86220600', '86220000', '86220600,86220000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220623', '���׳�����������', '134400', '86220600', '86220000', '86220600,86220000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220625', '��Դ��', '134700', '86220600', '86220000', '86220600,86220000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220681', '�ٽ���', '134600', '86220600', '86220000', '86220600,86220000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220700', '��ԭ��', '138000', '86220000', '86220000', '86220000', '����ʡ', '86220724,86220723,86220722,86220721,86220702,86220701');
INSERT INTO `area` VALUES ('86220701', '��Ͻ��', '138000', '86220700', '86220000', '86220700,86220000', '��ԭ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220702', '������', '138000', '86220700', '86220000', '86220700,86220000', '��ԭ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220721', 'ǰ������˹�ɹ���������', '131100', '86220700', '86220000', '86220700,86220000', '��ԭ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220722', '������', '131500', '86220700', '86220000', '86220700,86220000', '��ԭ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220723', 'Ǭ����', '131400', '86220700', '86220000', '86220700,86220000', '��ԭ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220724', '������', '131200', '86220700', '86220000', '86220700,86220000', '��ԭ��,����ʡ', null);
INSERT INTO `area` VALUES ('86220800', '�׳���', '137000', '86220000', '86220000', '86220000', '����ʡ', '86220882,86220881,86220822,86220821,86220802,86220801');
INSERT INTO `area` VALUES ('86220801', '��Ͻ��', '137000', '86220800', '86220000', '86220800,86220000', '�׳���,����ʡ', null);
INSERT INTO `area` VALUES ('86220802', '䬱���', '137000', '86220800', '86220000', '86220800,86220000', '�׳���,����ʡ', null);
INSERT INTO `area` VALUES ('86220821', '������', '137300', '86220800', '86220000', '86220800,86220000', '�׳���,����ʡ', null);
INSERT INTO `area` VALUES ('86220822', 'ͨ����', '137200', '86220800', '86220000', '86220800,86220000', '�׳���,����ʡ', null);
INSERT INTO `area` VALUES ('86220881', '�����', '137100', '86220800', '86220000', '86220800,86220000', '�׳���,����ʡ', null);
INSERT INTO `area` VALUES ('86220882', '����', '131300', '86220800', '86220000', '86220800,86220000', '�׳���,����ʡ', null);
INSERT INTO `area` VALUES ('86222400', '�ӱ߳�����������', '133000', '86220000', '86220000', '86220000', '����ʡ', '86222426,86222424,86222406,86222405,86222404,86222403,86222402,86222401');
INSERT INTO `area` VALUES ('86222401', '�Ӽ���', '133000', '86222400', '86220000', '86222400,86220000', '�ӱ߳�����������,����ʡ', null);
INSERT INTO `area` VALUES ('86222402', 'ͼ����', '133100', '86222400', '86220000', '86222400,86220000', '�ӱ߳�����������,����ʡ', null);
INSERT INTO `area` VALUES ('86222403', '�ػ���', '133700', '86222400', '86220000', '86222400,86220000', '�ӱ߳�����������,����ʡ', null);
INSERT INTO `area` VALUES ('86222404', '������', '133300', '86222400', '86220000', '86222400,86220000', '�ӱ߳�����������,����ʡ', null);
INSERT INTO `area` VALUES ('86222405', '������', '133400', '86222400', '86220000', '86222400,86220000', '�ӱ߳�����������,����ʡ', null);
INSERT INTO `area` VALUES ('86222406', '������', '133500', '86222400', '86220000', '86222400,86220000', '�ӱ߳�����������,����ʡ', null);
INSERT INTO `area` VALUES ('86222424', '������', '133200', '86222400', '86220000', '86222400,86220000', '�ӱ߳�����������,����ʡ', null);
INSERT INTO `area` VALUES ('86222426', '��ͼ��', '133600', '86222400', '86220000', '86222400,86220000', '�ӱ߳�����������,����ʡ', null);
INSERT INTO `area` VALUES ('86230000', '������ʡ', null, '0', null, null, null, '86232700,86231200,86231100,86231000,86230900,86230800,86230700,86230600,86230500,86230400,86230300,86230200,86230100');
INSERT INTO `area` VALUES ('86230100', '��������', '150000', '86230000', '86230000', '86230000', '������ʡ', '86230184,86230183,86230182,86230181,86230129,86230128,86230127,86230126,86230125,86230124,86230123,86230111,86230109,86230108,86230107,86230106,86230104,86230103,86230102,86230101');
INSERT INTO `area` VALUES ('86230101', '��Ͻ��', '150000', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230102', '������', '150000', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230103', '�ϸ���', '150000', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230104', '������', '150000', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230106', '�㷻��', '150000', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230107', '������', '150000', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230108', 'ƽ����', '150000', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230109', '�ɱ���', '150000', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230111', '������', '150500', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230123', '������', '154800', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230124', '������', '150800', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230125', '������', '150400', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230126', '������', '151800', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230127', 'ľ����', '151900', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230128', 'ͨ����', '150900', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230129', '������', '150700', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230181', '������', '150300', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230182', '˫����', '150100', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230183', '��־��', '150600', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230184', '�峣��', '150200', '86230100', '86230000', '86230100,86230000', '��������,������ʡ', null);
INSERT INTO `area` VALUES ('86230200', '���������', '161000', '86230000', '86230000', '86230000', '������ʡ', '86230281,86230231,86230230,86230229,86230227,86230225,86230224,86230223,86230221,86230208,86230207,86230206,86230205,86230204,86230203,86230202,86230201');
INSERT INTO `area` VALUES ('86230201', '��Ͻ��', '161000', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230202', '��ɳ��', '161000', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230203', '������', '161000', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230204', '������', '161000', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230205', '����Ϫ��', '161000', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230206', '����������', '161000', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230207', '����ɽ��', '161000', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230208', '÷��˹���Ӷ�����', '161000', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230221', '������', '161100', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230223', '������', '161500', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230224', '̩����', '162400', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230225', '������', '162100', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230227', '��ԣ��', '161200', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230229', '��ɽ��', '161600', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230230', '�˶���', '164800', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230231', '��Ȫ��', '164700', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230281', 'ګ����', '161300', '86230200', '86230000', '86230200,86230000', '���������,������ʡ', null);
INSERT INTO `area` VALUES ('86230300', '������', '158100', '86230000', '86230000', '86230000', '������ʡ', '86230382,86230381,86230321,86230307,86230306,86230305,86230304,86230303,86230302,86230301');
INSERT INTO `area` VALUES ('86230301', '��Ͻ��', '158100', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230302', '������', '158100', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230303', '��ɽ��', '158100', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230304', '�ε���', '158100', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230305', '������', '158100', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230306', '���Ӻ���', '158100', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230307', '��ɽ��', '158100', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230321', '������', '158200', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230381', '������', '158400', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230382', '��ɽ��', '158300', '86230300', '86230000', '86230300,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230400', '�׸���', '154000', '86230000', '86230000', '86230000', '������ʡ', '86230422,86230421,86230407,86230406,86230405,86230404,86230403,86230402,86230401');
INSERT INTO `area` VALUES ('86230401', '��Ͻ��', '154000', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230402', '������', '154000', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230403', '��ũ��', '154100', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230404', '��ɽ��', '154100', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230405', '�˰���', '154100', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230406', '��ɽ��', '154100', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230407', '��ɽ��', '154100', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230421', '�ܱ���', '154200', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230422', '�����', '156200', '86230400', '86230000', '86230400,86230000', '�׸���,������ʡ', null);
INSERT INTO `area` VALUES ('86230500', '˫Ѽɽ��', '155100', '86230000', '86230000', '86230000', '������ʡ', '86230524,86230523,86230522,86230521,86230506,86230505,86230503,86230502,86230501');
INSERT INTO `area` VALUES ('86230501', '��Ͻ��', '155100', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230502', '��ɽ��', '155100', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230503', '�붫��', '155100', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230505', '�ķ�̨��', '155100', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230506', '��ɽ��', '155100', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230521', '������', '155900', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230522', '������', '155800', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230523', '������', '155600', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230524', '�ĺ���', '155700', '86230500', '86230000', '86230500,86230000', '˫Ѽɽ��,������ʡ', null);
INSERT INTO `area` VALUES ('86230600', '������', '163000', '86230000', '86230000', '86230000', '������ʡ', '86230624,86230623,86230622,86230621,86230606,86230605,86230604,86230603,86230602,86230601');
INSERT INTO `area` VALUES ('86230601', '��Ͻ��', '163000', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230602', '����ͼ��', '163000', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230603', '������', '163000', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230604', '�ú�·��', '163000', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230605', '�����', '163000', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230606', '��ͬ��', '163000', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230621', '������', '166400', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230622', '��Դ��', '166500', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230623', '�ֵ���', '166300', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230624', '�Ŷ������ɹ���������', '166200', '86230600', '86230000', '86230600,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230700', '������', '153000', '86230000', '86230000', '86230000', '������ʡ', '86230781,86230722,86230716,86230715,86230714,86230713,86230712,86230711,86230710,86230709,86230708,86230707,86230706,86230705,86230704,86230703,86230702,86230701');
INSERT INTO `area` VALUES ('86230701', '��Ͻ��', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230702', '������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230703', '�ϲ���', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230704', '�Ѻ���', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230705', '������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230706', '������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230707', '������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230708', '��Ϫ��', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230709', '��ɽ����', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230710', '��Ӫ��', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230711', '�������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230712', '��������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230713', '������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230714', '��������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230715', '������', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230716', '�ϸ�����', '153000', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230722', '������', '153200', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230781', '������', '152500', '86230700', '86230000', '86230700,86230000', '������,������ʡ', null);
INSERT INTO `area` VALUES ('86230800', '��ľ˹��', '154000', '86230000', '86230000', '86230000', '������ʡ', '86230882,86230881,86230833,86230828,86230826,86230822,86230811,86230805,86230804,86230803,86230802,86230801');
INSERT INTO `area` VALUES ('86230801', '��Ͻ��', '154000', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230802', '������', '154000', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230803', '������', '154000', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230804', 'ǰ����', '154000', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230805', '������', '154000', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230811', '������', '154000', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230822', '������', '154400', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230826', '�봨��', '154300', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230828', '��ԭ��', '154700', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230833', '��Զ��', '156500', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230881', 'ͬ����', '156400', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230882', '������', '156100', '86230800', '86230000', '86230800,86230000', '��ľ˹��,������ʡ', null);
INSERT INTO `area` VALUES ('86230900', '��̨����', '154600', '86230000', '86230000', '86230000', '������ʡ', '86230921,86230904,86230903,86230902,86230901');
INSERT INTO `area` VALUES ('86230901', '��Ͻ��', '154600', '86230900', '86230000', '86230900,86230000', '��̨����,������ʡ', null);
INSERT INTO `area` VALUES ('86230902', '������', '154600', '86230900', '86230000', '86230900,86230000', '��̨����,������ʡ', null);
INSERT INTO `area` VALUES ('86230903', '��ɽ��', '154600', '86230900', '86230000', '86230900,86230000', '��̨����,������ʡ', null);
INSERT INTO `area` VALUES ('86230904', '���Ӻ���', '154600', '86230900', '86230000', '86230900,86230000', '��̨����,������ʡ', null);
INSERT INTO `area` VALUES ('86230921', '������', '154500', '86230900', '86230000', '86230900,86230000', '��̨����,������ʡ', null);
INSERT INTO `area` VALUES ('86231000', 'ĵ������', '157000', '86230000', '86230000', '86230000', '������ʡ', '86231085,86231084,86231083,86231081,86231025,86231024,86231005,86231004,86231003,86231002,86231001');
INSERT INTO `area` VALUES ('86231001', '��Ͻ��', '157000', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231002', '������', '157000', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231003', '������', '157000', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231004', '������', '157000', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231005', '������', '157000', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231024', '������', '157200', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231025', '�ֿ���', '157600', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231081', '��Һ���', '157300', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231083', '������', '157100', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231084', '������', '157400', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231085', '������', '157500', '86231000', '86230000', '86231000,86230000', 'ĵ������,������ʡ', null);
INSERT INTO `area` VALUES ('86231100', '�ں���', '164300', '86230000', '86230000', '86230000', '������ʡ', '86231182,86231181,86231124,86231123,86231121,86231102,86231101');
INSERT INTO `area` VALUES ('86231101', '��Ͻ��', '164300', '86231100', '86230000', '86231100,86230000', '�ں���,������ʡ', null);
INSERT INTO `area` VALUES ('86231102', '������', '164300', '86231100', '86230000', '86231100,86230000', '�ں���,������ʡ', null);
INSERT INTO `area` VALUES ('86231121', '�۽���', '161400', '86231100', '86230000', '86231100,86230000', '�ں���,������ʡ', null);
INSERT INTO `area` VALUES ('86231123', 'ѷ����', '164400', '86231100', '86230000', '86231100,86230000', '�ں���,������ʡ', null);
INSERT INTO `area` VALUES ('86231124', '������', '164200', '86231100', '86230000', '86231100,86230000', '�ں���,������ʡ', null);
INSERT INTO `area` VALUES ('86231181', '������', '164000', '86231100', '86230000', '86231100,86230000', '�ں���,������ʡ', null);
INSERT INTO `area` VALUES ('86231182', '���������', '164100', '86231100', '86230000', '86231100,86230000', '�ں���,������ʡ', null);
INSERT INTO `area` VALUES ('86231200', '�绯��', '152000', '86230000', '86230000', '86230000', '������ʡ', '86231283,86231282,86231281,86231226,86231225,86231224,86231223,86231222,86231221,86231202,86231201');
INSERT INTO `area` VALUES ('86231201', '��Ͻ��', '152000', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231202', '������', '152000', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231221', '������', '152100', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231222', '������', '151500', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231223', '�����', '151600', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231224', '�찲��', '152400', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231225', '��ˮ��', '151700', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231226', '������', '152200', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231281', '������', '151400', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231282', '�ض���', '151100', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86231283', '������', '152300', '86231200', '86230000', '86231200,86230000', '�绯��,������ʡ', null);
INSERT INTO `area` VALUES ('86232700', '���˰������', '165100', '86230000', '86230000', '86230000', '������ʡ', '86232723,86232722,86232721');
INSERT INTO `area` VALUES ('86232721', '������', '165100', '86232700', '86230000', '86232700,86230000', '���˰������,������ʡ', null);
INSERT INTO `area` VALUES ('86232722', '������', '165200', '86232700', '86230000', '86232700,86230000', '���˰������,������ʡ', null);
INSERT INTO `area` VALUES ('86232723', 'Į����', '165300', '86232700', '86230000', '86232700,86230000', '���˰������,������ʡ', null);
INSERT INTO `area` VALUES ('86310000', '�Ϻ���', '200000', '0', null, null, null, '86310200,86310100');
INSERT INTO `area` VALUES ('86310100', '��Ͻ��', '200000', '86310000', '86310000', '86310000', '�Ϻ���', '86310120,86310119,86310118,86310117,86310116,86310115,86310114,86310113,86310112,86310110,86310109,86310108,86310107,86310106,86310105,86310104,86310103,86310101');
INSERT INTO `area` VALUES ('86310101', '������', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310103', '¬����', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310104', '�����', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310105', '������', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310106', '������', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310107', '������', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310108', 'բ����', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310109', '�����', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310110', '������', '200000', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310112', '������', '201100', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310113', '��ɽ��', '201900', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310114', '�ζ���', '201800', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310115', '�ֶ�����', '200120', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310116', '��ɽ��', '201500', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310117', '�ɽ���', '201600', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310118', '������', '201700', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310119', '�ϻ���', '201300', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310120', '������', '201400', '86310100', '86310000', '86310100,86310000', '��Ͻ��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86310200', '��', '202150', '86310000', '86310000', '86310000', '�Ϻ���', '86310230');
INSERT INTO `area` VALUES ('86310230', '������', '202150', '86310200', '86310000', '86310200,86310000', '��,�Ϻ���', null);
INSERT INTO `area` VALUES ('86320000', '����ʡ', null, '0', null, null, null, '86321300,86321200,86321100,86321000,86320900,86320800,86320700,86320600,86320500,86320400,86320300,86320200,86320100');
INSERT INTO `area` VALUES ('86320100', '�Ͼ���', '210000', '86320000', '86320000', '86320000', '����ʡ', '86320125,86320124,86320116,86320115,86320114,86320113,86320111,86320107,86320106,86320105,86320104,86320103,86320102,86320101');
INSERT INTO `area` VALUES ('86320101', '��Ͻ��', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320102', '������', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320103', '������', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320104', '�ػ���', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320105', '������', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320106', '��¥��', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320107', '�¹���', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320111', '�ֿ���', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320113', '��ϼ��', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320114', '�껨̨��', '210000', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320115', '������', '211100', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320116', '������', '211500', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320124', '��ˮ��', '211200', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320125', '�ߴ���', '211300', '86320100', '86320000', '86320100,86320000', '�Ͼ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320200', '������', '214000', '86320000', '86320000', '86320000', '����ʡ', '86320282,86320281,86320211,86320206,86320205,86320204,86320203,86320202,86320201');
INSERT INTO `area` VALUES ('86320201', '��Ͻ��', '214000', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320202', '�簲��', '214000', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320203', '�ϳ���', '214000', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320204', '������', '214000', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320205', '��ɽ��', '214000', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320206', '��ɽ��', '214000', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320211', '������', '214000', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320281', '������', '214400', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320282', '������', '214200', '86320200', '86320000', '86320200,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320300', '������', '221000', '86320000', '86320000', '86320000', '����ʡ', '86320382,86320381,86320324,86320323,86320322,86320321,86320311,86320305,86320304,86320303,86320302,86320301');
INSERT INTO `area` VALUES ('86320301', '��Ͻ��', '221000', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320302', '��¥��', '221000', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320303', '������', '221000', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320304', '������', '221000', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320305', '������', '221000', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320311', 'Ȫɽ��', '221000', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320321', '�ᡡ��', '221700', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320322', '�桡��', '221600', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320323', 'ͭɽ��', '221100', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320324', '�����', '221200', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320381', '������', '221400', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320382', '������', '221300', '86320300', '86320000', '86320300,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320400', '������', '213000', '86320000', '86320000', '86320000', '����ʡ', '86320482,86320481,86320412,86320411,86320405,86320404,86320402,86320401');
INSERT INTO `area` VALUES ('86320401', '��Ͻ��', '213000', '86320400', '86320000', '86320400,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320402', '������', '213000', '86320400', '86320000', '86320400,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320404', '��¥��', '213000', '86320400', '86320000', '86320400,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320405', '��������', '213000', '86320400', '86320000', '86320400,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320411', '�±���', '213000', '86320400', '86320000', '86320400,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320412', '�����', '213100', '86320400', '86320000', '86320400,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320481', '������', '213300', '86320400', '86320000', '86320400,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320482', '��̳��', '213200', '86320400', '86320000', '86320400,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320500', '������', '215000', '86320000', '86320000', '86320000', '����ʡ', '86320585,86320584,86320583,86320582,86320581,86320507,86320506,86320505,86320504,86320503,86320502,86320501');
INSERT INTO `area` VALUES ('86320501', '��Ͻ��', '215000', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320502', '������', '215000', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320503', 'ƽ����', '215000', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320504', '������', '215000', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320505', '������', '215000', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320506', '������', '215100', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320507', '�����', '215100', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320581', '������', '215500', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320582', '�żҸ���', '215600', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320583', '��ɽ��', '215300', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320584', '�⽭��', '215200', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320585', '̫����', '215400', '86320500', '86320000', '86320500,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320600', '��ͨ��', '226000', '86320000', '86320000', '86320000', '����ʡ', '86320684,86320683,86320682,86320681,86320623,86320621,86320611,86320602,86320601');
INSERT INTO `area` VALUES ('86320601', '��Ͻ��', '226000', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320602', '�紨��', '226000', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320611', '��բ��', '226000', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320621', '������', '226600', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320623', '�綫��', '226400', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320681', '������', '226200', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320682', '�����', '226500', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320683', 'ͨ����', '226300', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320684', '������', '226100', '86320600', '86320000', '86320600,86320000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86320700', '���Ƹ���', '222000', '86320000', '86320000', '86320000', '����ʡ', '86320724,86320723,86320722,86320721,86320706,86320705,86320703,86320701');
INSERT INTO `area` VALUES ('86320701', '��Ͻ��', '222000', '86320700', '86320000', '86320700,86320000', '���Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320703', '������', '222000', '86320700', '86320000', '86320700,86320000', '���Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320705', '������', '222000', '86320700', '86320000', '86320700,86320000', '���Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320706', '������', '222000', '86320700', '86320000', '86320700,86320000', '���Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320721', '������', '222100', '86320700', '86320000', '86320700,86320000', '���Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320722', '������', '222300', '86320700', '86320000', '86320700,86320000', '���Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320723', '������', '222200', '86320700', '86320000', '86320700,86320000', '���Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320724', '������', '223500', '86320700', '86320000', '86320700,86320000', '���Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320800', '������', '223000', '86320000', '86320000', '86320000', '����ʡ', '86320831,86320830,86320829,86320826,86320811,86320804,86320803,86320802,86320801');
INSERT INTO `area` VALUES ('86320801', '��Ͻ��', '223000', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320802', '�����', '223001', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320803', '������', '223200', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320804', '������', '223300', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320811', '������', '223001', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320826', '��ˮ��', '223400', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320829', '������', '223100', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320830', '������', '211700', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320831', '�����', '211600', '86320800', '86320000', '86320800,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86320900', '�γ���', '224000', '86320000', '86320000', '86320000', '����ʡ', '86320982,86320981,86320925,86320924,86320923,86320922,86320921,86320903,86320902,86320901');
INSERT INTO `area` VALUES ('86320901', '��Ͻ��', '224000', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320902', 'ͤ����', '224000', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320903', '�ζ���', '224000', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320921', '��ˮ��', '224600', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320922', '������', '224000', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320923', '������', '224400', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320924', '������', '224300', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320925', '������', '224700', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320981', '��̨��', '224200', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86320982', '�����', '224100', '86320900', '86320000', '86320900,86320000', '�γ���,����ʡ', null);
INSERT INTO `area` VALUES ('86321000', '������', '225000', '86320000', '86320000', '86320000', '����ʡ', '86321088,86321084,86321081,86321023,86321011,86321003,86321002,86321001');
INSERT INTO `area` VALUES ('86321001', '��Ͻ��', '225000', '86321000', '86320000', '86321000,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86321002', '������', '225000', '86321000', '86320000', '86321000,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86321003', '������', '225100', '86321000', '86320000', '86321000,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86321011', '������', '225200', '86321000', '86320000', '86321000,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86321023', '��Ӧ��', '225800', '86321000', '86320000', '86321000,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86321081', '������', '211400', '86321000', '86320000', '86321000,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86321084', '������', '225600', '86321000', '86320000', '86321000,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86321088', '������', '225200', '86321000', '86320000', '86321000,86320000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86321100', '����', '212000', '86320000', '86320000', '86320000', '����ʡ', '86321183,86321182,86321181,86321112,86321111,86321102,86321101');
INSERT INTO `area` VALUES ('86321101', '��Ͻ��', '212000', '86321100', '86320000', '86321100,86320000', '����,����ʡ', null);
INSERT INTO `area` VALUES ('86321102', '������', '212000', '86321100', '86320000', '86321100,86320000', '����,����ʡ', null);
INSERT INTO `area` VALUES ('86321111', '������', '212000', '86321100', '86320000', '86321100,86320000', '����,����ʡ', null);
INSERT INTO `area` VALUES ('86321112', '��ͽ��', '212100', '86321100', '86320000', '86321100,86320000', '����,����ʡ', null);
INSERT INTO `area` VALUES ('86321181', '������', '212300', '86321100', '86320000', '86321100,86320000', '����,����ʡ', null);
INSERT INTO `area` VALUES ('86321182', '������', '212200', '86321100', '86320000', '86321100,86320000', '����,����ʡ', null);
INSERT INTO `area` VALUES ('86321183', '������', '212400', '86321100', '86320000', '86321100,86320000', '����,����ʡ', null);
INSERT INTO `area` VALUES ('86321200', '̩����', '225300', '86320000', '86320000', '86320000', '����ʡ', '86321284,86321283,86321282,86321281,86321203,86321202,86321201');
INSERT INTO `area` VALUES ('86321201', '��Ͻ��', '225300', '86321200', '86320000', '86321200,86320000', '̩����,����ʡ', null);
INSERT INTO `area` VALUES ('86321202', '������', '225300', '86321200', '86320000', '86321200,86320000', '̩����,����ʡ', null);
INSERT INTO `area` VALUES ('86321203', '�߸���', '225300', '86321200', '86320000', '86321200,86320000', '̩����,����ʡ', null);
INSERT INTO `area` VALUES ('86321281', '�˻���', '225700', '86321200', '86320000', '86321200,86320000', '̩����,����ʡ', null);
INSERT INTO `area` VALUES ('86321282', '������', '214500', '86321200', '86320000', '86321200,86320000', '̩����,����ʡ', null);
INSERT INTO `area` VALUES ('86321283', '̩����', '225400', '86321200', '86320000', '86321200,86320000', '̩����,����ʡ', null);
INSERT INTO `area` VALUES ('86321284', '������', '225500', '86321200', '86320000', '86321200,86320000', '̩����,����ʡ', null);
INSERT INTO `area` VALUES ('86321300', '��Ǩ��', '223800', '86320000', '86320000', '86320000', '����ʡ', '86321324,86321323,86321322,86321311,86321302,86321301');
INSERT INTO `area` VALUES ('86321301', '��Ͻ��', '223800', '86321300', '86320000', '86321300,86320000', '��Ǩ��,����ʡ', null);
INSERT INTO `area` VALUES ('86321302', '�޳���', '223800', '86321300', '86320000', '86321300,86320000', '��Ǩ��,����ʡ', null);
INSERT INTO `area` VALUES ('86321311', '��ԥ��', '223800', '86321300', '86320000', '86321300,86320000', '��Ǩ��,����ʡ', null);
INSERT INTO `area` VALUES ('86321322', '������', '223600', '86321300', '86320000', '86321300,86320000', '��Ǩ��,����ʡ', null);
INSERT INTO `area` VALUES ('86321323', '������', '223700', '86321300', '86320000', '86321300,86320000', '��Ǩ��,����ʡ', null);
INSERT INTO `area` VALUES ('86321324', '������', '223900', '86321300', '86320000', '86321300,86320000', '��Ǩ��,����ʡ', null);
INSERT INTO `area` VALUES ('86330000', '�㽭ʡ', null, '0', null, null, null, '86331100,86331000,86330900,86330800,86330700,86330600,86330500,86330400,86330300,86330200,86330100');
INSERT INTO `area` VALUES ('86330100', '������', '310000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330185,86330183,86330182,86330127,86330122,86330110,86330109,86330108,86330106,86330105,86330104,86330103,86330102,86330101');
INSERT INTO `area` VALUES ('86330101', '��Ͻ��', '310000', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330102', '�ϳ���', '310000', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330103', '�³���', '310000', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330104', '������', '310000', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330105', '������', '310000', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330106', '������', '310000', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330108', '������', '310000', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330109', '��ɽ��', '311200', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330110', '�ຼ��', '311100', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330122', 'ͩ®��', '311500', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330127', '������', '311700', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330182', '������', '311600', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330183', '������', '311400', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330185', '�ٰ���', '311300', '86330100', '86330000', '86330100,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330200', '������', '315000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330283,86330282,86330281,86330226,86330225,86330212,86330211,86330206,86330205,86330204,86330203,86330201');
INSERT INTO `area` VALUES ('86330201', '��Ͻ��', '315000', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330203', '������', '315000', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330204', '������', '315000', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330205', '������', '315000', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330206', '������', '315800', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330211', '����', '315200', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330212', '۴����', '315100', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330225', '��ɽ��', '315700', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330226', '������', '315600', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330281', '��Ҧ��', '315400', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330282', '��Ϫ��', '315300', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330283', '���', '315500', '86330200', '86330000', '86330200,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330300', '������', '325000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330382,86330381,86330329,86330328,86330327,86330326,86330324,86330322,86330304,86330303,86330302,86330301');
INSERT INTO `area` VALUES ('86330301', '��Ͻ��', '325000', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330302', '¹����', '325000', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330303', '������', '325000', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330304', '걺���', '325000', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330322', '��ͷ��', '325700', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330324', '������', '325100', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330326', 'ƽ����', '325400', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330327', '������', '325800', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330328', '�ĳ���', '325300', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330329', '̩˳��', '325500', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330381', '����', '325200', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330382', '������', '325600', '86330300', '86330000', '86330300,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330400', '������', '314000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330483,86330482,86330481,86330424,86330421,86330411,86330402,86330401');
INSERT INTO `area` VALUES ('86330401', '��Ͻ��', '314000', '86330400', '86330000', '86330400,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330402', '�����', '314000', '86330400', '86330000', '86330400,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330411', '������', '314000', '86330400', '86330000', '86330400,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330421', '������', '314100', '86330400', '86330000', '86330400,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330424', '������', '314300', '86330400', '86330000', '86330400,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330481', '������', '314400', '86330400', '86330000', '86330400,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330482', 'ƽ����', '314200', '86330400', '86330000', '86330400,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330483', 'ͩ����', '314500', '86330400', '86330000', '86330400,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330500', '������', '313000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330523,86330522,86330521,86330503,86330502,86330501');
INSERT INTO `area` VALUES ('86330501', '��Ͻ��', '313000', '86330500', '86330000', '86330500,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330502', '������', '313000', '86330500', '86330000', '86330500,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330503', '�����', '313000', '86330500', '86330000', '86330500,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330521', '������', '313200', '86330500', '86330000', '86330500,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330522', '������', '313100', '86330500', '86330000', '86330500,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330523', '������', '313300', '86330500', '86330000', '86330500,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330600', '������', '312000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330683,86330682,86330681,86330624,86330621,86330602,86330601');
INSERT INTO `area` VALUES ('86330601', '��Ͻ��', '312000', '86330600', '86330000', '86330600,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330602', 'Խ����', '312000', '86330600', '86330000', '86330600,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330621', '������', '312000', '86330600', '86330000', '86330600,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330624', '�²���', '312500', '86330600', '86330000', '86330600,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330681', '������', '311800', '86330600', '86330000', '86330600,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330682', '������', '312300', '86330600', '86330000', '86330600,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330683', '������', '312400', '86330600', '86330000', '86330600,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330700', '����', '321000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330784,86330783,86330782,86330781,86330727,86330726,86330723,86330703,86330702,86330701');
INSERT INTO `area` VALUES ('86330701', '��Ͻ��', '321000', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330702', '�ĳ���', '321000', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330703', '����', '321000', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330723', '������', '321200', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330726', '�ֽ���', '322200', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330727', '�Ͱ���', '322300', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330781', '��Ϫ��', '321100', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330782', '������', '322000', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330783', '������', '322100', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330784', '������', '321300', '86330700', '86330000', '86330700,86330000', '����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330800', '������', '324000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330881,86330825,86330824,86330822,86330803,86330802,86330801');
INSERT INTO `area` VALUES ('86330801', '��Ͻ��', '324000', '86330800', '86330000', '86330800,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330802', '�³���', '324000', '86330800', '86330000', '86330800,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330803', '�齭��', '324000', '86330800', '86330000', '86330800,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330822', '��ɽ��', '324200', '86330800', '86330000', '86330800,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330824', '������', '324300', '86330800', '86330000', '86330800,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330825', '������', '324400', '86330800', '86330000', '86330800,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330881', '��ɽ��', '324100', '86330800', '86330000', '86330800,86330000', '������,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330900', '��ɽ��', '316000', '86330000', '86330000', '86330000', '�㽭ʡ', '86330922,86330921,86330903,86330902,86330901');
INSERT INTO `area` VALUES ('86330901', '��Ͻ��', '316000', '86330900', '86330000', '86330900,86330000', '��ɽ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330902', '������', '316000', '86330900', '86330000', '86330900,86330000', '��ɽ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330903', '������', '316100', '86330900', '86330000', '86330900,86330000', '��ɽ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330921', '�ɽ��', '316200', '86330900', '86330000', '86330900,86330000', '��ɽ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86330922', '������', '202450', '86330900', '86330000', '86330900,86330000', '��ɽ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331000', '̨����', '317000', '86330000', '86330000', '86330000', '�㽭ʡ', '86331082,86331081,86331024,86331023,86331022,86331021,86331004,86331003,86331002,86331001');
INSERT INTO `area` VALUES ('86331001', '��Ͻ��', '317000', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331002', '������', '317700', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331003', '������', '318020', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331004', '·����', '318000', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331021', '����', '317600', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331022', '������', '317100', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331023', '��̨��', '317200', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331024', '�ɾ���', '317300', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331081', '������', '317500', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331082', '�ٺ���', '317000', '86331000', '86330000', '86331000,86330000', '̨����,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331100', '��ˮ��', '323000', '86330000', '86330000', '86330000', '�㽭ʡ', '86331181,86331127,86331126,86331125,86331124,86331123,86331122,86331121,86331102,86331101');
INSERT INTO `area` VALUES ('86331101', '��Ͻ��', '323000', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331102', '������', '323000', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331121', '������', '323900', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331122', '������', '321400', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331123', '�����', '323300', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331124', '������', '323400', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331125', '�ƺ���', '323600', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331126', '��Ԫ��', '323800', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331127', '�������������', '323500', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86331181', '��Ȫ��', '323700', '86331100', '86330000', '86331100,86330000', '��ˮ��,�㽭ʡ', null);
INSERT INTO `area` VALUES ('86340000', '����ʡ', null, '0', null, null, null, '86341800,86341700,86341600,86341500,86341400,86341300,86341200,86341100,86341000,86340800,86340700,86340600,86340500,86340400,86340300,86340200,86340100');
INSERT INTO `area` VALUES ('86340100', '�Ϸ���', '230000', '86340000', '86340000', '86340000', '����ʡ', '86340123,86340122,86340121,86340111,86340104,86340103,86340102,86340101');
INSERT INTO `area` VALUES ('86340101', '��Ͻ��', '230000', '86340100', '86340000', '86340100,86340000', '�Ϸ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340102', '������', '230000', '86340100', '86340000', '86340100,86340000', '�Ϸ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340103', '®����', '230000', '86340100', '86340000', '86340100,86340000', '�Ϸ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340104', '��ɽ��', '230000', '86340100', '86340000', '86340100,86340000', '�Ϸ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340111', '������', '230000', '86340100', '86340000', '86340100,86340000', '�Ϸ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340121', '������', '231100', '86340100', '86340000', '86340100,86340000', '�Ϸ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340122', '�ʶ���', '230000', '86340100', '86340000', '86340100,86340000', '�Ϸ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340123', '������', '231200', '86340100', '86340000', '86340100,86340000', '�Ϸ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340200', '�ߺ���', '241000', '86340000', '86340000', '86340000', '����ʡ', '86340223,86340222,86340221,86340207,86340204,86340203,86340202,86340201');
INSERT INTO `area` VALUES ('86340201', '��Ͻ��', '241000', '86340200', '86340000', '86340200,86340000', '�ߺ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340202', '������', '241000', '86340200', '86340000', '86340200,86340000', '�ߺ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340203', '������', '241000', '86340200', '86340000', '86340200,86340000', '�ߺ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340204', '������', '241000', '86340200', '86340000', '86340200,86340000', '�ߺ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340207', '𯽭��', '241000', '86340200', '86340000', '86340200,86340000', '�ߺ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340221', '�ߺ���', '241100', '86340200', '86340000', '86340200,86340000', '�ߺ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340222', '������', '241200', '86340200', '86340000', '86340200,86340000', '�ߺ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340223', '������', '242400', '86340200', '86340000', '86340200,86340000', '�ߺ���,����ʡ', null);
INSERT INTO `area` VALUES ('86340300', '������', '233000', '86340000', '86340000', '86340000', '����ʡ', '86340323,86340322,86340321,86340311,86340304,86340303,86340302,86340301');
INSERT INTO `area` VALUES ('86340301', '��Ͻ��', '233000', '86340300', '86340000', '86340300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340302', '���Ӻ���', '233000', '86340300', '86340000', '86340300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340303', '��ɽ��', '233000', '86340300', '86340000', '86340300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340304', '�����', '233000', '86340300', '86340000', '86340300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340311', '������', '233000', '86340300', '86340000', '86340300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340321', '��Զ��', '233400', '86340300', '86340000', '86340300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340322', '�����', '233300', '86340300', '86340000', '86340300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340323', '������', '233700', '86340300', '86340000', '86340300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340400', '������', '232000', '86340000', '86340000', '86340000', '����ʡ', '86340421,86340406,86340405,86340404,86340403,86340402,86340401');
INSERT INTO `area` VALUES ('86340401', '��Ͻ��', '232000', '86340400', '86340000', '86340400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340402', '��ͨ��', '232000', '86340400', '86340000', '86340400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340403', '�������', '232000', '86340400', '86340000', '86340400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340404', 'л�Ҽ���', '232000', '86340400', '86340000', '86340400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340405', '�˹�ɽ��', '232000', '86340400', '86340000', '86340400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340406', '�˼���', '232000', '86340400', '86340000', '86340400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340421', '��̨��', '232100', '86340400', '86340000', '86340400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340500', '��ɽ��', '243000', '86340000', '86340000', '86340000', '����ʡ', '86340521,86340504,86340503,86340502,86340501');
INSERT INTO `area` VALUES ('86340501', '��Ͻ��', '243000', '86340500', '86340000', '86340500,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86340502', '���ׯ��', '243000', '86340500', '86340000', '86340500,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86340503', '��ɽ��', '243000', '86340500', '86340000', '86340500,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86340504', '��ɽ��', '243000', '86340500', '86340000', '86340500,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86340521', '��Ϳ��', '243100', '86340500', '86340000', '86340500,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86340600', '������', '235000', '86340000', '86340000', '86340000', '����ʡ', '86340621,86340604,86340603,86340602,86340601');
INSERT INTO `area` VALUES ('86340601', '��Ͻ��', '235000', '86340600', '86340000', '86340600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340602', '�ż���', '235000', '86340600', '86340000', '86340600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340603', '��ɽ��', '235000', '86340600', '86340000', '86340600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340604', '��ɽ��', '235000', '86340600', '86340000', '86340600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340621', '�Ϫ��', '235100', '86340600', '86340000', '86340600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340700', 'ͭ����', '244000', '86340000', '86340000', '86340000', '����ʡ', '86340721,86340711,86340703,86340702,86340701');
INSERT INTO `area` VALUES ('86340701', '��Ͻ��', '244000', '86340700', '86340000', '86340700,86340000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86340702', 'ͭ��ɽ��', '244000', '86340700', '86340000', '86340700,86340000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86340703', 'ʨ��ɽ��', '244000', '86340700', '86340000', '86340700,86340000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86340711', '������', '244000', '86340700', '86340000', '86340700,86340000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86340721', 'ͭ����', '244100', '86340700', '86340000', '86340700,86340000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86340800', '������', '246000', '86340000', '86340000', '86340000', '����ʡ', '86340881,86340828,86340827,86340826,86340825,86340824,86340823,86340822,86340811,86340803,86340802,86340801');
INSERT INTO `area` VALUES ('86340801', '��Ͻ��', '246000', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340802', 'ӭ����', '246000', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340803', '�����', '246000', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340811', '������', '246000', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340822', '������', '246100', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340823', '������', '246700', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340824', 'Ǳɽ��', '246300', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340825', '̫����', '246400', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340826', '������', '246500', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340827', '������', '246200', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340828', '������', '246600', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86340881', 'ͩ����', '231400', '86340800', '86340000', '86340800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341000', '��ɽ��', '245000', '86340000', '86340000', '86340000', '����ʡ', '86341024,86341023,86341022,86341021,86341004,86341003,86341002,86341001');
INSERT INTO `area` VALUES ('86341001', '��Ͻ��', '245000', '86341000', '86340000', '86341000,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86341002', '��Ϫ��', '245000', '86341000', '86340000', '86341000,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86341003', '��ɽ��', '245000', '86341000', '86340000', '86341000,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86341004', '������', '245000', '86341000', '86340000', '86341000,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86341021', '쨡���', '245200', '86341000', '86340000', '86341000,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86341022', '������', '245400', '86341000', '86340000', '86341000,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86341023', '����', '245500', '86341000', '86340000', '86341000,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86341024', '������', '245600', '86341000', '86340000', '86341000,86340000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86341100', '������', '239000', '86340000', '86340000', '86340000', '����ʡ', '86341182,86341181,86341126,86341125,86341124,86341122,86341103,86341102,86341101');
INSERT INTO `area` VALUES ('86341101', '��Ͻ��', '239000', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341102', '������', '239000', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341103', '������', '239000', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341122', '������', '239200', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341124', 'ȫ����', '239500', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341125', '��Զ��', '233200', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341126', '������', '233100', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341181', '�쳤��', '239300', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341182', '������', '239400', '86341100', '86340000', '86341100,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341200', '������', '236000', '86340000', '86340000', '86340000', '����ʡ', '86341282,86341226,86341225,86341222,86341221,86341204,86341203,86341202,86341201');
INSERT INTO `area` VALUES ('86341201', '��Ͻ��', '236000', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341202', '�����', '236000', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341203', '򣶫��', '236000', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341204', '�Ȫ��', '236000', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341221', '��Ȫ��', '236400', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341222', '̫����', '236600', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341225', '������', '236300', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341226', '�����', '236200', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341282', '������', '236500', '86341200', '86340000', '86341200,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341300', '������', '234000', '86340000', '86340000', '86340000', '����ʡ', '86341324,86341323,86341322,86341321,86341302,86341301');
INSERT INTO `area` VALUES ('86341301', '��Ͻ��', '234000', '86341300', '86340000', '86341300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341302', 'ܭ����', '234000', '86341300', '86340000', '86341300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341321', '�ɽ��', '235300', '86341300', '86340000', '86341300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341322', '������', '235200', '86341300', '86340000', '86341300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341323', '�����', '234200', '86341300', '86340000', '86341300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341324', '������', '234300', '86341300', '86340000', '86341300,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341400', '������', '238000', '86340000', '86340000', '86340000', '����ʡ', '86341424,86341423,86341422,86341421,86341402,86341401');
INSERT INTO `area` VALUES ('86341401', '��Ͻ��', '238000', '86341400', '86340000', '86341400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341402', '�ӳ���', '238000', '86341400', '86340000', '86341400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341421', '®����', '231500', '86341400', '86340000', '86341400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341422', '��Ϊ��', '238300', '86341400', '86340000', '86341400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341423', '��ɽ��', '238100', '86341400', '86340000', '86341400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341424', '�͡���', '238200', '86341400', '86340000', '86341400,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341500', '������', '237000', '86340000', '86340000', '86340000', '����ʡ', '86341525,86341524,86341523,86341522,86341521,86341503,86341502,86341501');
INSERT INTO `area` VALUES ('86341501', '��Ͻ��', '237000', '86341500', '86340000', '86341500,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341502', '����', '237000', '86341500', '86340000', '86341500,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341503', 'ԣ����', '237000', '86341500', '86340000', '86341500,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341521', '�١���', '232200', '86341500', '86340000', '86341500,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341522', '������', '237400', '86341500', '86340000', '86341500,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341523', '�����', '231300', '86341500', '86340000', '86341500,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341524', '��կ��', '237300', '86341500', '86340000', '86341500,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341525', '��ɽ��', '237200', '86341500', '86340000', '86341500,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341600', '������', '236000', '86340000', '86340000', '86340000', '����ʡ', '86341623,86341622,86341621,86341602,86341601');
INSERT INTO `area` VALUES ('86341601', '��Ͻ��', '236000', '86341600', '86340000', '86341600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341602', '�۳���', '236800', '86341600', '86340000', '86341600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341621', '������', '233600', '86341600', '86340000', '86341600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341622', '�ɳ���', '233500', '86341600', '86340000', '86341600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341623', '������', '236700', '86341600', '86340000', '86341600,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341700', '������', '247100', '86340000', '86340000', '86340000', '����ʡ', '86341723,86341722,86341721,86341702,86341701');
INSERT INTO `area` VALUES ('86341701', '��Ͻ��', '247100', '86341700', '86340000', '86341700,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341702', '�����', '247100', '86341700', '86340000', '86341700,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341721', '������', '247200', '86341700', '86340000', '86341700,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341722', 'ʯ̨��', '245100', '86341700', '86340000', '86341700,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341723', '������', '242800', '86341700', '86340000', '86341700,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341800', '������', '242000', '86340000', '86340000', '86340000', '����ʡ', '86341881,86341825,86341824,86341823,86341822,86341821,86341802,86341801');
INSERT INTO `area` VALUES ('86341801', '��Ͻ��', '242000', '86341800', '86340000', '86341800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341802', '������', '242000', '86341800', '86340000', '86341800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341821', '��Ϫ��', '242100', '86341800', '86340000', '86341800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341822', '�����', '242200', '86341800', '86340000', '86341800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341823', '������', '242500', '86341800', '86340000', '86341800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341824', '��Ϫ��', '245300', '86341800', '86340000', '86341800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341825', '캵���', '242600', '86341800', '86340000', '86341800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86341881', '������', '242300', '86341800', '86340000', '86341800,86340000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350000', '����ʡ', null, '0', null, null, null, '86350900,86350800,86350700,86350600,86350500,86350400,86350300,86350200,86350100');
INSERT INTO `area` VALUES ('86350100', '������', '350000', '86350000', '86350000', '86350000', '����ʡ', '86350182,86350181,86350128,86350125,86350124,86350123,86350122,86350121,86350111,86350105,86350104,86350103,86350102,86350101');
INSERT INTO `area` VALUES ('86350101', '��Ͻ��', '350000', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350102', '��¥��', '350000', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350103', '̨����', '350000', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350104', '��ɽ��', '350000', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350105', '��β��', '350000', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350111', '������', '350000', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350121', '������', '350100', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350122', '������', '350500', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350123', '��Դ��', '350600', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350124', '������', '350800', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350125', '��̩��', '350700', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350128', 'ƽ̶��', '350400', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350181', '������', '350300', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350182', '������', '350200', '86350100', '86350000', '86350100,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350200', '������', '361000', '86350000', '86350000', '86350000', '����ʡ', '86350213,86350212,86350211,86350206,86350205,86350203,86350201');
INSERT INTO `area` VALUES ('86350201', '��Ͻ��', '361000', '86350200', '86350000', '86350200,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350203', '˼����', '361000', '86350200', '86350000', '86350200,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350205', '������', '361000', '86350200', '86350000', '86350200,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350206', '������', '361000', '86350200', '86350000', '86350200,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350211', '������', '361000', '86350200', '86350000', '86350200,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350212', 'ͬ����', '361100', '86350200', '86350000', '86350200,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350213', '�谲��', '361100', '86350200', '86350000', '86350200,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350300', '������', '351100', '86350000', '86350000', '86350000', '����ʡ', '86350322,86350305,86350304,86350303,86350302,86350301');
INSERT INTO `area` VALUES ('86350301', '��Ͻ��', '351100', '86350300', '86350000', '86350300,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350302', '������', '351100', '86350300', '86350000', '86350300,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350303', '������', '351100', '86350300', '86350000', '86350300,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350304', '�����', '351100', '86350300', '86350000', '86350300,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350305', '������', '351100', '86350300', '86350000', '86350300,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350322', '������', '351200', '86350300', '86350000', '86350300,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350400', '������', '365000', '86350000', '86350000', '86350000', '����ʡ', '86350481,86350430,86350429,86350428,86350427,86350426,86350425,86350424,86350423,86350421,86350403,86350402,86350401');
INSERT INTO `area` VALUES ('86350401', '��Ͻ��', '365000', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350402', '÷����', '365000', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350403', '��Ԫ��', '365000', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350421', '��Ϫ��', '365300', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350423', '������', '365300', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350424', '������', '365400', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350425', '������', '366100', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350426', '��Ϫ��', '365100', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350427', 'ɳ����', '365500', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350428', '������', '353300', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350429', '̩����', '354400', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350430', '������', '354500', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350481', '������', '366000', '86350400', '86350000', '86350400,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350500', 'Ȫ����', '362000', '86350000', '86350000', '86350000', '����ʡ', '86350583,86350582,86350581,86350527,86350526,86350525,86350524,86350521,86350505,86350504,86350503,86350502,86350501');
INSERT INTO `area` VALUES ('86350501', '��Ͻ��', '362000', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350502', '�����', '362000', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350503', '������', '362000', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350504', '�彭��', '362000', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350505', 'Ȫ����', '362100', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350521', '�ݰ���', '362100', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350524', '��Ϫ��', '362400', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350525', '������', '362600', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350526', '�»���', '362500', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350527', '������', '362000', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350581', 'ʯʨ��', '362700', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350582', '������', '362200', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350583', '�ϰ���', '362300', '86350500', '86350000', '86350500,86350000', 'Ȫ����,����ʡ', null);
INSERT INTO `area` VALUES ('86350600', '������', '363000', '86350000', '86350000', '86350000', '����ʡ', '86350681,86350629,86350628,86350627,86350626,86350625,86350624,86350623,86350622,86350603,86350602,86350601');
INSERT INTO `area` VALUES ('86350601', '��Ͻ��', '363000', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350602', 'ܼ����', '363000', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350603', '������', '363000', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350622', '������', '363300', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350623', '������', '363200', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350624', 'گ����', '363500', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350625', '��̩��', '363900', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350626', '��ɽ��', '363400', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350627', '�Ͼ���', '363600', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350628', 'ƽ����', '363700', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350629', '������', '363800', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350681', '������', '363100', '86350600', '86350000', '86350600,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350700', '��ƽ��', '353000', '86350000', '86350000', '86350000', '����ʡ', '86350784,86350783,86350782,86350781,86350725,86350724,86350723,86350722,86350721,86350702,86350701');
INSERT INTO `area` VALUES ('86350701', '��Ͻ��', '353000', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350702', '��ƽ��', '353000', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350721', '˳����', '353200', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350722', '�ֳ���', '353400', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350723', '������', '354100', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350724', '��Ϫ��', '353500', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350725', '������', '353600', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350781', '������', '354000', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350782', '����ɽ��', '354300', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350783', '�����', '353100', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350784', '������', '354200', '86350700', '86350000', '86350700,86350000', '��ƽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86350800', '������', '364000', '86350000', '86350000', '86350000', '����ʡ', '86350881,86350825,86350824,86350823,86350822,86350821,86350802,86350801');
INSERT INTO `area` VALUES ('86350801', '��Ͻ��', '364000', '86350800', '86350000', '86350800,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350802', '������', '364000', '86350800', '86350000', '86350800,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350821', '��͡��', '366300', '86350800', '86350000', '86350800,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350822', '������', '364100', '86350800', '86350000', '86350800,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350823', '�Ϻ���', '364200', '86350800', '86350000', '86350800,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350824', '��ƽ��', '364300', '86350800', '86350000', '86350800,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350825', '������', '366200', '86350800', '86350000', '86350800,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350881', '��ƽ��', '364400', '86350800', '86350000', '86350800,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350900', '������', '352000', '86350000', '86350000', '86350000', '����ʡ', '86350982,86350981,86350926,86350925,86350924,86350923,86350922,86350921,86350902,86350901');
INSERT INTO `area` VALUES ('86350901', '��Ͻ��', '352000', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350902', '������', '352000', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350921', 'ϼ����', '355100', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350922', '������', '352200', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350923', '������', '352300', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350924', '������', '355500', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350925', '������', '355400', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350926', '������', '355300', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350981', '������', '355000', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86350982', '������', '355200', '86350900', '86350000', '86350900,86350000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360000', '����ʡ', null, '0', null, null, null, '86361100,86361000,86360900,86360800,86360700,86360600,86360500,86360400,86360300,86360200,86360100');
INSERT INTO `area` VALUES ('86360100', '�ϲ���', '330000', '86360000', '86360000', '86360000', '����ʡ', '86360124,86360123,86360122,86360121,86360111,86360105,86360104,86360103,86360102,86360101');
INSERT INTO `area` VALUES ('86360101', '��Ͻ��', '330000', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360102', '������', '330000', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360103', '������', '330000', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360104', '��������', '330000', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360105', '������', '330000', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360111', '��ɽ����', '330000', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360121', '�ϲ���', '330200', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360122', '�½���', '330100', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360123', '������', '330500', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360124', '������', '331700', '86360100', '86360000', '86360100,86360000', '�ϲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86360200', '��������', '333000', '86360000', '86360000', '86360000', '����ʡ', '86360281,86360222,86360203,86360202,86360201');
INSERT INTO `area` VALUES ('86360201', '��Ͻ��', '333000', '86360200', '86360000', '86360200,86360000', '��������,����ʡ', null);
INSERT INTO `area` VALUES ('86360202', '������', '333000', '86360200', '86360000', '86360200,86360000', '��������,����ʡ', null);
INSERT INTO `area` VALUES ('86360203', '��ɽ��', '333000', '86360200', '86360000', '86360200,86360000', '��������,����ʡ', null);
INSERT INTO `area` VALUES ('86360222', '������', '333400', '86360200', '86360000', '86360200,86360000', '��������,����ʡ', null);
INSERT INTO `area` VALUES ('86360281', '��ƽ��', '333300', '86360200', '86360000', '86360200,86360000', '��������,����ʡ', null);
INSERT INTO `area` VALUES ('86360300', 'Ƽ����', '337000', '86360000', '86360000', '86360000', '����ʡ', '86360323,86360322,86360321,86360313,86360302,86360301');
INSERT INTO `area` VALUES ('86360301', '��Ͻ��', '337000', '86360300', '86360000', '86360300,86360000', 'Ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86360302', '��Դ��', '337000', '86360300', '86360000', '86360300,86360000', 'Ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86360313', '�涫��', '337000', '86360300', '86360000', '86360300,86360000', 'Ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86360321', '������', '337100', '86360300', '86360000', '86360300,86360000', 'Ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86360322', '������', '337000', '86360300', '86360000', '86360300,86360000', 'Ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86360323', '«Ϫ��', '337000', '86360300', '86360000', '86360300,86360000', 'Ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86360400', '�Ž���', '332000', '86360000', '86360000', '86360000', '����ʡ', '86360481,86360430,86360429,86360428,86360427,86360426,86360425,86360424,86360423,86360421,86360403,86360402,86360401');
INSERT INTO `area` VALUES ('86360401', '��Ͻ��', '332000', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360402', '®ɽ��', '332900', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360403', '�����', '332000', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360421', '�Ž���', '332100', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360423', '������', '332300', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360424', '��ˮ��', '332400', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360425', '������', '330300', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360426', '�°���', '330400', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360427', '������', '332800', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360428', '������', '332600', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360429', '������', '332500', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360430', '������', '332700', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360481', '�����', '332200', '86360400', '86360000', '86360400,86360000', '�Ž���,����ʡ', null);
INSERT INTO `area` VALUES ('86360500', '������', '336500', '86360000', '86360000', '86360000', '����ʡ', '86360521,86360502,86360501');
INSERT INTO `area` VALUES ('86360501', '��Ͻ��', '336500', '86360500', '86360000', '86360500,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360502', '��ˮ��', '336500', '86360500', '86360000', '86360500,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360521', '������', '336600', '86360500', '86360000', '86360500,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360600', 'ӥ̶��', '335000', '86360000', '86360000', '86360000', '����ʡ', '86360681,86360622,86360602,86360601');
INSERT INTO `area` VALUES ('86360601', '��Ͻ��', '335000', '86360600', '86360000', '86360600,86360000', 'ӥ̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86360602', '�º���', '335000', '86360600', '86360000', '86360600,86360000', 'ӥ̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86360622', '�཭��', '335200', '86360600', '86360000', '86360600,86360000', 'ӥ̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86360681', '��Ϫ��', '335400', '86360600', '86360000', '86360600,86360000', 'ӥ̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86360700', '������', '341000', '86360000', '86360000', '86360000', '����ʡ', '86360782,86360781,86360735,86360734,86360733,86360732,86360731,86360730,86360729,86360728,86360727,86360726,86360725,86360724,86360723,86360722,86360721,86360702,86360701');
INSERT INTO `area` VALUES ('86360701', '��Ͻ��', '341000', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360702', '�¹���', '341000', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360721', '�ӡ���', '341100', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360722', '�ŷ���', '341600', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360723', '������', '341500', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360724', '������', '341200', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360725', '������', '341300', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360726', '��Զ��', '342100', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360727', '������', '341700', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360728', '������', '341900', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360729', 'ȫ����', '341800', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360730', '������', '342800', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360731', '�ڶ���', '342300', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360732', '�˹���', '342400', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360733', '�����', '342600', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360734', 'Ѱ����', '342200', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360735', 'ʯ����', '342700', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360781', '�����', '342500', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360782', '�Ͽ���', '341400', '86360700', '86360000', '86360700,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360800', '������', '343000', '86360000', '86360000', '86360000', '����ʡ', '86360881,86360830,86360829,86360828,86360827,86360826,86360825,86360824,86360823,86360822,86360821,86360803,86360802,86360801');
INSERT INTO `area` VALUES ('86360801', '��Ͻ��', '343000', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360802', '������', '343000', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360803', '��ԭ��', '343000', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360821', '������', '343100', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360822', '��ˮ��', '331600', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360823', 'Ͽ����', '331400', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360824', '�¸���', '331300', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360825', '������', '331500', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360826', '̩����', '343700', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360827', '�촨��', '343900', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360828', '����', '343800', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360829', '������', '343200', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360830', '������', '343400', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360881', '����ɽ��', '343600', '86360800', '86360000', '86360800,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86360900', '�˴���', '336000', '86360000', '86360000', '86360000', '����ʡ', '86360983,86360982,86360981,86360926,86360925,86360924,86360923,86360922,86360921,86360902,86360901');
INSERT INTO `area` VALUES ('86360901', '��Ͻ��', '336000', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360902', 'Ԭ����', '336000', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360921', '������', '330700', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360922', '������', '336100', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360923', '�ϸ���', '336400', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360924', '�˷���', '336300', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360925', '������', '330600', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360926', 'ͭ����', '336200', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360981', '�����', '331100', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360982', '������', '331200', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86360983', '�߰���', '330800', '86360900', '86360000', '86360900,86360000', '�˴���,����ʡ', null);
INSERT INTO `area` VALUES ('86361000', '������', '344000', '86360000', '86360000', '86360000', '����ʡ', '86361030,86361029,86361028,86361027,86361026,86361025,86361024,86361023,86361022,86361021,86361002,86361001');
INSERT INTO `area` VALUES ('86361001', '��Ͻ��', '344000', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361002', '�ٴ���', '344100', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361021', '�ϳ���', '344700', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361022', '�质��', '344600', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361023', '�Ϸ���', '344500', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361024', '������', '344200', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361025', '�ְ���', '344300', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361026', '�˻���', '344400', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361027', '��Ϫ��', '344800', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361028', '��Ϫ��', '335300', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361029', '������', '331800', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361030', '�����', '344900', '86361000', '86360000', '86361000,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361100', '������', '334000', '86360000', '86360000', '86360000', '����ʡ', '86361181,86361130,86361129,86361128,86361127,86361126,86361125,86361124,86361123,86361122,86361121,86361102,86361101');
INSERT INTO `area` VALUES ('86361101', '��Ͻ��', '334000', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361102', '������', '334000', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361121', '������', '334100', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361122', '�����', '334600', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361123', '��ɽ��', '334700', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361124', 'Ǧɽ��', '334500', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361125', '�����', '334300', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361126', '߮����', '334400', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361127', '�����', '335100', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361128', '۶����', '333100', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361129', '������', '335500', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361130', '��Դ��', '333200', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86361181', '������', '334200', '86361100', '86360000', '86361100,86360000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86370000', 'ɽ��ʡ', null, '0', null, null, null, '86371700,86371600,86371500,86371400,86371300,86371200,86371100,86371000,86370900,86370800,86370700,86370600,86370500,86370400,86370300,86370200,86370100');
INSERT INTO `area` VALUES ('86370100', '������', '250000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370181,86370126,86370125,86370124,86370113,86370112,86370105,86370104,86370103,86370102,86370101');
INSERT INTO `area` VALUES ('86370101', '��Ͻ��', '250000', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370102', '������', '250000', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370103', '������', '250000', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370104', '������', '250000', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370105', '������', '250000', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370112', '������', '250100', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370113', '������', '250300', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370124', 'ƽ����', '250400', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370125', '������', '251400', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370126', '�̺���', '251600', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370181', '������', '250200', '86370100', '86370000', '86370100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370200', '�ൺ��', '266000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370285,86370284,86370283,86370282,86370281,86370214,86370213,86370212,86370211,86370205,86370203,86370202,86370201');
INSERT INTO `area` VALUES ('86370201', '��Ͻ��', '266000', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370202', '������', '266000', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370203', '�б���', '266000', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370205', '�ķ���', '266000', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370211', '�Ƶ���', '266000', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370212', '��ɽ��', '266100', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370213', '�����', '266000', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370214', '������', '266000', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370281', '������', '266300', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370282', '��ī��', '266200', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370283', 'ƽ����', '266700', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370284', '������', '266400', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370285', '������', '266600', '86370200', '86370000', '86370200,86370000', '�ൺ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370300', '�Ͳ���', '255100', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370323,86370322,86370321,86370306,86370305,86370304,86370303,86370302,86370301');
INSERT INTO `area` VALUES ('86370301', '��Ͻ��', '255100', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370302', '�ʹ���', '255100', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370303', '�ŵ���', '255000', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370304', '��ɽ��', '255200', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370305', '������', '255400', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370306', '�ܴ���', '255300', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370321', '��̨��', '256400', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370322', '������', '256300', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370323', '��Դ��', '256100', '86370300', '86370000', '86370300,86370000', '�Ͳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370400', '��ׯ��', '277000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370481,86370406,86370405,86370404,86370403,86370402,86370401');
INSERT INTO `area` VALUES ('86370401', '��Ͻ��', '277000', '86370400', '86370000', '86370400,86370000', '��ׯ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370402', '������', '277000', '86370400', '86370000', '86370400,86370000', '��ׯ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370403', 'Ѧ����', '277000', '86370400', '86370000', '86370400,86370000', '��ׯ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370404', 'ỳ���', '277300', '86370400', '86370000', '86370400,86370000', '��ׯ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370405', '̨��ׯ��', '277400', '86370400', '86370000', '86370400,86370000', '��ׯ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370406', 'ɽͤ��', '277200', '86370400', '86370000', '86370400,86370000', '��ׯ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370481', '������', '277500', '86370400', '86370000', '86370400,86370000', '��ׯ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370500', '��Ӫ��', '257000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370523,86370522,86370521,86370503,86370502,86370501');
INSERT INTO `area` VALUES ('86370501', '��Ͻ��', '257000', '86370500', '86370000', '86370500,86370000', '��Ӫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370502', '��Ӫ��', '257100', '86370500', '86370000', '86370500,86370000', '��Ӫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370503', '�ӿ���', '257200', '86370500', '86370000', '86370500,86370000', '��Ӫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370521', '������', '257500', '86370500', '86370000', '86370500,86370000', '��Ӫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370522', '������', '257400', '86370500', '86370000', '86370500,86370000', '��Ӫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370523', '������', '257300', '86370500', '86370000', '86370500,86370000', '��Ӫ��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370600', '��̨��', '264000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370687,86370686,86370685,86370684,86370683,86370682,86370681,86370634,86370613,86370612,86370611,86370602,86370601');
INSERT INTO `area` VALUES ('86370601', '��Ͻ��', '264000', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370602', '֥���', '264000', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370611', '��ɽ��', '265500', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370612', 'Ĳƽ��', '264100', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370613', '��ɽ��', '264000', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370634', '������', '265800', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370681', '������', '265700', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370682', '������', '265200', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370683', '������', '261400', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370684', '������', '265600', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370685', '��Զ��', '265400', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370686', '��ϼ��', '265300', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370687', '������', '265100', '86370600', '86370000', '86370600,86370000', '��̨��,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370700', 'Ϋ����', '261000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370786,86370785,86370784,86370783,86370782,86370781,86370725,86370724,86370705,86370704,86370703,86370702,86370701');
INSERT INTO `area` VALUES ('86370701', '��Ͻ��', '261000', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370702', 'Ϋ����', '261000', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370703', '��ͤ��', '261100', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370704', '������', '261200', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370705', '������', '261000', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370724', '������', '262600', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370725', '������', '262400', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370781', '������', '262500', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370782', '�����', '262200', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370783', '�ٹ���', '262700', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370784', '������', '262100', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370785', '������', '261500', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370786', '������', '261300', '86370700', '86370000', '86370700,86370000', 'Ϋ����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370800', '������', '272000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370883,86370882,86370881,86370832,86370831,86370830,86370829,86370828,86370827,86370826,86370811,86370802,86370801');
INSERT INTO `area` VALUES ('86370801', '��Ͻ��', '272000', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370802', '������', '272000', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370811', '�γ���', '272000', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370826', '΢ɽ��', '277600', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370827', '��̨��', '272300', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370828', '������', '272200', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370829', '������', '272400', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370830', '������', '272500', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370831', '��ˮ��', '273200', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370832', '��ɽ��', '272600', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370881', '������', '273100', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370882', '������', '272000', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370883', '�޳���', '273500', '86370800', '86370000', '86370800,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370900', '̩����', '271000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86370983,86370982,86370923,86370921,86370903,86370902,86370901');
INSERT INTO `area` VALUES ('86370901', '��Ͻ��', '271000', '86370900', '86370000', '86370900,86370000', '̩����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370902', '̩ɽ��', '271000', '86370900', '86370000', '86370900,86370000', '̩����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370903', '�����', '271000', '86370900', '86370000', '86370900,86370000', '̩����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370921', '������', '271400', '86370900', '86370000', '86370900,86370000', '̩����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370923', '��ƽ��', '271500', '86370900', '86370000', '86370900,86370000', '̩����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370982', '��̩��', '271200', '86370900', '86370000', '86370900,86370000', '̩����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86370983', '�ʳ���', '271600', '86370900', '86370000', '86370900,86370000', '̩����,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371000', '������', '264000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86371083,86371082,86371081,86371002,86371001');
INSERT INTO `area` VALUES ('86371001', '��Ͻ��', '264000', '86371000', '86370000', '86371000,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371002', '������', '264200', '86371000', '86370000', '86371000,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371081', '�ĵ���', '264400', '86371000', '86370000', '86371000,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371082', '�ٳ���', '264300', '86371000', '86370000', '86371000,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371083', '��ɽ��', '264500', '86371000', '86370000', '86371000,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371100', '������', '276800', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86371122,86371121,86371103,86371102,86371101');
INSERT INTO `area` VALUES ('86371101', '��Ͻ��', '276800', '86371100', '86370000', '86371100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371102', '������', '276800', '86371100', '86370000', '86371100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371103', '�ɽ��', '276800', '86371100', '86370000', '86371100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371121', '������', '262300', '86371100', '86370000', '86371100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371122', '�졡��', '276500', '86371100', '86370000', '86371100,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371200', '������', '271100', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86371203,86371202,86371201');
INSERT INTO `area` VALUES ('86371201', '��Ͻ��', '271100', '86371200', '86370000', '86371200,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371202', '������', '271100', '86371200', '86370000', '86371200,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371203', '�ֳ���', '271100', '86371200', '86370000', '86371200,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371300', '������', '276000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86371329,86371328,86371327,86371326,86371325,86371324,86371323,86371322,86371321,86371312,86371311,86371302,86371301');
INSERT INTO `area` VALUES ('86371301', '��Ͻ��', '276000', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371302', '��ɽ��', '276000', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371311', '��ׯ��', '276000', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371312', '�Ӷ���', '276000', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371321', '������', '276300', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371322', '۰����', '276100', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371323', '��ˮ��', '276400', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371324', '��ɽ��', '277700', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371325', '�ѡ���', '273400', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371326', 'ƽ����', '273300', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371327', '������', '276600', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371328', '������', '276200', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371329', '������', '276700', '86371300', '86370000', '86371300,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371400', '������', '253000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86371482,86371481,86371428,86371427,86371426,86371425,86371424,86371423,86371422,86371421,86371402,86371401');
INSERT INTO `area` VALUES ('86371401', '��Ͻ��', '253000', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371402', '�³���', '253000', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371421', '�ꡡ��', '253500', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371422', '������', '253400', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371423', '������', '253700', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371424', '������', '251500', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371425', '�����', '251100', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371426', 'ƽԭ��', '253100', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371427', '�Ľ���', '253200', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371428', '�����', '253300', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371481', '������', '253600', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371482', '�����', '251200', '86371400', '86370000', '86371400,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371500', '�ĳ���', '252000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86371581,86371526,86371525,86371524,86371523,86371522,86371521,86371502,86371501');
INSERT INTO `area` VALUES ('86371501', '��Ͻ��', '252000', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371502', '��������', '252000', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371521', '������', '252300', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371522', 'ݷ����', '252400', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371523', '��ƽ��', '252100', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371524', '������', '252200', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371525', '�ڡ���', '252500', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371526', '������', '252800', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371581', '������', '252600', '86371500', '86370000', '86371500,86370000', '�ĳ���,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371600', '������', '256600', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86371626,86371625,86371624,86371623,86371622,86371621,86371602,86371601');
INSERT INTO `area` VALUES ('86371601', '��Ͻ��', '256600', '86371600', '86370000', '86371600,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371602', '������', '256600', '86371600', '86370000', '86371600,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371621', '������', '251700', '86371600', '86370000', '86371600,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371622', '������', '251800', '86371600', '86370000', '86371600,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371623', '�����', '251900', '86371600', '86370000', '86371600,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371624', 'մ����', '256800', '86371600', '86370000', '86371600,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371625', '������', '256500', '86371600', '86370000', '86371600,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371626', '��ƽ��', '256200', '86371600', '86370000', '86371600,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371700', '������', '274000', '86370000', '86370000', '86370000', 'ɽ��ʡ', '86371728,86371727,86371726,86371725,86371724,86371723,86371722,86371721,86371702,86371701');
INSERT INTO `area` VALUES ('86371701', '��Ͻ��', '274000', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371702', 'ĵ����', '274000', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371721', '�ܡ���', '274400', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371722', '������', '274300', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371723', '������', '274200', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371724', '��Ұ��', '274900', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371725', '۩����', '274700', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371726', '۲����', '274600', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371727', '������', '274100', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86371728', '������', '274500', '86371700', '86370000', '86371700,86370000', '������,ɽ��ʡ', null);
INSERT INTO `area` VALUES ('86410000', '����ʡ', null, '0', null, null, null, '86411700,86411600,86411500,86411400,86411300,86411200,86411100,86411000,86410900,86410800,86410700,86410600,86410500,86410400,86410300,86410200,86410100');
INSERT INTO `area` VALUES ('86410100', '֣����', '450000', '86410000', '86410000', '86410000', '����ʡ', '86410185,86410184,86410183,86410182,86410181,86410122,86410108,86410106,86410105,86410104,86410103,86410102,86410101');
INSERT INTO `area` VALUES ('86410101', '��Ͻ��', '450000', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410102', '��ԭ��', '450000', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410103', '������', '450000', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410104', '�ܳǻ�����', '450000', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410105', '��ˮ��', '450000', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410106', '�Ͻ���', '450041', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410108', '��ɽ��', '450000', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410122', '��Ĳ��', '451450', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410181', '������', '452100', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410182', '������', '450100', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410183', '������', '452370', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410184', '��֣��', '451100', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410185', '�Ƿ���', '452470', '86410100', '86410000', '86410100,86410000', '֣����,����ʡ', null);
INSERT INTO `area` VALUES ('86410200', '������', '475000', '86410000', '86410000', '86410000', '����ʡ', '86410225,86410224,86410223,86410222,86410221,86410211,86410205,86410204,86410203,86410202,86410201');
INSERT INTO `area` VALUES ('86410201', '��Ͻ��', '475000', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410202', '��ͤ��', '475000', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410203', '˳�ӻ�����', '475000', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410204', '��¥��', '475000', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410205', '�Ϲ���', '475000', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410211', '������', '475000', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410221', '轡���', '475200', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410222', 'ͨ����', '452200', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410223', 'ξ����', '452100', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410224', '������', '475100', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410225', '������', '475300', '86410200', '86410000', '86410200,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410300', '������', '471000', '86410000', '86410000', '86410000', '����ʡ', '86410381,86410329,86410328,86410327,86410326,86410325,86410324,86410323,86410322,86410307,86410306,86410305,86410304,86410303,86410302,86410301');
INSERT INTO `area` VALUES ('86410301', '��Ͻ��', '471000', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410302', '�ϳ���', '471000', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410303', '������', '471000', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410304', '�ܺӻ�����', '471000', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410305', '������', '471000', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410306', '������', '471000', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410307', '������', '471000', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410322', '�Ͻ���', '471100', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410323', '�°���', '471800', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410324', '�ﴨ��', '471500', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410325', '�ԡ���', '471400', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410326', '������', '471200', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410327', '������', '471600', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410328', '������', '471700', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410329', '������', '471300', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410381', '��ʦ��', '471900', '86410300', '86410000', '86410300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410400', 'ƽ��ɽ��', '467000', '86410000', '86410000', '86410000', '����ʡ', '86410482,86410481,86410425,86410423,86410422,86410421,86410411,86410404,86410403,86410402,86410401');
INSERT INTO `area` VALUES ('86410401', '��Ͻ��', '467000', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410402', '�»���', '467000', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410403', '������', '467000', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410404', 'ʯ����', '467000', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410411', 'տ����', '467000', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410421', '������', '467400', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410422', 'Ҷ����', '467200', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410423', '³ɽ��', '467300', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410425', 'ۣ����', '467100', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410481', '�����', '462500', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410482', '������', '467500', '86410400', '86410000', '86410400,86410000', 'ƽ��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86410500', '������', '455000', '86410000', '86410000', '86410000', '����ʡ', '86410581,86410527,86410526,86410523,86410522,86410506,86410505,86410503,86410502,86410501');
INSERT INTO `area` VALUES ('86410501', '��Ͻ��', '455000', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410502', '�ķ���', '455000', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410503', '������', '455000', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410505', '����', '455000', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410506', '������', '455000', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410522', '������', '455100', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410523', '������', '456150', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410526', '������', '456400', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410527', '�ڻ���', '456300', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410581', '������', '456500', '86410500', '86410000', '86410500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410600', '�ױ���', '458000', '86410000', '86410000', '86410000', '����ʡ', '86410622,86410621,86410611,86410603,86410602,86410601');
INSERT INTO `area` VALUES ('86410601', '��Ͻ��', '458000', '86410600', '86410000', '86410600,86410000', '�ױ���,����ʡ', null);
INSERT INTO `area` VALUES ('86410602', '��ɽ��', '458000', '86410600', '86410000', '86410600,86410000', '�ױ���,����ʡ', null);
INSERT INTO `area` VALUES ('86410603', 'ɽ����', '458000', '86410600', '86410000', '86410600,86410000', '�ױ���,����ʡ', null);
INSERT INTO `area` VALUES ('86410611', '俱���', '458000', '86410600', '86410000', '86410600,86410000', '�ױ���,����ʡ', null);
INSERT INTO `area` VALUES ('86410621', '������', '456250', '86410600', '86410000', '86410600,86410000', '�ױ���,����ʡ', null);
INSERT INTO `area` VALUES ('86410622', '信���', '456750', '86410600', '86410000', '86410600,86410000', '�ױ���,����ʡ', null);
INSERT INTO `area` VALUES ('86410700', '������', '453000', '86410000', '86410000', '86410000', '����ʡ', '86410782,86410781,86410728,86410727,86410726,86410725,86410724,86410721,86410711,86410704,86410703,86410702,86410701');
INSERT INTO `area` VALUES ('86410701', '��Ͻ��', '453000', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410702', '������', '453000', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410703', '������', '453000', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410704', '��Ȫ��', '453000', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410711', '��Ұ��', '453000', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410721', '������', '453700', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410724', '�����', '453800', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410725', 'ԭ����', '453500', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410726', '�ӽ���', '453200', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410727', '������', '453300', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410728', '��ԫ��', '453400', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410781', '������', '453100', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410782', '������', '453600', '86410700', '86410000', '86410700,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410800', '������', '454150', '86410000', '86410000', '86410000', '����ʡ', '86410883,86410882,86410881,86410825,86410823,86410822,86410821,86410811,86410804,86410803,86410802,86410801');
INSERT INTO `area` VALUES ('86410801', '��Ͻ��', '454150', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410802', '�����', '454150', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410803', '��վ��', '454150', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410804', '�����', '454150', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410811', 'ɽ����', '454150', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410821', '������', '454350', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410822', '������', '454450', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410823', '������', '454950', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410825', '�¡���', '454850', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410881', '��Դ��', '454650', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410882', '������', '454550', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410883', '������', '454750', '86410800', '86410000', '86410800,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86410900', '�����', '457000', '86410000', '86410000', '86410000', '����ʡ', '86410928,86410927,86410926,86410923,86410922,86410902,86410901');
INSERT INTO `area` VALUES ('86410901', '��Ͻ��', '457000', '86410900', '86410000', '86410900,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86410902', '������', '457000', '86410900', '86410000', '86410900,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86410922', '�����', '457300', '86410900', '86410000', '86410900,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86410923', '������', '457400', '86410900', '86410000', '86410900,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86410926', '������', '457500', '86410900', '86410000', '86410900,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86410927', '̨ǰ��', '457600', '86410900', '86410000', '86410900,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86410928', '�����', '457100', '86410900', '86410000', '86410900,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411000', '�����', '461000', '86410000', '86410000', '86410000', '����ʡ', '86411082,86411081,86411025,86411024,86411023,86411002,86411001');
INSERT INTO `area` VALUES ('86411001', '��Ͻ��', '461000', '86411000', '86410000', '86411000,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411002', 'κ����', '461000', '86411000', '86410000', '86411000,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411023', '�����', '461100', '86411000', '86410000', '86411000,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411024', '۳����', '461200', '86411000', '86410000', '86411000,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411025', '�����', '452670', '86411000', '86410000', '86411000,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411081', '������', '452570', '86411000', '86410000', '86411000,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411082', '������', '461500', '86411000', '86410000', '86411000,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411100', '�����', '462000', '86410000', '86410000', '86410000', '����ʡ', '86411122,86411121,86411104,86411103,86411102,86411101');
INSERT INTO `area` VALUES ('86411101', '��Ͻ��', '462000', '86411100', '86410000', '86411100,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411102', 'Դ����', '462000', '86411100', '86410000', '86411100,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411103', '۱����', '462300', '86411100', '86410000', '86411100,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411104', '������', '462300', '86411100', '86410000', '86411100,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411121', '������', '462400', '86411100', '86410000', '86411100,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411122', '�����', '462600', '86411100', '86410000', '86411100,86410000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411200', '����Ͽ��', '472000', '86410000', '86410000', '86410000', '����ʡ', '86411282,86411281,86411224,86411222,86411221,86411202,86411201');
INSERT INTO `area` VALUES ('86411201', '��Ͻ��', '472000', '86411200', '86410000', '86411200,86410000', '����Ͽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86411202', '������', '472000', '86411200', '86410000', '86411200,86410000', '����Ͽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86411221', '�ų���', '472400', '86411200', '86410000', '86411200,86410000', '����Ͽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86411222', '�¡���', '472100', '86411200', '86410000', '86411200,86410000', '����Ͽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86411224', '¬����', '472200', '86411200', '86410000', '86411200,86410000', '����Ͽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86411281', '������', '472300', '86411200', '86410000', '86411200,86410000', '����Ͽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86411282', '�鱦��', '472500', '86411200', '86410000', '86411200,86410000', '����Ͽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86411300', '������', '473000', '86410000', '86410000', '86410000', '����ʡ', '86411381,86411330,86411329,86411328,86411327,86411326,86411325,86411324,86411323,86411322,86411321,86411303,86411302,86411301');
INSERT INTO `area` VALUES ('86411301', '��Ͻ��', '473000', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411302', '�����', '473000', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411303', '������', '473000', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411321', '������', '474650', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411322', '������', '473200', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411323', '��Ͽ��', '474550', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411324', '��ƽ��', '474250', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411325', '������', '474350', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411326', '������', '474450', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411327', '������', '473300', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411328', '�ƺ���', '473400', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411329', '��Ұ��', '473500', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411330', 'ͩ����', '474750', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411381', '������', '474150', '86411300', '86410000', '86411300,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411400', '������', '476000', '86410000', '86410000', '86410000', '����ʡ', '86411481,86411426,86411425,86411424,86411423,86411422,86411421,86411403,86411402,86411401');
INSERT INTO `area` VALUES ('86411401', '��Ͻ��', '476000', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411402', '��԰��', '476000', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411403', '�����', '476000', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411421', '��Ȩ��', '476800', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411422', '���', '476900', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411423', '������', '476700', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411424', '�ϳ���', '476200', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411425', '�ݳ���', '476300', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411426', '������', '476400', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411481', '������', '476600', '86411400', '86410000', '86411400,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411500', '������', '464000', '86410000', '86410000', '86410000', '����ʡ', '86411528,86411527,86411526,86411525,86411524,86411523,86411522,86411521,86411503,86411502,86411501');
INSERT INTO `area` VALUES ('86411501', '��Ͻ��', '464000', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411502', 'ʦ����', '464000', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411503', 'ƽ����', '464000', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411521', '��ɽ��', '464200', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411522', '��ɽ��', '465450', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411523', '�¡���', '465500', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411524', '�̳���', '465350', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411525', '��ʼ��', '465200', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411526', '�괨��', '465150', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411527', '������', '464400', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411528', 'Ϣ����', '464300', '86411500', '86410000', '86411500,86410000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86411600', '�ܿ���', '466000', '86410000', '86410000', '86410000', '����ʡ', '86411681,86411628,86411627,86411626,86411625,86411624,86411623,86411622,86411621,86411602,86411601');
INSERT INTO `area` VALUES ('86411601', '��Ͻ��', '466000', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411602', '������', '466000', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411621', '������', '461300', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411622', '������', '466600', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411623', '��ˮ��', '466100', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411624', '������', '466300', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411625', '������', '477150', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411626', '������', '466700', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411627', '̫����', '475400', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411628', '¹����', '477200', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411681', '�����', '466200', '86411600', '86410000', '86411600,86410000', '�ܿ���,����ʡ', null);
INSERT INTO `area` VALUES ('86411700', 'פ�����', '463000', '86410000', '86410000', '86410000', '����ʡ', '86411729,86411728,86411727,86411726,86411725,86411724,86411723,86411722,86411721,86411702,86411701');
INSERT INTO `area` VALUES ('86411701', '��Ͻ��', '463000', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411702', '�����', '463000', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411721', '��ƽ��', '463900', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411722', '�ϲ���', '463800', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411723', 'ƽ����', '463400', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411724', '������', '463600', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411725', 'ȷɽ��', '463200', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411726', '������', '463700', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411727', '������', '463300', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411728', '��ƽ��', '463100', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86411729', '�²���', '463500', '86411700', '86410000', '86411700,86410000', 'פ�����,����ʡ', null);
INSERT INTO `area` VALUES ('86420000', '����ʡ', null, '0', null, null, null, '86429000,86422800,86421300,86421200,86421100,86421000,86420900,86420800,86420700,86420600,86420500,86420300,86420200,86420100');
INSERT INTO `area` VALUES ('86420100', '�人��', '430000', '86420000', '86420000', '86420000', '����ʡ', '86420117,86420116,86420115,86420114,86420113,86420112,86420111,86420107,86420106,86420105,86420104,86420103,86420102,86420101');
INSERT INTO `area` VALUES ('86420101', '��Ͻ��', '430000', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420102', '������', '430014', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420103', '������', '430000', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420104', '�ǿ���', '430000', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420105', '������', '430050', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420106', '�����', '430000', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420107', '��ɽ��', '430080', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420111', '��ɽ��', '430070', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420112', '��������', '430040', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420113', '������', '430090', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420114', '�̵���', '430100', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420115', '������', '430200', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420116', '������', '432200', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420117', '������', '431400', '86420100', '86420000', '86420100,86420000', '�人��,����ʡ', null);
INSERT INTO `area` VALUES ('86420200', '��ʯ��', '435000', '86420000', '86420000', '86420000', '����ʡ', '86420281,86420222,86420205,86420204,86420203,86420202,86420201');
INSERT INTO `area` VALUES ('86420201', '��Ͻ��', '435000', '86420200', '86420000', '86420200,86420000', '��ʯ��,����ʡ', null);
INSERT INTO `area` VALUES ('86420202', '��ʯ����', '435000', '86420200', '86420000', '86420200,86420000', '��ʯ��,����ʡ', null);
INSERT INTO `area` VALUES ('86420203', '����ɽ��', '435000', '86420200', '86420000', '86420200,86420000', '��ʯ��,����ʡ', null);
INSERT INTO `area` VALUES ('86420204', '��½��', '435000', '86420200', '86420000', '86420200,86420000', '��ʯ��,����ʡ', null);
INSERT INTO `area` VALUES ('86420205', '��ɽ��', '435000', '86420200', '86420000', '86420200,86420000', '��ʯ��,����ʡ', null);
INSERT INTO `area` VALUES ('86420222', '������', '435200', '86420200', '86420000', '86420200,86420000', '��ʯ��,����ʡ', null);
INSERT INTO `area` VALUES ('86420281', '��ұ��', '435100', '86420200', '86420000', '86420200,86420000', '��ʯ��,����ʡ', null);
INSERT INTO `area` VALUES ('86420300', 'ʮ����', '442000', '86420000', '86420000', '86420000', '����ʡ', '86420381,86420325,86420324,86420323,86420322,86420321,86420303,86420302,86420301');
INSERT INTO `area` VALUES ('86420301', '��Ͻ��', '442000', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420302', 'é����', '442000', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420303', '������', '442000', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420321', '�ǡ���', '442500', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420322', '������', '442600', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420323', '��ɽ��', '442200', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420324', '��Ϫ��', '442300', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420325', '������', '442100', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420381', '��������', '442700', '86420300', '86420000', '86420300,86420000', 'ʮ����,����ʡ', null);
INSERT INTO `area` VALUES ('86420500', '�˲���', '443000', '86420000', '86420000', '86420000', '����ʡ', '86420583,86420582,86420581,86420529,86420528,86420527,86420526,86420525,86420506,86420505,86420504,86420503,86420502,86420501');
INSERT INTO `area` VALUES ('86420501', '��Ͻ��', '443000', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420502', '������', '443000', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420503', '��Ҹ���', '443000', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420504', '�����', '443000', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420505', '�Vͤ��', '443000', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420506', '������', '443100', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420525', 'Զ����', '444200', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420526', '��ɽ��', '443700', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420527', '������', '443600', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420528', '����������������', '443500', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420529', '���������������', '443400', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420581', '�˶���', '443000', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420582', '������', '444100', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420583', '֦����', '443200', '86420500', '86420000', '86420500,86420000', '�˲���,����ʡ', null);
INSERT INTO `area` VALUES ('86420600', '�差��', '441000', '86420000', '86420000', '86420000', '����ʡ', '86420684,86420683,86420682,86420626,86420625,86420624,86420607,86420606,86420602,86420601');
INSERT INTO `area` VALUES ('86420601', '��Ͻ��', '441000', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420602', '�����', '441000', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420606', '������', '441000', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420607', '������', '441100', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420624', '������', '441500', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420625', '�ȳ���', '441700', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420626', '������', '441600', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420682', '�Ϻӿ���', '441800', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420683', '������', '441200', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420684', '�˳���', '441400', '86420600', '86420000', '86420600,86420000', '�差��,����ʡ', null);
INSERT INTO `area` VALUES ('86420700', '������', '436000', '86420000', '86420000', '86420000', '����ʡ', '86420704,86420703,86420702,86420701');
INSERT INTO `area` VALUES ('86420701', '��Ͻ��', '436000', '86420700', '86420000', '86420700,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420702', '���Ӻ���', '436000', '86420700', '86420000', '86420700,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420703', '������', '436000', '86420700', '86420000', '86420700,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420704', '������', '436000', '86420700', '86420000', '86420700,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420800', '������', '448000', '86420000', '86420000', '86420000', '����ʡ', '86420881,86420822,86420821,86420804,86420802,86420801');
INSERT INTO `area` VALUES ('86420801', '��Ͻ��', '448000', '86420800', '86420000', '86420800,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420802', '������', '448000', '86420800', '86420000', '86420800,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420804', '�޵���', '448000', '86420800', '86420000', '86420800,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420821', '��ɽ��', '431800', '86420800', '86420000', '86420800,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420822', 'ɳ����', '448200', '86420800', '86420000', '86420800,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420881', '������', '431900', '86420800', '86420000', '86420800,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86420900', 'Т����', '432000', '86420000', '86420000', '86420000', '����ʡ', '86420984,86420982,86420981,86420923,86420922,86420921,86420902,86420901');
INSERT INTO `area` VALUES ('86420901', '��Ͻ��', '432000', '86420900', '86420000', '86420900,86420000', 'Т����,����ʡ', null);
INSERT INTO `area` VALUES ('86420902', 'Т����', '432100', '86420900', '86420000', '86420900,86420000', 'Т����,����ʡ', null);
INSERT INTO `area` VALUES ('86420921', 'Т����', '432900', '86420900', '86420000', '86420900,86420000', 'Т����,����ʡ', null);
INSERT INTO `area` VALUES ('86420922', '������', '432800', '86420900', '86420000', '86420900,86420000', 'Т����,����ʡ', null);
INSERT INTO `area` VALUES ('86420923', '������', '432500', '86420900', '86420000', '86420900,86420000', 'Т����,����ʡ', null);
INSERT INTO `area` VALUES ('86420981', 'Ӧ����', '432400', '86420900', '86420000', '86420900,86420000', 'Т����,����ʡ', null);
INSERT INTO `area` VALUES ('86420982', '��½��', '432600', '86420900', '86420000', '86420900,86420000', 'Т����,����ʡ', null);
INSERT INTO `area` VALUES ('86420984', '������', '432300', '86420900', '86420000', '86420900,86420000', 'Т����,����ʡ', null);
INSERT INTO `area` VALUES ('86421000', '������', '434000', '86420000', '86420000', '86420000', '����ʡ', '86421087,86421083,86421081,86421024,86421023,86421022,86421003,86421002,86421001');
INSERT INTO `area` VALUES ('86421001', '��Ͻ��', '434000', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421002', 'ɳ����', '434000', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421003', '������', '434020', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421022', '������', '434300', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421023', '������', '433300', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421024', '������', '434100', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421081', 'ʯ����', '434400', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421083', '�����', '433200', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421087', '������', '434200', '86421000', '86420000', '86421000,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421100', '�Ƹ���', '438000', '86420000', '86420000', '86420000', '����ʡ', '86421182,86421181,86421127,86421126,86421125,86421124,86421123,86421122,86421121,86421102,86421101');
INSERT INTO `area` VALUES ('86421101', '��Ͻ��', '438000', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421102', '������', '438000', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421121', '�ŷ���', '438000', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421122', '�찲��', '438400', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421123', '������', '438600', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421124', 'Ӣɽ��', '438700', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421125', '�ˮ��', '438200', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421126', 'ޭ����', '435300', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421127', '��÷��', '435500', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421181', '�����', '438300', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421182', '��Ѩ��', '435400', '86421100', '86420000', '86421100,86420000', '�Ƹ���,����ʡ', null);
INSERT INTO `area` VALUES ('86421200', '������', '437000', '86420000', '86420000', '86420000', '����ʡ', '86421281,86421224,86421223,86421222,86421221,86421202,86421201');
INSERT INTO `area` VALUES ('86421201', '��Ͻ��', '437000', '86421200', '86420000', '86421200,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421202', '�̰���', '437000', '86421200', '86420000', '86421200,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421221', '������', '437200', '86421200', '86420000', '86421200,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421222', 'ͨ����', '437400', '86421200', '86420000', '86421200,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421223', '������', '437500', '86421200', '86420000', '86421200,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421224', 'ͨɽ��', '437600', '86421200', '86420000', '86421200,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421281', '�����', '437300', '86421200', '86420000', '86421200,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421300', '������', '441300', '86420000', '86420000', '86420000', '����ʡ', '86421381,86421302,86421301');
INSERT INTO `area` VALUES ('86421301', '��Ͻ��', '441300', '86421300', '86420000', '86421300,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421302', '������', '441300', '86421300', '86420000', '86421300,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86421381', '��ˮ��', '432700', '86421300', '86420000', '86421300,86420000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86422800', '��ʩ����������������', '445000', '86420000', '86420000', '86420000', '����ʡ', '86422828,86422827,86422826,86422825,86422823,86422822,86422802,86422801');
INSERT INTO `area` VALUES ('86422801', '��ʩ��', '445000', '86422800', '86420000', '86422800,86420000', '��ʩ����������������,����ʡ', null);
INSERT INTO `area` VALUES ('86422802', '������', '445400', '86422800', '86420000', '86422800,86420000', '��ʩ����������������,����ʡ', null);
INSERT INTO `area` VALUES ('86422822', '��ʼ��', '445300', '86422800', '86420000', '86422800,86420000', '��ʩ����������������,����ʡ', null);
INSERT INTO `area` VALUES ('86422823', '�Ͷ���', '444300', '86422800', '86420000', '86422800,86420000', '��ʩ����������������,����ʡ', null);
INSERT INTO `area` VALUES ('86422825', '������', '445500', '86422800', '86420000', '86422800,86420000', '��ʩ����������������,����ʡ', null);
INSERT INTO `area` VALUES ('86422826', '�̷���', '445600', '86422800', '86420000', '86422800,86420000', '��ʩ����������������,����ʡ', null);
INSERT INTO `area` VALUES ('86422827', '������', '445700', '86422800', '86420000', '86422800,86420000', '��ʩ����������������,����ʡ', null);
INSERT INTO `area` VALUES ('86422828', '�׷���', '445800', '86422800', '86420000', '86422800,86420000', '��ʩ����������������,����ʡ', null);
INSERT INTO `area` VALUES ('86429000', 'ʡֱϽ������λ', '433000', '86420000', '86420000', '86420000', '����ʡ', '86429021,86429006,86429005,86429004');
INSERT INTO `area` VALUES ('86429004', '������', '433000', '86429000', '86420000', '86429000,86420000', 'ʡֱϽ������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86429005', 'Ǳ����', '433100', '86429000', '86420000', '86429000,86420000', 'ʡֱϽ������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86429006', '������', '431700', '86429000', '86420000', '86429000,86420000', 'ʡֱϽ������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86429021', '��ũ������', '442400', '86429000', '86420000', '86429000,86420000', 'ʡֱϽ������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86430000', '����ʡ', null, '0', null, null, null, '86433100,86431300,86431200,86431100,86431000,86430900,86430800,86430700,86430600,86430500,86430400,86430300,86430200,86430100');
INSERT INTO `area` VALUES ('86430100', '��ɳ��', '410000', '86430000', '86430000', '86430000', '����ʡ', '86430181,86430124,86430122,86430121,86430111,86430105,86430104,86430103,86430102,86430101');
INSERT INTO `area` VALUES ('86430101', '��Ͻ��', '410000', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430102', 'ܽ����', '410000', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430103', '������', '410000', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430104', '��´��', '410000', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430105', '������', '410000', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430111', '�껨��', '410000', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430121', '��ɳ��', '410100', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430122', '������', '410200', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430124', '������', '410600', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430181', '�����', '410300', '86430100', '86430000', '86430100,86430000', '��ɳ��,����ʡ', null);
INSERT INTO `area` VALUES ('86430200', '������', '412000', '86430000', '86430000', '86430000', '����ʡ', '86430281,86430225,86430224,86430223,86430221,86430211,86430204,86430203,86430202,86430201');
INSERT INTO `area` VALUES ('86430201', '��Ͻ��', '412000', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430202', '������', '412000', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430203', '«����', '412000', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430204', 'ʯ����', '412000', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430211', '��Ԫ��', '412000', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430221', '������', '412000', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430223', '������', '412300', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430224', '������', '412400', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430225', '������', '412500', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430281', '������', '412200', '86430200', '86430000', '86430200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430300', '��̶��', '411100', '86430000', '86430000', '86430000', '����ʡ', '86430382,86430381,86430321,86430304,86430302,86430301');
INSERT INTO `area` VALUES ('86430301', '��Ͻ��', '411100', '86430300', '86430000', '86430300,86430000', '��̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86430302', '�����', '411100', '86430300', '86430000', '86430300,86430000', '��̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86430304', '������', '411100', '86430300', '86430000', '86430300,86430000', '��̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86430321', '��̶��', '411200', '86430300', '86430000', '86430300,86430000', '��̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86430381', '������', '411400', '86430300', '86430000', '86430300,86430000', '��̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86430382', '��ɽ��', '411300', '86430300', '86430000', '86430300,86430000', '��̶��,����ʡ', null);
INSERT INTO `area` VALUES ('86430400', '������', '421000', '86430000', '86430000', '86430000', '����ʡ', '86430482,86430481,86430426,86430424,86430423,86430422,86430421,86430412,86430408,86430407,86430406,86430405,86430401');
INSERT INTO `area` VALUES ('86430401', '��Ͻ��', '421000', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430405', '������', '421000', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430406', '�����', '421000', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430407', 'ʯ����', '421000', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430408', '������', '421000', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430412', '������', '421000', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430421', '������', '421200', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430422', '������', '421100', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430423', '��ɽ��', '421300', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430424', '�ⶫ��', '421400', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430426', '���', '421600', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430481', '������', '421800', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430482', '������', '421500', '86430400', '86430000', '86430400,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430500', '������', '422000', '86430000', '86430000', '86430000', '����ʡ', '86430581,86430529,86430528,86430527,86430525,86430524,86430523,86430522,86430521,86430511,86430503,86430502,86430501');
INSERT INTO `area` VALUES ('86430501', '��Ͻ��', '422000', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430502', '˫����', '422000', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430503', '������', '422000', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430511', '������', '422000', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430521', '�۶���', '422800', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430522', '������', '422900', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430523', '������', '422100', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430524', '¡����', '422200', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430525', '������', '422300', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430527', '������', '422600', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430528', '������', '422700', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430529', '�ǲ�����������', '422500', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430581', '�����', '422400', '86430500', '86430000', '86430500,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430600', '������', '414000', '86430000', '86430000', '86430000', '����ʡ', '86430682,86430681,86430626,86430624,86430623,86430621,86430611,86430603,86430602,86430601');
INSERT INTO `area` VALUES ('86430601', '��Ͻ��', '414000', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430602', '����¥��', '414000', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430603', '��Ϫ��', '414000', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430611', '��ɽ��', '414000', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430621', '������', '414100', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430623', '������', '414200', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430624', '������', '410500', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430626', 'ƽ����', '410400', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430681', '������', '414400', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430682', '������', '414300', '86430600', '86430000', '86430600,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430700', '������', '415000', '86430000', '86430000', '86430000', '����ʡ', '86430781,86430726,86430725,86430724,86430723,86430722,86430721,86430703,86430702,86430701');
INSERT INTO `area` VALUES ('86430701', '��Ͻ��', '415000', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430702', '������', '415000', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430703', '������', '415100', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430721', '������', '415600', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430722', '������', '415900', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430723', '墡���', '415500', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430724', '�����', '415200', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430725', '��Դ��', '415700', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430726', 'ʯ����', '415300', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430781', '������', '415400', '86430700', '86430000', '86430700,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430800', '�żҽ���', '427000', '86430000', '86430000', '86430000', '����ʡ', '86430822,86430821,86430811,86430802,86430801');
INSERT INTO `area` VALUES ('86430801', '��Ͻ��', '427000', '86430800', '86430000', '86430800,86430000', '�żҽ���,����ʡ', null);
INSERT INTO `area` VALUES ('86430802', '������', '427000', '86430800', '86430000', '86430800,86430000', '�żҽ���,����ʡ', null);
INSERT INTO `area` VALUES ('86430811', '����Դ��', '427400', '86430800', '86430000', '86430800,86430000', '�żҽ���,����ʡ', null);
INSERT INTO `area` VALUES ('86430821', '������', '427200', '86430800', '86430000', '86430800,86430000', '�żҽ���,����ʡ', null);
INSERT INTO `area` VALUES ('86430822', 'ɣֲ��', '427100', '86430800', '86430000', '86430800,86430000', '�żҽ���,����ʡ', null);
INSERT INTO `area` VALUES ('86430900', '������', '413000', '86430000', '86430000', '86430000', '����ʡ', '86430981,86430923,86430922,86430921,86430903,86430902,86430901');
INSERT INTO `area` VALUES ('86430901', '��Ͻ��', '413000', '86430900', '86430000', '86430900,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430902', '������', '413000', '86430900', '86430000', '86430900,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430903', '��ɽ��', '413000', '86430900', '86430000', '86430900,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430921', '�ϡ���', '413200', '86430900', '86430000', '86430900,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430922', '�ҽ���', '413400', '86430900', '86430000', '86430900,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430923', '������', '413500', '86430900', '86430000', '86430900,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86430981', '�佭��', '413100', '86430900', '86430000', '86430900,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431000', '������', '423000', '86430000', '86430000', '86430000', '����ʡ', '86431081,86431028,86431027,86431026,86431025,86431024,86431023,86431022,86431021,86431003,86431002,86431001');
INSERT INTO `area` VALUES ('86431001', '��Ͻ��', '423000', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431002', '������', '423000', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431003', '������', '423000', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431021', '������', '424400', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431022', '������', '424200', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431023', '������', '423300', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431024', '�κ���', '424500', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431025', '������', '424300', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431026', '�����', '424100', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431027', '����', '423500', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431028', '������', '423600', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431081', '������', '423400', '86431000', '86430000', '86431000,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431100', '������', '425000', '86430000', '86430000', '86430000', '����ʡ', '86431129,86431128,86431127,86431126,86431125,86431124,86431123,86431122,86431121,86431103,86431102,86431101');
INSERT INTO `area` VALUES ('86431101', '��Ͻ��', '425000', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431102', '֥ɽ��', '425000', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431103', '��ˮ̲��', '425000', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431121', '������', '421700', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431122', '������', '425900', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431123', '˫����', '425200', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431124', '������', '425300', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431125', '������', '425400', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431126', '��Զ��', '425600', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431127', '��ɽ��', '425800', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431128', '������', '425700', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431129', '��������������', '425500', '86431100', '86430000', '86431100,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431200', '������', '418000', '86430000', '86430000', '86430000', '����ʡ', '86431281,86431230,86431229,86431228,86431227,86431226,86431225,86431224,86431223,86431222,86431221,86431202,86431201');
INSERT INTO `area` VALUES ('86431201', '��Ͻ��', '418000', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431202', '�׳���', '418000', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431221', '�з���', '418000', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431222', '������', '419600', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431223', '��Ϫ��', '419500', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431224', '������', '419300', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431225', '��ͬ��', '418300', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431226', '��������������', '419400', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431227', '�»ζ���������', '419200', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431228', '�ƽ�����������', '419100', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431229', '�������嶱��������', '418400', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431230', 'ͨ������������', '418500', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431281', '�齭��', '418200', '86431200', '86430000', '86431200,86430000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86431300', '¦����', '417000', '86430000', '86430000', '86430000', '����ʡ', '86431382,86431381,86431322,86431321,86431302,86431301');
INSERT INTO `area` VALUES ('86431301', '��Ͻ��', '417000', '86431300', '86430000', '86431300,86430000', '¦����,����ʡ', null);
INSERT INTO `area` VALUES ('86431302', '¦����', '417000', '86431300', '86430000', '86431300,86430000', '¦����,����ʡ', null);
INSERT INTO `area` VALUES ('86431321', '˫����', '417700', '86431300', '86430000', '86431300,86430000', '¦����,����ʡ', null);
INSERT INTO `area` VALUES ('86431322', '�»���', '417600', '86431300', '86430000', '86431300,86430000', '¦����,����ʡ', null);
INSERT INTO `area` VALUES ('86431381', '��ˮ����', '417500', '86431300', '86430000', '86431300,86430000', '¦����,����ʡ', null);
INSERT INTO `area` VALUES ('86431382', '��Դ��', '417100', '86431300', '86430000', '86431300,86430000', '¦����,����ʡ', null);
INSERT INTO `area` VALUES ('86433100', '��������������������', '416000', '86430000', '86430000', '86430000', '����ʡ', '86433130,86433127,86433126,86433125,86433124,86433123,86433122,86433101');
INSERT INTO `area` VALUES ('86433101', '������', '416000', '86433100', '86430000', '86433100,86430000', '��������������������,����ʡ', null);
INSERT INTO `area` VALUES ('86433122', '��Ϫ��', '416100', '86433100', '86430000', '86433100,86430000', '��������������������,����ʡ', null);
INSERT INTO `area` VALUES ('86433123', '�����', '416200', '86433100', '86430000', '86433100,86430000', '��������������������,����ʡ', null);
INSERT INTO `area` VALUES ('86433124', '��ԫ��', '416400', '86433100', '86430000', '86433100,86430000', '��������������������,����ʡ', null);
INSERT INTO `area` VALUES ('86433125', '������', '416500', '86433100', '86430000', '86433100,86430000', '��������������������,����ʡ', null);
INSERT INTO `area` VALUES ('86433126', '������', '416300', '86433100', '86430000', '86433100,86430000', '��������������������,����ʡ', null);
INSERT INTO `area` VALUES ('86433127', '��˳��', '416700', '86433100', '86430000', '86433100,86430000', '��������������������,����ʡ', null);
INSERT INTO `area` VALUES ('86433130', '��ɽ��', '416800', '86433100', '86430000', '86433100,86430000', '��������������������,����ʡ', null);
INSERT INTO `area` VALUES ('86440000', '�㶫ʡ', null, '0', null, null, null, '86445300,86445200,86445100,86442000,86441900,86441800,86441700,86441600,86441500,86441400,86441300,86441200,86440900,86440800,86440700,86440600,86440500,86440400,86440300,86440200,86440100');
INSERT INTO `area` VALUES ('86440100', '������', '510000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440184,86440183,86440114,86440113,86440112,86440111,86440107,86440106,86440105,86440104,86440103,86440102,86440101');
INSERT INTO `area` VALUES ('86440101', '��Ͻ��', '510000', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440102', '��ɽ��', '510000', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440103', '������', '510000', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440104', 'Խ����', '510000', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440105', '������', '510000', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440106', '�����', '510000', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440107', '������', '510000', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440111', '������', '510000', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440112', '������', '510700', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440113', '��خ��', '511400', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440114', '������', '510800', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440183', '������', '511300', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440184', '�ӻ���', '510900', '86440100', '86440000', '86440100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440200', '�ع���', '512000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440282,86440281,86440233,86440232,86440229,86440224,86440222,86440205,86440204,86440203,86440201');
INSERT INTO `area` VALUES ('86440201', '��Ͻ��', '512000', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440203', '�佭��', '512000', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440204', '䥽���', '512000', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440205', '������', '512100', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440222', 'ʼ����', '512500', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440224', '�ʻ���', '512300', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440229', '��Դ��', '512600', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440232', '��Դ����������', '512600', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440233', '�·���', '511100', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440281', '�ֲ���', '512200', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440282', '������', '512400', '86440200', '86440000', '86440200,86440000', '�ع���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440300', '������', '518000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440308,86440307,86440306,86440305,86440304,86440303,86440301');
INSERT INTO `area` VALUES ('86440301', '��Ͻ��', '518000', '86440300', '86440000', '86440300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440303', '�޺���', '518000', '86440300', '86440000', '86440300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440304', '������', '518000', '86440300', '86440000', '86440300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440305', '��ɽ��', '518000', '86440300', '86440000', '86440300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440306', '������', '518100', '86440300', '86440000', '86440300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440307', '������', '518100', '86440300', '86440000', '86440300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440308', '������', '518000', '86440300', '86440000', '86440300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440400', '�麣��', '519000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440404,86440403,86440402,86440401');
INSERT INTO `area` VALUES ('86440401', '��Ͻ��', '519000', '86440400', '86440000', '86440400,86440000', '�麣��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440402', '������', '519000', '86440400', '86440000', '86440400,86440000', '�麣��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440403', '������', '519100', '86440400', '86440000', '86440400,86440000', '�麣��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440404', '������', '519090', '86440400', '86440000', '86440400,86440000', '�麣��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440500', '��ͷ��', '515000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440523,86440515,86440514,86440513,86440512,86440511,86440507,86440501');
INSERT INTO `area` VALUES ('86440501', '��Ͻ��', '515000', '86440500', '86440000', '86440500,86440000', '��ͷ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440507', '������', '515000', '86440500', '86440000', '86440500,86440000', '��ͷ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440511', '��ƽ��', '515000', '86440500', '86440000', '86440500,86440000', '��ͷ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440512', '婽���', '515000', '86440500', '86440000', '86440500,86440000', '��ͷ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440513', '������', '515100', '86440500', '86440000', '86440500,86440000', '��ͷ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440514', '������', '515100', '86440500', '86440000', '86440500,86440000', '��ͷ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440515', '�κ���', '515800', '86440500', '86440000', '86440500,86440000', '��ͷ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440523', '�ϰ���', '515900', '86440500', '86440000', '86440500,86440000', '��ͷ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440600', '��ɽ��', '528000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440608,86440607,86440606,86440605,86440604,86440601');
INSERT INTO `area` VALUES ('86440601', '��Ͻ��', '528000', '86440600', '86440000', '86440600,86440000', '��ɽ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440604', '������', '528000', '86440600', '86440000', '86440600,86440000', '��ɽ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440605', '�Ϻ���', '528200', '86440600', '86440000', '86440600,86440000', '��ɽ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440606', '˳����', '528000', '86440600', '86440000', '86440600,86440000', '��ɽ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440607', '��ˮ��', '528100', '86440600', '86440000', '86440600,86440000', '��ɽ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440608', '������', '528500', '86440600', '86440000', '86440600,86440000', '��ɽ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440700', '������', '529000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440785,86440784,86440783,86440781,86440705,86440704,86440703,86440701');
INSERT INTO `area` VALUES ('86440701', '��Ͻ��', '529000', '86440700', '86440000', '86440700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440703', '���', '529000', '86440700', '86440000', '86440700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440704', '������', '529000', '86440700', '86440000', '86440700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440705', '�»���', '529100', '86440700', '86440000', '86440700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440781', '̨ɽ��', '529200', '86440700', '86440000', '86440700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440783', '��ƽ��', '529300', '86440700', '86440000', '86440700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440784', '��ɽ��', '529700', '86440700', '86440000', '86440700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440785', '��ƽ��', '529400', '86440700', '86440000', '86440700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440800', 'տ����', '524000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440883,86440882,86440881,86440825,86440823,86440811,86440804,86440803,86440802,86440801');
INSERT INTO `area` VALUES ('86440801', '��Ͻ��', '524000', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440802', '�࿲��', '524000', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440803', 'ϼɽ��', '524000', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440804', '��ͷ��', '524000', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440811', '������', '524000', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440823', '��Ϫ��', '524300', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440825', '������', '524100', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440881', '������', '524400', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440882', '������', '524200', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440883', '�⴨��', '524500', '86440800', '86440000', '86440800,86440000', 'տ����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440900', 'ï����', '525000', '86440000', '86440000', '86440000', '�㶫ʡ', '86440983,86440982,86440981,86440923,86440903,86440902,86440901');
INSERT INTO `area` VALUES ('86440901', '��Ͻ��', '525000', '86440900', '86440000', '86440900,86440000', 'ï����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440902', 'ï����', '525000', '86440900', '86440000', '86440900,86440000', 'ï����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440903', 'ï����', '525000', '86440900', '86440000', '86440900,86440000', 'ï����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440923', '�����', '525400', '86440900', '86440000', '86440900,86440000', 'ï����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440981', '������', '525200', '86440900', '86440000', '86440900,86440000', 'ï����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440982', '������', '525100', '86440900', '86440000', '86440900,86440000', 'ï����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86440983', '������', '525300', '86440900', '86440000', '86440900,86440000', 'ï����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441200', '������', '526000', '86440000', '86440000', '86440000', '�㶫ʡ', '86441284,86441283,86441226,86441225,86441224,86441223,86441203,86441202,86441201');
INSERT INTO `area` VALUES ('86441201', '��Ͻ��', '526000', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441202', '������', '526000', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441203', '������', '526000', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441223', '������', '526300', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441224', '������', '526400', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441225', '�⿪��', '526500', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441226', '������', '526600', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441283', '��Ҫ��', '526100', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441284', '�Ļ���', '526200', '86441200', '86440000', '86441200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441300', '������', '516000', '86440000', '86440000', '86440000', '�㶫ʡ', '86441324,86441323,86441322,86441303,86441302,86441301');
INSERT INTO `area` VALUES ('86441301', '��Ͻ��', '516000', '86441300', '86440000', '86441300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441302', '�ݳ���', '516000', '86441300', '86440000', '86441300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441303', '������', '516200', '86441300', '86440000', '86441300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441322', '������', '516100', '86441300', '86440000', '86441300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441323', '�ݶ���', '516300', '86441300', '86440000', '86441300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441324', '������', '516800', '86441300', '86440000', '86441300,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441400', '÷����', '514000', '86440000', '86440000', '86440000', '�㶫ʡ', '86441481,86441427,86441426,86441424,86441423,86441422,86441421,86441402,86441401');
INSERT INTO `area` VALUES ('86441401', '��Ͻ��', '514000', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441402', '÷����', '514000', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441421', '÷����', '514700', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441422', '������', '514200', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441423', '��˳��', '514300', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441424', '�廪��', '514400', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441426', 'ƽԶ��', '514600', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441427', '������', '514100', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441481', '������', '514500', '86441400', '86440000', '86441400,86440000', '÷����,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441500', '��β��', '516600', '86440000', '86440000', '86440000', '�㶫ʡ', '86441581,86441523,86441521,86441502,86441501');
INSERT INTO `area` VALUES ('86441501', '��Ͻ��', '516600', '86441500', '86440000', '86441500,86440000', '��β��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441502', '�ǡ���', '516600', '86441500', '86440000', '86441500,86440000', '��β��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441521', '������', '516400', '86441500', '86440000', '86441500,86440000', '��β��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441523', '½����', '516700', '86441500', '86440000', '86441500,86440000', '��β��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441581', '½����', '516500', '86441500', '86440000', '86441500,86440000', '��β��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441600', '��Դ��', '517000', '86440000', '86440000', '86440000', '�㶫ʡ', '86441625,86441624,86441623,86441622,86441621,86441602,86441601');
INSERT INTO `area` VALUES ('86441601', '��Ͻ��', '517000', '86441600', '86440000', '86441600,86440000', '��Դ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441602', 'Դ����', '517000', '86441600', '86440000', '86441600,86440000', '��Դ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441621', '�Ͻ���', '517400', '86441600', '86440000', '86441600,86440000', '��Դ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441622', '������', '517300', '86441600', '86440000', '86441600,86440000', '��Դ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441623', '��ƽ��', '517100', '86441600', '86440000', '86441600,86440000', '��Դ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441624', '��ƽ��', '517200', '86441600', '86440000', '86441600,86440000', '��Դ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441625', '��Դ��', '517500', '86441600', '86440000', '86441600,86440000', '��Դ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441700', '������', '529500', '86440000', '86440000', '86440000', '�㶫ʡ', '86441781,86441723,86441721,86441702,86441701');
INSERT INTO `area` VALUES ('86441701', '��Ͻ��', '529500', '86441700', '86440000', '86441700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441702', '������', '529500', '86441700', '86440000', '86441700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441721', '������', '529800', '86441700', '86440000', '86441700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441723', '������', '529900', '86441700', '86440000', '86441700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441781', '������', '529600', '86441700', '86440000', '86441700,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441800', '��Զ��', '511500', '86440000', '86440000', '86440000', '�㶫ʡ', '86441882,86441881,86441827,86441826,86441825,86441823,86441821,86441802,86441801');
INSERT INTO `area` VALUES ('86441801', '��Ͻ��', '511500', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441802', '�����', '511500', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441821', '�����', '511600', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441823', '��ɽ��', '513100', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441825', '��ɽ׳������������', '513200', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441826', '��������������', '513300', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441827', '������', '511800', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441881', 'Ӣ����', '513000', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441882', '������', '513400', '86441800', '86440000', '86441800,86440000', '��Զ��,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86441900', '��ݸ��', null, '86440000', '86440000', '86440000', '�㶫ʡ', null);
INSERT INTO `area` VALUES ('86442000', '��ɽ��', null, '86440000', '86440000', '86440000', '�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445100', '������', '521000', '86440000', '86440000', '86440000', '�㶫ʡ', '86445122,86445121,86445102,86445101');
INSERT INTO `area` VALUES ('86445101', '��Ͻ��', '521000', '86445100', '86440000', '86445100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445102', '������', '521000', '86445100', '86440000', '86445100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445121', '������', '515600', '86445100', '86440000', '86445100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445122', '��ƽ��', '515700', '86445100', '86440000', '86445100,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445200', '������', '522000', '86440000', '86440000', '86440000', '�㶫ʡ', '86445281,86445224,86445222,86445221,86445202,86445201');
INSERT INTO `area` VALUES ('86445201', '��Ͻ��', '522000', '86445200', '86440000', '86445200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445202', '�ų���', '522000', '86445200', '86440000', '86445200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445221', '�Ҷ���', '515500', '86445200', '86440000', '86445200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445222', '������', '515400', '86445200', '86440000', '86445200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445224', '������', '515200', '86445200', '86440000', '86445200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445281', '������', '515300', '86445200', '86440000', '86445200,86440000', '������,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445300', '�Ƹ���', '527300', '86440000', '86440000', '86440000', '�㶫ʡ', '86445381,86445323,86445322,86445321,86445302,86445301');
INSERT INTO `area` VALUES ('86445301', '��Ͻ��', '527300', '86445300', '86440000', '86445300,86440000', '�Ƹ���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445302', '�Ƴ���', '527300', '86445300', '86440000', '86445300,86440000', '�Ƹ���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445321', '������', '527400', '86445300', '86440000', '86445300,86440000', '�Ƹ���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445322', '������', '527100', '86445300', '86440000', '86445300,86440000', '�Ƹ���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445323', '�ư���', '527500', '86445300', '86440000', '86445300,86440000', '�Ƹ���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86445381', '�޶���', '527200', '86445300', '86440000', '86445300,86440000', '�Ƹ���,�㶫ʡ', null);
INSERT INTO `area` VALUES ('86450000', '����׳��������', null, '0', null, null, null, '86451400,86451300,86451200,86451100,86451000,86450900,86450800,86450700,86450600,86450500,86450400,86450300,86450200,86450100');
INSERT INTO `area` VALUES ('86450100', '������', '530000', '86450000', '86450000', '86450000', '����׳��������', '86450127,86450126,86450125,86450124,86450123,86450122,86450109,86450108,86450107,86450105,86450103,86450102,86450101');
INSERT INTO `area` VALUES ('86450101', '��Ͻ��', '530000', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450102', '������', '530000', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450103', '������', '530000', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450105', '������', '530000', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450107', '��������', '530000', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450108', '������', '530200', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450109', '������', '530200', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450122', '������', '530100', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450123', '¡����', '532700', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450124', '��ɽ��', '530600', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450125', '������', '530500', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450126', '������', '530400', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450127', '�ᡡ��', '530300', '86450100', '86450000', '86450100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450200', '������', '545000', '86450000', '86450000', '86450000', '����׳��������', '86450226,86450225,86450224,86450223,86450222,86450221,86450205,86450204,86450203,86450202,86450201');
INSERT INTO `area` VALUES ('86450201', '��Ͻ��', '545000', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450202', '������', '545000', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450203', '�����', '545000', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450204', '������', '545000', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450205', '������', '545000', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450221', '������', '545100', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450222', '������', '545200', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450223', '¹կ��', '545600', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450224', '�ڰ���', '545400', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450225', '��ˮ����������', '545300', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450226', '��������������', '545500', '86450200', '86450000', '86450200,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450300', '������', '541000', '86450000', '86450000', '86450000', '����׳��������', '86450332,86450331,86450330,86450329,86450328,86450327,86450326,86450325,86450324,86450323,86450322,86450321,86450311,86450305,86450304,86450303,86450302,86450301');
INSERT INTO `area` VALUES ('86450301', '��Ͻ��', '541000', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450302', '�����', '541000', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450303', '������', '541000', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450304', '��ɽ��', '541000', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450305', '������', '541000', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450311', '��ɽ��', '541000', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450321', '��˷��', '541900', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450322', '�ٹ���', '541100', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450323', '�鴨��', '541200', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450324', 'ȫ����', '541500', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450325', '�˰���', '541300', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450326', '������', '541800', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450327', '������', '541600', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450328', '��ʤ����������', '541700', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450329', '��Դ��', '541400', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450330', 'ƽ����', '542400', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450331', '������', '546600', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450332', '��������������', '542500', '86450300', '86450000', '86450300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450400', '������', '543000', '86450000', '86450000', '86450000', '����׳��������', '86450481,86450423,86450422,86450421,86450405,86450404,86450403,86450401');
INSERT INTO `area` VALUES ('86450401', '��Ͻ��', '543000', '86450400', '86450000', '86450400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450403', '������', '543000', '86450400', '86450000', '86450400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450404', '��ɽ��', '543000', '86450400', '86450000', '86450400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450405', '������', '543000', '86450400', '86450000', '86450400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450421', '������', '543100', '86450400', '86450000', '86450400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450422', '�١���', '543300', '86450400', '86450000', '86450400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450423', '��ɽ��', '546700', '86450400', '86450000', '86450400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450481', '�Ϫ��', '543200', '86450400', '86450000', '86450400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450500', '������', '536000', '86450000', '86450000', '86450000', '����׳��������', '86450521,86450512,86450503,86450502,86450501');
INSERT INTO `area` VALUES ('86450501', '��Ͻ��', '536000', '86450500', '86450000', '86450500,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450502', '������', '536000', '86450500', '86450000', '86450500,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450503', '������', '536000', '86450500', '86450000', '86450500,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450512', '��ɽ����', '536000', '86450500', '86450000', '86450500,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450521', '������', '536100', '86450500', '86450000', '86450500,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450600', '���Ǹ���', '538000', '86450000', '86450000', '86450000', '����׳��������', '86450681,86450621,86450603,86450602,86450601');
INSERT INTO `area` VALUES ('86450601', '��Ͻ��', '538000', '86450600', '86450000', '86450600,86450000', '���Ǹ���,����׳��������', null);
INSERT INTO `area` VALUES ('86450602', '�ۿ���', '538000', '86450600', '86450000', '86450600,86450000', '���Ǹ���,����׳��������', null);
INSERT INTO `area` VALUES ('86450603', '������', '538000', '86450600', '86450000', '86450600,86450000', '���Ǹ���,����׳��������', null);
INSERT INTO `area` VALUES ('86450621', '��˼��', '535500', '86450600', '86450000', '86450600,86450000', '���Ǹ���,����׳��������', null);
INSERT INTO `area` VALUES ('86450681', '������', '538100', '86450600', '86450000', '86450600,86450000', '���Ǹ���,����׳��������', null);
INSERT INTO `area` VALUES ('86450700', '������', '535000', '86450000', '86450000', '86450000', '����׳��������', '86450722,86450721,86450703,86450702,86450701');
INSERT INTO `area` VALUES ('86450701', '��Ͻ��', '535000', '86450700', '86450000', '86450700,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450702', '������', '535000', '86450700', '86450000', '86450700,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450703', '�ձ���', '535000', '86450700', '86450000', '86450700,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450721', '��ɽ��', '535400', '86450700', '86450000', '86450700,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450722', '�ֱ���', '535300', '86450700', '86450000', '86450700,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450800', '�����', '537100', '86450000', '86450000', '86450000', '����׳��������', '86450881,86450821,86450804,86450803,86450802,86450801');
INSERT INTO `area` VALUES ('86450801', '��Ͻ��', '537100', '86450800', '86450000', '86450800,86450000', '�����,����׳��������', null);
INSERT INTO `area` VALUES ('86450802', '�۱���', '537100', '86450800', '86450000', '86450800,86450000', '�����,����׳��������', null);
INSERT INTO `area` VALUES ('86450803', '������', '537100', '86450800', '86450000', '86450800,86450000', '�����,����׳��������', null);
INSERT INTO `area` VALUES ('86450804', '������', '537100', '86450800', '86450000', '86450800,86450000', '�����,����׳��������', null);
INSERT INTO `area` VALUES ('86450821', 'ƽ����', '537300', '86450800', '86450000', '86450800,86450000', '�����,����׳��������', null);
INSERT INTO `area` VALUES ('86450881', '��ƽ��', '537200', '86450800', '86450000', '86450800,86450000', '�����,����׳��������', null);
INSERT INTO `area` VALUES ('86450900', '������', '537000', '86450000', '86450000', '86450000', '����׳��������', '86450981,86450924,86450923,86450922,86450921,86450902,86450901');
INSERT INTO `area` VALUES ('86450901', '��Ͻ��', '537000', '86450900', '86450000', '86450900,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450902', '������', '537000', '86450900', '86450000', '86450900,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450921', '�ݡ���', '537500', '86450900', '86450000', '86450900,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450922', '½����', '537700', '86450900', '86450000', '86450900,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450923', '������', '537600', '86450900', '86450000', '86450900,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450924', '��ҵ��', '537800', '86450900', '86450000', '86450900,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86450981', '������', '537400', '86450900', '86450000', '86450900,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451000', '��ɫ��', '533000', '86450000', '86450000', '86450000', '����׳��������', '86451031,86451030,86451029,86451028,86451027,86451026,86451025,86451024,86451023,86451022,86451021,86451002,86451001');
INSERT INTO `area` VALUES ('86451001', '��Ͻ��', '533000', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451002', '�ҽ���', '533000', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451021', '������', '533600', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451022', '�ﶫ��', '531500', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451023', 'ƽ����', '531400', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451024', '�±���', '533700', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451025', '������', '533800', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451026', '������', '533900', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451027', '������', '533100', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451028', '��ҵ��', '533200', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451029', '������', '533300', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451030', '������', '533500', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451031', '¡�ָ���������', '533500', '86451000', '86450000', '86451000,86450000', '��ɫ��,����׳��������', null);
INSERT INTO `area` VALUES ('86451100', '������', '542800', '86450000', '86450000', '86450000', '����׳��������', '86451123,86451122,86451121,86451102,86451101');
INSERT INTO `area` VALUES ('86451101', '��Ͻ��', '542800', '86451100', '86450000', '86451100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451102', '�˲���', '552106', '86451100', '86450000', '86451100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451121', '��ƽ��', '546800', '86451100', '86450000', '86451100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451122', '��ɽ��', '542600', '86451100', '86450000', '86451100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451123', '��������������', '542700', '86451100', '86450000', '86451100,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451200', '�ӳ���', '547000', '86450000', '86450000', '86450000', '����׳��������', '86451281,86451229,86451228,86451227,86451226,86451225,86451224,86451223,86451222,86451221,86451202,86451201');
INSERT INTO `area` VALUES ('86451201', '��Ͻ��', '547000', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451202', '��ǽ���', '547000', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451221', '�ϵ���', '547200', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451222', '�����', '547300', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451223', '��ɽ��', '547600', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451224', '������', '547400', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451225', '�޳�������������', '546400', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451226', '����ë����������', '547100', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451227', '��������������', '547500', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451228', '��������������', '530700', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451229', '������������', '530800', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451281', '������', '546300', '86451200', '86450000', '86451200,86450000', '�ӳ���,����׳��������', null);
INSERT INTO `area` VALUES ('86451300', '������', '546100', '86450000', '86450000', '86450000', '����׳��������', '86451381,86451324,86451323,86451322,86451321,86451302,86451301');
INSERT INTO `area` VALUES ('86451301', '��Ͻ��', '546100', '86451300', '86450000', '86451300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451302', '�˱���', '546100', '86451300', '86450000', '86451300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451321', '�ó���', '546200', '86451300', '86450000', '86451300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451322', '������', '545800', '86451300', '86450000', '86451300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451323', '������', '545900', '86451300', '86450000', '86451300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451324', '��������������', '545700', '86451300', '86450000', '86451300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451381', '��ɽ��', '546500', '86451300', '86450000', '86451300,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451400', '������', '532200', '86450000', '86450000', '86450000', '����׳��������', '86451481,86451425,86451424,86451423,86451422,86451421,86451402,86451401');
INSERT INTO `area` VALUES ('86451401', '��Ͻ��', '532200', '86451400', '86450000', '86451400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451402', '������', '532200', '86451400', '86450000', '86451400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451421', '������', '532100', '86451400', '86450000', '86451400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451422', '������', '532500', '86451400', '86450000', '86451400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451423', '������', '532400', '86451400', '86450000', '86451400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451424', '������', '532300', '86451400', '86450000', '86451400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451425', '�����', '532800', '86451400', '86450000', '86451400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86451481', 'ƾ����', '532600', '86451400', '86450000', '86451400,86450000', '������,����׳��������', null);
INSERT INTO `area` VALUES ('86460000', '����ʡ', null, '0', null, null, null, '86469000,86460200,86460100');
INSERT INTO `area` VALUES ('86460100', '������', '570100', '86460000', '86460000', '86460000', '����ʡ', '86460108,86460107,86460106,86460105,86460101');
INSERT INTO `area` VALUES ('86460101', '��Ͻ��', '570100', '86460100', '86460000', '86460100,86460000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86460105', '��Ӣ��', '570100', '86460100', '86460000', '86460100,86460000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86460106', '������', '570100', '86460100', '86460000', '86460100,86460000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86460107', '��ɽ��', '571100', '86460100', '86460000', '86460100,86460000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86460108', '������', '570100', '86460100', '86460000', '86460100,86460000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86460200', '������', '572000', '86460000', '86460000', '86460000', '����ʡ', '86460201');
INSERT INTO `area` VALUES ('86460201', '��Ͻ��', '572000', '86460200', '86460000', '86460200,86460000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86469000', 'ʡֱϽ�ؼ�������λ', '572200', '86460000', '86460000', '86460000', '����ʡ', '86469039,86469038,86469037,86469036,86469035,86469034,86469033,86469031,86469030,86469028,86469027,86469026,86469025,86469007,86469006,86469005,86469003,86469002,86469001');
INSERT INTO `area` VALUES ('86469001', '��ָɽ��', '572200', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469002', '����', '571400', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469003', '������', '571700', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469005', '�Ĳ���', '571300', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469006', '������', '571500', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469007', '������', '572600', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469025', '������', '571200', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469026', '�Ͳ���', '571600', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469027', '������', '571900', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469028', '�ٸ���', '571800', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469030', '��ɳ����������', '572800', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469031', '��������������', '572700', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469033', '�ֶ�����������', '572500', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469034', '��ˮ����������', '572400', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469035', '��ͤ��������������', '572300', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469036', '������������������', '572900', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469037', '��ɳȺ��', '572000', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469038', '��ɳȺ��', '572000', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86469039', '��ɳȺ���ĵ������亣��', '572000', '86469000', '86460000', '86469000,86460000', 'ʡֱϽ�ؼ�������λ,����ʡ', null);
INSERT INTO `area` VALUES ('86500000', '������', '404100', '0', null, null, null, '86500300,86500200,86500100');
INSERT INTO `area` VALUES ('86500100', '��Ͻ��', '404100', '86500000', '86500000', '86500000', '������', '86500115,86500114,86500113,86500112,86500111,86500110,86500109,86500108,86500107,86500106,86500105,86500104,86500103,86500102,86500101');
INSERT INTO `area` VALUES ('86500101', '������', '404100', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500102', '������', '408000', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500103', '������', '400000', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500104', '��ɿ���', '400000', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500105', '������', '400000', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500106', 'ɳƺ����', '400000', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500107', '��������', '400000', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500108', '�ϰ���', '400000', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500109', '������', '400700', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500110', '��ʢ��', '400800', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500111', '˫����', '400900', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500112', '�山��', '401120', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500113', '������', '401320', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500114', 'ǭ����', '409000', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500115', '������', '401220', '86500100', '86500000', '86500100,86500000', '��Ͻ��,������', null);
INSERT INTO `area` VALUES ('86500200', '��', '401420', '86500000', '86500000', '86500000', '������', '86500243,86500242,86500241,86500240,86500238,86500237,86500236,86500235,86500234,86500233,86500232,86500231,86500230,86500229,86500228,86500227,86500226,86500225,86500224,86500223,86500222');
INSERT INTO `area` VALUES ('86500222', '�뽭��', '401420', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500223', '������', '402660', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500224', 'ͭ����', '402560', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500225', '������', '402360', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500226', '�ٲ���', '402460', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500227', '�ɽ��', '402760', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500228', '��ƽ��', '405200', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500229', '�ǿ���', '405900', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500230', '�ᶼ��', '408200', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500231', '�潭��', '408300', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500232', '��¡��', '408500', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500233', '�ҡ���', '404300', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500234', '������', '405400', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500235', '������', '404500', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500236', '�����', '404600', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500237', '��ɽ��', '404700', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500238', '��Ϫ��', '405800', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500240', 'ʯ��������������', '409100', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500241', '��ɽ����������������', '409900', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500242', '��������������������', '409800', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500243', '��ˮ����������������', '409600', '86500200', '86500000', '86500200,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500300', '��', '402260', '86500000', '86500000', '86500000', '������', '86500384,86500383,86500382,86500381');
INSERT INTO `area` VALUES ('86500381', '������', '402260', '86500300', '86500000', '86500300,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500382', '�ϴ���', '401520', '86500300', '86500000', '86500300,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500383', '������', '402160', '86500300', '86500000', '86500300,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86500384', '�ϴ���', '408400', '86500300', '86500000', '86500300,86500000', '��,������', null);
INSERT INTO `area` VALUES ('86510000', '�Ĵ�ʡ', null, '0', null, null, null, '86513400,86513300,86513200,86512000,86511900,86511800,86511700,86511600,86511500,86511400,86511300,86511100,86511000,86510900,86510800,86510700,86510600,86510500,86510400,86510300,86510100');
INSERT INTO `area` VALUES ('86510100', '�ɶ���', '610000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86510184,86510183,86510182,86510181,86510132,86510131,86510129,86510124,86510122,86510121,86510115,86510114,86510113,86510112,86510108,86510107,86510106,86510105,86510104,86510101');
INSERT INTO `area` VALUES ('86510101', '��Ͻ��', '610000', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510104', '������', '610000', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510105', '������', '610000', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510106', '��ţ��', '610000', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510107', '�����', '610000', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510108', '�ɻ���', '610000', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510112', '��Ȫ����', '610100', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510113', '��׽���', '610300', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510114', '�¶���', '610500', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510115', '�½���', '611100', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510121', '������', '610400', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510122', '˫����', '610200', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510124', 'ۯ����', '611700', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510129', '������', '611300', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510131', '�ѽ���', '611600', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510132', '�½���', '611400', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510181', '��������', '611800', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510182', '������', '610000', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510183', '������', '611500', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510184', '������', '611200', '86510100', '86510000', '86510100,86510000', '�ɶ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510300', '�Թ���', '643000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86510322,86510321,86510311,86510304,86510303,86510302,86510301');
INSERT INTO `area` VALUES ('86510301', '��Ͻ��', '643000', '86510300', '86510000', '86510300,86510000', '�Թ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510302', '��������', '643000', '86510300', '86510000', '86510300,86510000', '�Թ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510303', '������', '643020', '86510300', '86510000', '86510300,86510000', '�Թ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510304', '����', '643010', '86510300', '86510000', '86510300,86510000', '�Թ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510311', '��̲��', '643030', '86510300', '86510000', '86510300,86510000', '�Թ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510321', '�١���', '643100', '86510300', '86510000', '86510300,86510000', '�Թ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510322', '��˳��', '643200', '86510300', '86510000', '86510300,86510000', '�Թ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510400', '��֦����', '617000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86510422,86510421,86510411,86510403,86510402,86510401');
INSERT INTO `area` VALUES ('86510401', '��Ͻ��', '617000', '86510400', '86510000', '86510400,86510000', '��֦����,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510402', '������', '617000', '86510400', '86510000', '86510400,86510000', '��֦����,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510403', '������', '617000', '86510400', '86510000', '86510400,86510000', '��֦����,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510411', '�ʺ���', '617000', '86510400', '86510000', '86510400,86510000', '��֦����,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510421', '������', '617200', '86510400', '86510000', '86510400,86510000', '��֦����,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510422', '�α���', '617100', '86510400', '86510000', '86510400,86510000', '��֦����,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510500', '������', '646000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86510525,86510524,86510522,86510521,86510504,86510503,86510502,86510501');
INSERT INTO `area` VALUES ('86510501', '��Ͻ��', '646000', '86510500', '86510000', '86510500,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510502', '������', '646000', '86510500', '86510000', '86510500,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510503', '��Ϫ��', '646300', '86510500', '86510000', '86510500,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510504', '����̶��', '646000', '86510500', '86510000', '86510500,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510521', '����', '646100', '86510500', '86510000', '86510500,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510522', '�Ͻ���', '646200', '86510500', '86510000', '86510500,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510524', '������', '646400', '86510500', '86510000', '86510500,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510525', '������', '646500', '86510500', '86510000', '86510500,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510600', '������', '618000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86510683,86510682,86510681,86510626,86510623,86510603,86510601');
INSERT INTO `area` VALUES ('86510601', '��Ͻ��', '618000', '86510600', '86510000', '86510600,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510603', '�����', '618000', '86510600', '86510000', '86510600,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510623', '�н���', '618300', '86510600', '86510000', '86510600,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510626', '�޽���', '618500', '86510600', '86510000', '86510600,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510681', '�㺺��', '618300', '86510600', '86510000', '86510600,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510682', 'ʲ����', '618400', '86510600', '86510000', '86510600,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510683', '������', '618200', '86510600', '86510000', '86510600,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510700', '������', '621000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86510781,86510727,86510726,86510725,86510724,86510723,86510722,86510704,86510703,86510701');
INSERT INTO `area` VALUES ('86510701', '��Ͻ��', '621000', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510703', '������', '621000', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510704', '������', '621000', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510722', '��̨��', '621100', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510723', '��ͤ��', '621600', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510724', '������', '622650', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510725', '������', '622150', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510726', '����Ǽ��������', '622550', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510727', 'ƽ����', '622550', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510781', '������', '621700', '86510700', '86510000', '86510700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510800', '��Ԫ��', '628000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86510824,86510823,86510822,86510821,86510812,86510811,86510802,86510801');
INSERT INTO `area` VALUES ('86510801', '��Ͻ��', '628000', '86510800', '86510000', '86510800,86510000', '��Ԫ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510802', '������', '628000', '86510800', '86510000', '86510800,86510000', '��Ԫ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510811', 'Ԫ����', '628000', '86510800', '86510000', '86510800,86510000', '��Ԫ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510812', '������', '628000', '86510800', '86510000', '86510800,86510000', '��Ԫ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510821', '������', '628200', '86510800', '86510000', '86510800,86510000', '��Ԫ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510822', '�ന��', '628100', '86510800', '86510000', '86510800,86510000', '��Ԫ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510823', '������', '628300', '86510800', '86510000', '86510800,86510000', '��Ԫ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510824', '��Ϫ��', '628400', '86510800', '86510000', '86510800,86510000', '��Ԫ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510900', '������', '629000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86510923,86510922,86510921,86510904,86510903,86510901');
INSERT INTO `area` VALUES ('86510901', '��Ͻ��', '629000', '86510900', '86510000', '86510900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510903', '��ɽ��', '629000', '86510900', '86510000', '86510900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510904', '������', '629000', '86510900', '86510000', '86510900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510921', '��Ϫ��', '629100', '86510900', '86510000', '86510900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510922', '�����', '629200', '86510900', '86510000', '86510900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86510923', '��Ӣ��', '629300', '86510900', '86510000', '86510900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511000', '�ڽ���', '628000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511028,86511025,86511024,86511011,86511002,86511001');
INSERT INTO `area` VALUES ('86511001', '��Ͻ��', '628000', '86511000', '86510000', '86511000,86510000', '�ڽ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511002', '������', '641000', '86511000', '86510000', '86511000,86510000', '�ڽ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511011', '������', '641100', '86511000', '86510000', '86511000,86510000', '�ڽ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511024', '��Զ��', '642450', '86511000', '86510000', '86511000,86510000', '�ڽ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511025', '������', '641200', '86511000', '86510000', '86511000,86510000', '�ڽ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511028', '¡����', '642150', '86511000', '86510000', '86511000,86510000', '�ڽ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511100', '��ɽ��', '614000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511181,86511133,86511132,86511129,86511126,86511124,86511123,86511113,86511112,86511111,86511102,86511101');
INSERT INTO `area` VALUES ('86511101', '��Ͻ��', '614000', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511102', '������', '614000', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511111', 'ɳ����', '614900', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511112', '��ͨ����', '614800', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511113', '��ں���', '614700', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511123', '��Ϊ��', '614400', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511124', '������', '613100', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511126', '�н���', '614100', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511129', '�崨��', '614500', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511132', '�������������', '614300', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511133', '�������������', '614600', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511181', '��üɽ��', '614200', '86511100', '86510000', '86511100,86510000', '��ɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511300', '�ϳ���', '637000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511381,86511325,86511324,86511323,86511322,86511321,86511304,86511303,86511302,86511301');
INSERT INTO `area` VALUES ('86511301', '��Ͻ��', '637000', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511302', '˳����', '637000', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511303', '��ƺ��', '637100', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511304', '������', '637500', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511321', '�ϲ���', '637300', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511322', 'Ӫɽ��', '637700', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511323', '���', '637800', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511324', '��¤��', '637600', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511325', '������', '637200', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511381', '������', '637400', '86511300', '86510000', '86511300,86510000', '�ϳ���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511400', 'üɽ��', '620000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511425,86511424,86511423,86511422,86511421,86511402,86511401');
INSERT INTO `area` VALUES ('86511401', '��Ͻ��', '620000', '86511400', '86510000', '86511400,86510000', 'üɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511402', '������', '620000', '86511400', '86510000', '86511400,86510000', 'üɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511421', '������', '620500', '86511400', '86510000', '86511400,86510000', 'üɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511422', '��ɽ��', '620800', '86511400', '86510000', '86511400,86510000', 'üɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511423', '������', '620300', '86511400', '86510000', '86511400,86510000', 'üɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511424', '������', '620200', '86511400', '86510000', '86511400,86510000', 'üɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511425', '������', '620400', '86511400', '86510000', '86511400,86510000', 'üɽ��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511500', '�˱���', '644000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511529,86511528,86511527,86511526,86511525,86511524,86511523,86511522,86511521,86511502,86511501');
INSERT INTO `area` VALUES ('86511501', '��Ͻ��', '644000', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511502', '������', '644000', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511521', '�˱���', '644600', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511522', '��Ϫ��', '644100', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511523', '������', '644200', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511524', '������', '644300', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511525', '�ߡ���', '645150', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511526', '���', '644500', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511527', '������', '645250', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511528', '������', '644400', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511529', '��ɽ��', '645350', '86511500', '86510000', '86511500,86510000', '�˱���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511600', '�㰲��', '638550', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511681,86511623,86511622,86511621,86511602,86511601');
INSERT INTO `area` VALUES ('86511601', '��Ͻ��', '638550', '86511600', '86510000', '86511600,86510000', '�㰲��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511602', '�㰲��', '638550', '86511600', '86510000', '86511600,86510000', '�㰲��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511621', '������', '638300', '86511600', '86510000', '86511600,86510000', '�㰲��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511622', '��ʤ��', '638400', '86511600', '86510000', '86511600,86510000', '�㰲��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511623', '��ˮ��', '638500', '86511600', '86510000', '86511600,86510000', '�㰲��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511681', '��Ө��', '638600', '86511600', '86510000', '86511600,86510000', '�㰲��,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511700', '������', '635000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511781,86511725,86511724,86511723,86511722,86511721,86511702,86511701');
INSERT INTO `area` VALUES ('86511701', '��Ͻ��', '635000', '86511700', '86510000', '86511700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511702', 'ͨ����', '635000', '86511700', '86510000', '86511700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511721', '���', '635000', '86511700', '86510000', '86511700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511722', '������', '636150', '86511700', '86510000', '86511700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511723', '������', '636250', '86511700', '86510000', '86511700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511724', '������', '635100', '86511700', '86510000', '86511700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511725', '������', '635200', '86511700', '86510000', '86511700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511781', '��Դ��', '636350', '86511700', '86510000', '86511700,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511800', '�Ű���', '625000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511827,86511826,86511825,86511824,86511823,86511822,86511821,86511802,86511801');
INSERT INTO `area` VALUES ('86511801', '��Ͻ��', '625000', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511802', '�����', '625000', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511821', '��ɽ��', '625100', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511822', '������', '625200', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511823', '��Դ��', '625300', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511824', 'ʯ����', '625400', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511825', '��ȫ��', '625500', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511826', '«ɽ��', '625600', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511827', '������', '625700', '86511800', '86510000', '86511800,86510000', '�Ű���,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511900', '������', '636600', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86511923,86511922,86511921,86511902,86511901');
INSERT INTO `area` VALUES ('86511901', '��Ͻ��', '636600', '86511900', '86510000', '86511900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511902', '������', '636600', '86511900', '86510000', '86511900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511921', 'ͨ����', '636700', '86511900', '86510000', '86511900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511922', '�Ͻ���', '635600', '86511900', '86510000', '86511900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86511923', 'ƽ����', '636400', '86511900', '86510000', '86511900,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86512000', '������', '641300', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86512081,86512022,86512021,86512002,86512001');
INSERT INTO `area` VALUES ('86512001', '��Ͻ��', '641300', '86512000', '86510000', '86512000,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86512002', '�㽭��', '641300', '86512000', '86510000', '86512000,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86512021', '������', '642350', '86512000', '86510000', '86512000,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86512022', '������', '641500', '86512000', '86510000', '86512000,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86512081', '������', '641400', '86512000', '86510000', '86512000,86510000', '������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513200', '���Ӳ���Ǽ��������', '623000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86513233,86513232,86513231,86513230,86513229,86513228,86513227,86513226,86513225,86513224,86513223,86513222,86513221');
INSERT INTO `area` VALUES ('86513221', '�봨��', '623000', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513222', '����', '623100', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513223', 'ï����', '623200', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513224', '������', '623300', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513225', '��կ����', '623400', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513226', '����', '624100', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513227', 'С����', '624200', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513228', '��ˮ��', '623500', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513229', '�������', '624000', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513230', '������', '624300', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513231', '������', '624600', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513232', '��������', '624500', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513233', '��ԭ��', '624400', '86513200', '86510000', '86513200,86510000', '���Ӳ���Ǽ��������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513300', '���β���������', '626000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86513338,86513337,86513336,86513335,86513334,86513333,86513332,86513331,86513330,86513329,86513328,86513327,86513326,86513325,86513324,86513323,86513322,86513321');
INSERT INTO `area` VALUES ('86513321', '������', '626000', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513322', '����', '626100', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513323', '������', '626300', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513324', '������', '616200', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513325', '�Ž���', '627450', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513326', '������', '626400', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513327', '¯����', '626500', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513328', '������', '626700', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513329', '������', '626800', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513330', '�¸���', '627250', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513331', '������', '627150', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513332', 'ʯ����', '627350', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513333', 'ɫ����', '626600', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513334', '������', '624300', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513335', '������', '627650', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513336', '�����', '627850', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513337', '������', '627750', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513338', '������', '627950', '86513300', '86510000', '86513300,86510000', '���β���������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513400', '��ɽ����������', '615000', '86510000', '86510000', '86510000', '�Ĵ�ʡ', '86513437,86513436,86513435,86513434,86513433,86513432,86513431,86513430,86513429,86513428,86513427,86513426,86513425,86513424,86513423,86513422,86513401');
INSERT INTO `area` VALUES ('86513401', '������', '615000', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513422', 'ľ�����������', '615800', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513423', '��Դ��', '615700', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513424', '�²���', '615500', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513425', '������', '615100', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513426', '�ᶫ��', '615200', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513427', '������', '615400', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513428', '�ո���', '615300', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513429', '������', '615350', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513430', '������', '616250', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513431', '�Ѿ���', '616150', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513432', 'ϲ����', '616750', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513433', '������', '615600', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513434', 'Խ����', '616650', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513435', '������', '616850', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513436', '������', '616450', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86513437', '�ײ���', '616550', '86513400', '86510000', '86513400,86510000', '��ɽ����������,�Ĵ�ʡ', null);
INSERT INTO `area` VALUES ('86520000', '����ʡ', null, '0', null, null, null, '86522700,86522600,86522400,86522300,86522200,86520400,86520300,86520200,86520100');
INSERT INTO `area` VALUES ('86520100', '������', '550000', '86520000', '86520000', '86520000', '����ʡ', '86520181,86520123,86520122,86520121,86520114,86520113,86520112,86520111,86520103,86520102,86520101');
INSERT INTO `area` VALUES ('86520101', '��Ͻ��', '550000', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520102', '������', '550000', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520103', '������', '550000', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520111', '��Ϫ��', '550000', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520112', '�ڵ���', '550000', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520113', '������', '550000', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520114', 'С����', '550000', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520121', '������', '550300', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520122', 'Ϣ����', '551100', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520123', '������', '550200', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520181', '������', '551400', '86520100', '86520000', '86520100,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520200', '����ˮ��', '553000', '86520000', '86520000', '86520000', '����ʡ', '86520222,86520221,86520203,86520201');
INSERT INTO `area` VALUES ('86520201', '��ɽ��', '553000', '86520200', '86520000', '86520200,86520000', '����ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86520203', '��֦����', '553400', '86520200', '86520000', '86520200,86520000', '����ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86520221', 'ˮ����', '553000', '86520200', '86520000', '86520200,86520000', '����ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86520222', '�̡���', '561600', '86520200', '86520000', '86520200,86520000', '����ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86520300', '������', '563000', '86520000', '86520000', '86520000', '����ʡ', '86520382,86520381,86520330,86520329,86520328,86520327,86520326,86520325,86520324,86520323,86520322,86520321,86520303,86520302,86520301');
INSERT INTO `area` VALUES ('86520301', '��Ͻ��', '563000', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520302', '�컨����', '563000', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520303', '�㴨��', '563000', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520321', '������', '563100', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520322', 'ͩ����', '563200', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520323', '������', '563300', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520324', '������', '563400', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520325', '��������������������', '563500', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520326', '������������������', '564300', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520327', '�����', '564200', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520328', '��̶��', '564100', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520329', '������', '564400', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520330', 'ϰˮ��', '564600', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520381', '��ˮ��', '564700', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520382', '�ʻ���', '564500', '86520300', '86520000', '86520300,86520000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86520400', '��˳��', '561000', '86520000', '86520000', '86520000', '����ʡ', '86520425,86520424,86520423,86520422,86520421,86520402,86520401');
INSERT INTO `area` VALUES ('86520401', '��Ͻ��', '561000', '86520400', '86520000', '86520400,86520000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86520402', '������', '561000', '86520400', '86520000', '86520400,86520000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86520421', 'ƽ����', '561100', '86520400', '86520000', '86520400,86520000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86520422', '�ն���', '562100', '86520400', '86520000', '86520400,86520000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86520423', '��������������������', '561200', '86520400', '86520000', '86520400,86520000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86520424', '���벼��������������', '561300', '86520400', '86520000', '86520400,86520000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86520425', '�������岼����������', '550800', '86520400', '86520000', '86520400,86520000', '��˳��,����ʡ', null);
INSERT INTO `area` VALUES ('86522200', 'ͭ�ʵ���', '554300', '86520000', '86520000', '86520000', '����ʡ', '86522230,86522229,86522228,86522227,86522226,86522225,86522224,86522223,86522222,86522201');
INSERT INTO `area` VALUES ('86522201', 'ͭ����', '554300', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522222', '������', '554400', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522223', '��������������', '554000', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522224', 'ʯ����', '555100', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522225', '˼����', '565100', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522226', 'ӡ������������������', '555200', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522227', '�½���', '565200', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522228', '�غ�������������', '565300', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522229', '��������������', '554100', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522230', '��ɽ����', '554200', '86522200', '86520000', '86522200,86520000', 'ͭ�ʵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522300', 'ǭ���ϲ���������������', '562400', '86520000', '86520000', '86520000', '����ʡ', '86522328,86522327,86522326,86522325,86522324,86522323,86522322,86522301');
INSERT INTO `area` VALUES ('86522301', '������', '562400', '86522300', '86520000', '86522300,86520000', 'ǭ���ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522322', '������', '562300', '86522300', '86520000', '86522300,86520000', 'ǭ���ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522323', '�հ���', '561500', '86522300', '86520000', '86522300,86520000', 'ǭ���ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522324', '��¡��', '561400', '86522300', '86520000', '86522300,86520000', 'ǭ���ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522325', '�����', '562200', '86522300', '86520000', '86522300,86520000', 'ǭ���ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522326', '������', '552300', '86522300', '86520000', '86522300,86520000', 'ǭ���ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522327', '�����', '552200', '86522300', '86520000', '86522300,86520000', 'ǭ���ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522328', '������', '552400', '86522300', '86520000', '86522300,86520000', 'ǭ���ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522400', '�Ͻڵ���', '551700', '86520000', '86520000', '86520000', '����ʡ', '86522428,86522427,86522426,86522425,86522424,86522423,86522422,86522401');
INSERT INTO `area` VALUES ('86522401', '�Ͻ���', '551700', '86522400', '86520000', '86522400,86520000', '�Ͻڵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522422', '����', '551600', '86522400', '86520000', '86522400,86520000', '�Ͻڵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522423', 'ǭ����', '551500', '86522400', '86520000', '86522400,86520000', '�Ͻڵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522424', '��ɳ��', '551800', '86522400', '86520000', '86522400,86520000', '�Ͻڵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522425', '֯����', '552100', '86522400', '86520000', '86522400,86520000', '�Ͻڵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522426', '��Ӻ��', '553300', '86522400', '86520000', '86522400,86520000', '�Ͻڵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522427', '���������������������', '553100', '86522400', '86520000', '86522400,86520000', '�Ͻڵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522428', '������', '553200', '86522400', '86520000', '86522400,86520000', '�Ͻڵ���,����ʡ', null);
INSERT INTO `area` VALUES ('86522600', 'ǭ�������嶱��������', '556000', '86520000', '86520000', '86520000', '����ʡ', '86522636,86522635,86522634,86522633,86522632,86522631,86522630,86522629,86522628,86522627,86522626,86522625,86522624,86522623,86522622,86522601');
INSERT INTO `area` VALUES ('86522601', '������', '556000', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522622', '��ƽ��', '556100', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522623', 'ʩ����', '556200', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522624', '������', '556500', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522625', '��Զ��', '557700', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522626', '᯹���', '557800', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522627', '������', '556600', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522628', '������', '556700', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522629', '������', '556400', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522630', '̨����', '556300', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522631', '��ƽ��', '557300', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522632', '�Ž���', '557200', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522633', '�ӽ���', '557400', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522634', '��ɽ��', '557100', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522635', '�齭��', '557600', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522636', '��կ��', '557500', '86522600', '86520000', '86522600,86520000', 'ǭ�������嶱��������,����ʡ', null);
INSERT INTO `area` VALUES ('86522700', 'ǭ�ϲ���������������', '558000', '86520000', '86520000', '86520000', '����ʡ', '86522732,86522731,86522730,86522729,86522728,86522727,86522726,86522725,86522723,86522722,86522702,86522701');
INSERT INTO `area` VALUES ('86522701', '������', '558000', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522702', '��Ȫ��', '550500', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522722', '����', '558400', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522723', '����', '551300', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522725', '�Ͱ���', '550400', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522726', '��ɽ��', '558200', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522727', 'ƽ����', '558300', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522728', '�޵���', '550100', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522729', '��˳��', '550700', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522730', '������', '551200', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522731', '��ˮ��', '550600', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86522732', '����ˮ��������', '558100', '86522700', '86520000', '86522700,86520000', 'ǭ�ϲ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86530000', '����ʡ', null, '0', null, null, null, '86533400,86533300,86533100,86532900,86532800,86532600,86532500,86532300,86530900,86530800,86530700,86530600,86530500,86530400,86530300,86530100');
INSERT INTO `area` VALUES ('86530100', '������', '650000', '86530000', '86530000', '86530000', '����ʡ', '86530181,86530129,86530128,86530127,86530126,86530125,86530124,86530122,86530121,86530113,86530112,86530111,86530103,86530102,86530101');
INSERT INTO `area` VALUES ('86530101', '��Ͻ��', '650000', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530102', '�廪��', '650000', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530103', '������', '650000', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530111', '�ٶ���', '650200', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530112', '��ɽ��', '650100', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530113', '������', '654100', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530121', '�ʹ���', '650500', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530122', '������', '650600', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530124', '������', '650400', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530125', '������', '652100', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530126', 'ʯ������������', '652200', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530127', '������', '651700', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530128', '»Ȱ��������������', '651500', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530129', 'Ѱ���������������', '655200', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530181', '������', '650300', '86530100', '86530000', '86530100,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530300', '������', '655000', '86530000', '86530000', '86530000', '����ʡ', '86530381,86530328,86530326,86530325,86530324,86530323,86530322,86530321,86530302,86530301');
INSERT INTO `area` VALUES ('86530301', '��Ͻ��', '655000', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530302', '������', '655000', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530321', '������', '655100', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530322', '½����', '655600', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530323', 'ʦ����', '655700', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530324', '��ƽ��', '655800', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530325', '��Դ��', '655500', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530326', '������', '654200', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530328', 'մ����', '655500', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530381', '������', '655400', '86530300', '86530000', '86530300,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530400', '��Ϫ��', '653100', '86530000', '86530000', '86530000', '����ʡ', '86530428,86530427,86530426,86530425,86530424,86530423,86530422,86530421,86530402,86530401');
INSERT INTO `area` VALUES ('86530401', '��Ͻ��', '653100', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530402', '������', '653100', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530421', '������', '652600', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530422', '�ν���', '652500', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530423', 'ͨ����', '652700', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530424', '������', '652800', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530425', '������', '651100', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530426', '��ɽ����������', '653200', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530427', '��ƽ�������������', '653400', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530428', 'Ԫ���������������������', '653300', '86530400', '86530000', '86530400,86530000', '��Ϫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530500', '��ɽ��', '678000', '86530000', '86530000', '86530000', '����ʡ', '86530524,86530523,86530522,86530521,86530502,86530501');
INSERT INTO `area` VALUES ('86530501', '��Ͻ��', '678000', '86530500', '86530000', '86530500,86530000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530502', '¡����', '678000', '86530500', '86530000', '86530500,86530000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530521', 'ʩ����', '678200', '86530500', '86530000', '86530500,86530000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530522', '�ڳ���', '679100', '86530500', '86530000', '86530500,86530000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530523', '������', '678300', '86530500', '86530000', '86530500,86530000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530524', '������', '678100', '86530500', '86530000', '86530500,86530000', '��ɽ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530600', '��ͨ��', '657000', '86530000', '86530000', '86530000', '����ʡ', '86530630,86530629,86530628,86530627,86530626,86530625,86530624,86530623,86530622,86530621,86530602,86530601');
INSERT INTO `area` VALUES ('86530601', '��Ͻ��', '657000', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530602', '������', '657000', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530621', '³����', '657100', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530622', '�ɼ���', '654600', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530623', '�ν���', '657500', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530624', '�����', '657400', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530625', '������', '657300', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530626', '�罭��', '657700', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530627', '������', '657200', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530628', '������', '657600', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530629', '������', '657900', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530630', 'ˮ����', '657800', '86530600', '86530000', '86530600,86530000', '��ͨ��,����ʡ', null);
INSERT INTO `area` VALUES ('86530700', '������', '674100', '86530000', '86530000', '86530000', '����ʡ', '86530724,86530723,86530722,86530721,86530702,86530701');
INSERT INTO `area` VALUES ('86530701', '��Ͻ��', '674100', '86530700', '86530000', '86530700,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530702', '�ų���', '674100', '86530700', '86530000', '86530700,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530721', '����������������', '674100', '86530700', '86530000', '86530700,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530722', '��ʤ��', '674200', '86530700', '86530000', '86530700,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530723', '��ƺ��', '674800', '86530700', '86530000', '86530700,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530724', '��������������', '674300', '86530700', '86530000', '86530700,86530000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86530800', '˼é��', '665000', '86530000', '86530000', '86530000', '����ʡ', '86530829,86530828,86530827,86530826,86530825,86530824,86530823,86530822,86530821,86530802,86530801');
INSERT INTO `area` VALUES ('86530801', '��Ͻ��', '665000', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530802', '������', '665000', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530821', '�ն�����������������', '665100', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530822', 'ī��������������', '654800', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530823', '��������������', '676200', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530824', '���ȴ�������������', '666400', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530825', '�������������������������', '666500', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530826', '���ǹ���������������', '665900', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530827', '������������������������', '665800', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530828', '����������������', '665600', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530829', '��������������', '665700', '86530800', '86530000', '86530800,86530000', '˼é��,����ʡ', null);
INSERT INTO `area` VALUES ('86530900', '�ٲ���', '677000', '86530000', '86530000', '86530000', '����ʡ', '86530927,86530926,86530925,86530924,86530923,86530922,86530921,86530902,86530901');
INSERT INTO `area` VALUES ('86530901', '��Ͻ��', '677000', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86530902', '������', '677000', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86530921', '������', '675900', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86530922', '�ơ���', '675800', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86530923', '������', '677600', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86530924', '����', '677700', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86530925', '˫�����������岼�������������', '677300', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86530926', '�����������������', '677500', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86530927', '��Դ����������', '677400', '86530900', '86530000', '86530900,86530000', '�ٲ���,����ʡ', null);
INSERT INTO `area` VALUES ('86532300', '��������������', '675000', '86530000', '86530000', '86530000', '����ʡ', '86532331,86532329,86532328,86532327,86532326,86532325,86532324,86532323,86532322,86532301');
INSERT INTO `area` VALUES ('86532301', '������', '675000', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532322', '˫����', '675100', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532323', 'Ĳ����', '675500', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532324', '�ϻ���', '675200', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532325', 'Ҧ����', '675300', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532326', '��Ҧ��', '675400', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532327', '������', '651400', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532328', 'Ԫı��', '651300', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532329', '�䶨��', '651600', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532331', '»����', '651200', '86532300', '86530000', '86532300,86530000', '��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532500', '��ӹ���������������', '661000', '86530000', '86530000', '86530000', '����ʡ', '86532532,86532531,86532530,86532529,86532528,86532527,86532526,86532525,86532524,86532523,86532522,86532502,86532501');
INSERT INTO `area` VALUES ('86532501', '������', '661000', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532502', '��Զ��', '661600', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532522', '������', '661100', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532523', '��������������', '661200', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532524', '��ˮ��', '654300', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532525', 'ʯ����', '662200', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532526', '������', '652300', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532527', '������', '652400', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532528', 'Ԫ����', '662400', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532529', '�����', '654400', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532530', '��ƽ�����������������', '661500', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532531', '�̴���', '662500', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532532', '�ӿ�����������', '661300', '86532500', '86530000', '86532500,86530000', '��ӹ���������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532600', '��ɽ׳������������', '663000', '86530000', '86530000', '86530000', '����ʡ', '86532628,86532627,86532626,86532625,86532624,86532623,86532622,86532621');
INSERT INTO `area` VALUES ('86532621', '��ɽ��', '663000', '86532600', '86530000', '86532600,86530000', '��ɽ׳������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532622', '��ɽ��', '663100', '86532600', '86530000', '86532600,86530000', '��ɽ׳������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532623', '������', '663500', '86532600', '86530000', '86532600,86530000', '��ɽ׳������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532624', '��������', '663600', '86532600', '86530000', '86532600,86530000', '��ɽ׳������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532625', '�����', '663700', '86532600', '86530000', '86532600,86530000', '��ɽ׳������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532626', '����', '663200', '86532600', '86530000', '86532600,86530000', '��ɽ׳������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532627', '������', '663300', '86532600', '86530000', '86532600,86530000', '��ɽ׳������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532628', '������', '663400', '86532600', '86530000', '86532600,86530000', '��ɽ׳������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532800', '��˫���ɴ���������', '666100', '86530000', '86530000', '86530000', '����ʡ', '86532823,86532822,86532801');
INSERT INTO `area` VALUES ('86532801', '������', '666100', '86532800', '86530000', '86532800,86530000', '��˫���ɴ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86532822', '�º���', '666200', '86532800', '86530000', '86532800,86530000', '��˫���ɴ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86532823', '������', '666300', '86532800', '86530000', '86532800,86530000', '��˫���ɴ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86532900', '�������������', '671000', '86530000', '86530000', '86530000', '����ʡ', '86532932,86532931,86532930,86532929,86532928,86532927,86532926,86532925,86532924,86532923,86532922,86532901');
INSERT INTO `area` VALUES ('86532901', '������', '671000', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532922', '�������������', '672500', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532923', '������', '672100', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532924', '������', '671600', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532925', '�ֶ���', '675600', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532926', '�Ͻ�����������', '675700', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532927', 'Ρɽ�������������', '672400', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532928', '��ƽ��', '672600', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532929', '������', '672700', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532930', '��Դ��', '671200', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532931', '������', '671300', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86532932', '������', '671500', '86532900', '86530000', '86532900,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86533100', '�º���徰����������', '678600', '86530000', '86530000', '86530000', '����ʡ', '86533124,86533123,86533122,86533103,86533102');
INSERT INTO `area` VALUES ('86533102', '������', '678600', '86533100', '86530000', '86533100,86530000', '�º���徰����������,����ʡ', null);
INSERT INTO `area` VALUES ('86533103', 'º����', '678400', '86533100', '86530000', '86533100,86530000', '�º���徰����������,����ʡ', null);
INSERT INTO `area` VALUES ('86533122', '������', '679200', '86533100', '86530000', '86533100,86530000', '�º���徰����������,����ʡ', null);
INSERT INTO `area` VALUES ('86533123', 'ӯ����', '679300', '86533100', '86530000', '86533100,86530000', '�º���徰����������,����ʡ', null);
INSERT INTO `area` VALUES ('86533124', '¤����', '678700', '86533100', '86530000', '86533100,86530000', '�º���徰����������,����ʡ', null);
INSERT INTO `area` VALUES ('86533300', 'ŭ��������������', '673200', '86530000', '86530000', '86530000', '����ʡ', '86533325,86533324,86533323,86533321');
INSERT INTO `area` VALUES ('86533321', '��ˮ��', '673200', '86533300', '86530000', '86533300,86530000', 'ŭ��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86533323', '������', '673400', '86533300', '86530000', '86533300,86530000', 'ŭ��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86533324', '��ɽ������ŭ��������', '673500', '86533300', '86530000', '86533300,86530000', 'ŭ��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86533325', '��ƺ����������������', '671400', '86533300', '86530000', '86533300,86530000', 'ŭ��������������,����ʡ', null);
INSERT INTO `area` VALUES ('86533400', '�������������', '674400', '86530000', '86530000', '86530000', '����ʡ', '86533423,86533422,86533421');
INSERT INTO `area` VALUES ('86533421', '���������', '674400', '86533400', '86530000', '86533400,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86533422', '������', '674500', '86533400', '86530000', '86533400,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86533423', 'ά��������������', '674600', '86533400', '86530000', '86533400,86530000', '�������������,����ʡ', null);
INSERT INTO `area` VALUES ('86540000', '����������', null, '0', null, null, null, '86542600,86542500,86542400,86542300,86542200,86542100,86540100');
INSERT INTO `area` VALUES ('86540100', '������', '850000', '86540000', '86540000', '86540000', '����������', '86540127,86540126,86540125,86540124,86540123,86540122,86540121,86540102,86540101');
INSERT INTO `area` VALUES ('86540101', '��Ͻ��', '850000', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86540102', '�ǹ���', '850000', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86540121', '������', '851600', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86540122', '������', '851500', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86540123', '��ľ��', '851600', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86540124', '��ˮ��', '850600', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86540125', '����������', '851400', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86540126', '������', '850100', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86540127', 'ī�񹤿���', '850200', '86540100', '86540000', '86540100,86540000', '������,����������', null);
INSERT INTO `area` VALUES ('86542100', '��������', '854000', '86540000', '86540000', '86540000', '����������', '86542133,86542132,86542129,86542128,86542127,86542126,86542125,86542124,86542123,86542122,86542121');
INSERT INTO `area` VALUES ('86542121', '������', '854000', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542122', '������', '854100', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542123', '������', '854200', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542124', '��������', '855600', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542125', '������', '855700', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542126', '������', '854300', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542127', '������', '854600', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542128', '����', '854400', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542129', 'â����', '854500', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542132', '��¡��', '855400', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542133', '�߰���', '855500', '86542100', '86540000', '86542100,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542200', 'ɽ�ϵ���', '856100', '86540000', '86540000', '86540000', '����������', '86542233,86542232,86542231,86542229,86542228,86542227,86542226,86542225,86542224,86542223,86542222,86542221');
INSERT INTO `area` VALUES ('86542221', '�˶���', '856100', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542222', '������', '850800', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542223', '������', '850700', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542224', 'ɣ����', '856200', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542225', '�����', '856800', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542226', '������', '856300', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542227', '������', '856900', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542228', '������', '851200', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542229', '�Ӳ���', '856400', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542231', '¡����', '856600', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542232', '������', '856700', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542233', '�˿�����', '851100', '86542200', '86540000', '86542200,86540000', 'ɽ�ϵ���,����������', null);
INSERT INTO `area` VALUES ('86542300', '�տ������', '857000', '86540000', '86540000', '86540000', '����������', '86542338,86542337,86542336,86542335,86542334,86542333,86542332,86542331,86542330,86542329,86542328,86542327,86542326,86542325,86542324,86542323,86542322,86542301');
INSERT INTO `area` VALUES ('86542301', '�տ�����', '857000', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542322', '��ľ����', '857100', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542323', '������', '857400', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542324', '������', '858200', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542325', '������', '857800', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542326', '������', '858100', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542327', '������', '858500', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542328', 'лͨ����', '858900', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542329', '������', '857300', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542330', '�ʲ���', '857200', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542331', '������', '857500', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542332', '������', '857900', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542333', '�ٰ���', '858800', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542334', '�Ƕ���', '857600', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542335', '��¡��', '858700', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542336', '����ľ��', '858300', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542337', '������', '858600', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542338', '�ڰ���', '857700', '86542300', '86540000', '86542300,86540000', '�տ������,����������', null);
INSERT INTO `area` VALUES ('86542400', '��������', '852000', '86540000', '86540000', '86540000', '����������', '86542430,86542429,86542428,86542427,86542426,86542425,86542424,86542423,86542422,86542421');
INSERT INTO `area` VALUES ('86542421', '������', '852000', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542422', '������', '852400', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542423', '������', '852300', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542424', '������', '853500', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542425', '������', '853400', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542426', '������', '853100', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542427', '������', '852200', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542428', '�����', '852500', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542429', '������', '852100', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542430', '������', '853200', '86542400', '86540000', '86542400,86540000', '��������,����������', null);
INSERT INTO `area` VALUES ('86542500', '�������', '859500', '86540000', '86540000', '86540000', '����������', '86542527,86542526,86542525,86542524,86542523,86542522,86542521');
INSERT INTO `area` VALUES ('86542521', '������', '859500', '86542500', '86540000', '86542500,86540000', '�������,����������', null);
INSERT INTO `area` VALUES ('86542522', '������', '859600', '86542500', '86540000', '86542500,86540000', '�������,����������', null);
INSERT INTO `area` VALUES ('86542523', '������', '859000', '86542500', '86540000', '86542500,86540000', '�������,����������', null);
INSERT INTO `area` VALUES ('86542524', '������', '859700', '86542500', '86540000', '86542500,86540000', '�������,����������', null);
INSERT INTO `area` VALUES ('86542525', '�Ｊ��', '859100', '86542500', '86540000', '86542500,86540000', '�������,����������', null);
INSERT INTO `area` VALUES ('86542526', '������', '859200', '86542500', '86540000', '86542500,86540000', '�������,����������', null);
INSERT INTO `area` VALUES ('86542527', '������', '859300', '86542500', '86540000', '86542500,86540000', '�������,����������', null);
INSERT INTO `area` VALUES ('86542600', '��֥����', '860100', '86540000', '86540000', '86540000', '����������', '86542627,86542626,86542625,86542624,86542623,86542622,86542621');
INSERT INTO `area` VALUES ('86542621', '��֥��', '860100', '86542600', '86540000', '86542600,86540000', '��֥����,����������', null);
INSERT INTO `area` VALUES ('86542622', '����������', '860200', '86542600', '86540000', '86542600,86540000', '��֥����,����������', null);
INSERT INTO `area` VALUES ('86542623', '������', '860500', '86542600', '86540000', '86542600,86540000', '��֥����,����������', null);
INSERT INTO `area` VALUES ('86542624', 'ī����', '860700', '86542600', '86540000', '86542600,86540000', '��֥����,����������', null);
INSERT INTO `area` VALUES ('86542625', '������', '860300', '86542600', '86540000', '86542600,86540000', '��֥����,����������', null);
INSERT INTO `area` VALUES ('86542626', '������', '860600', '86542600', '86540000', '86542600,86540000', '��֥����,����������', null);
INSERT INTO `area` VALUES ('86542627', '�ʡ���', '860400', '86542600', '86540000', '86542600,86540000', '��֥����,����������', null);
INSERT INTO `area` VALUES ('86610000', '����ʡ', null, '0', null, null, null, '86611000,86610900,86610800,86610700,86610600,86610500,86610400,86610300,86610200,86610100');
INSERT INTO `area` VALUES ('86610100', '������', '710000', '86610000', '86610000', '86610000', '����ʡ', '86610126,86610125,86610124,86610122,86610116,86610115,86610114,86610113,86610112,86610111,86610104,86610103,86610102,86610101');
INSERT INTO `area` VALUES ('86610101', '��Ͻ��', '710000', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610102', '�³���', '710000', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610103', '������', '710000', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610104', '������', '710000', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610111', '�����', '710000', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610112', 'δ����', '710000', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610113', '������', '710000', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610114', '������', '710000', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610115', '������', '710600', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610116', '������', '710100', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610122', '������', '710500', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610124', '������', '710400', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610125', '������', '710300', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610126', '������', '710200', '86610100', '86610000', '86610100,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610200', 'ͭ����', '727000', '86610000', '86610000', '86610000', '����ʡ', '86610222,86610204,86610203,86610202,86610201');
INSERT INTO `area` VALUES ('86610201', '��Ͻ��', '727000', '86610200', '86610000', '86610200,86610000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610202', '������', '727000', '86610200', '86610000', '86610200,86610000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610203', 'ӡ̨��', '727000', '86610200', '86610000', '86610200,86610000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610204', 'ҫ����', '727100', '86610200', '86610000', '86610200,86610000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610222', '�˾���', '727200', '86610200', '86610000', '86610200,86610000', 'ͭ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610300', '������', '721000', '86610000', '86610000', '86610000', '����ʡ', '86610331,86610330,86610329,86610328,86610327,86610326,86610324,86610323,86610322,86610304,86610303,86610302,86610301');
INSERT INTO `area` VALUES ('86610301', '��Ͻ��', '721000', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610302', 'μ����', '721000', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610303', '��̨��', '721000', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610304', '�²���', '721300', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610322', '������', '721400', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610323', '�ɽ��', '722400', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610324', '������', '722200', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610326', 'ü����', '722300', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610327', '¤����', '721200', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610328', 'ǧ����', '721100', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610329', '������', '721500', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610330', '���', '721700', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610331', '̫����', '721600', '86610300', '86610000', '86610300,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610400', '������', '712000', '86610000', '86610000', '86610000', '����ʡ', '86610481,86610431,86610430,86610429,86610428,86610427,86610426,86610425,86610424,86610423,86610422,86610404,86610403,86610402,86610401');
INSERT INTO `area` VALUES ('86610401', '��Ͻ��', '712000', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610402', '�ض���', '712000', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610403', '������', '712000', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610404', 'μ����', '712000', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610422', '��ԭ��', '713800', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610423', '������', '713700', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610424', 'Ǭ����', '713300', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610425', '��Ȫ��', '713200', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610426', '������', '713400', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610427', '����', '713500', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610428', '������', '713600', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610429', 'Ѯ����', '711300', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610430', '������', '711200', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610431', '�书��', '712200', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610481', '��ƽ��', '713100', '86610400', '86610000', '86610400,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610500', 'μ����', '714000', '86610000', '86610000', '86610000', '����ʡ', '86610582,86610581,86610528,86610527,86610526,86610525,86610524,86610523,86610522,86610521,86610502,86610501');
INSERT INTO `area` VALUES ('86610501', '��Ͻ��', '714000', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610502', '��μ��', '714000', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610521', '������', '714100', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610522', '������', '714300', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610523', '������', '715100', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610524', '������', '715300', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610525', '�γ���', '715200', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610526', '�ѳ���', '715500', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610527', '��ˮ��', '715600', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610528', '��ƽ��', '711700', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610581', '������', '715400', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610582', '������', '714200', '86610500', '86610000', '86610500,86610000', 'μ����,����ʡ', null);
INSERT INTO `area` VALUES ('86610600', '�Ӱ���', '716000', '86610000', '86610000', '86610000', '����ʡ', '86610632,86610631,86610630,86610629,86610628,86610627,86610626,86610625,86610624,86610623,86610622,86610621,86610602,86610601');
INSERT INTO `area` VALUES ('86610601', '��Ͻ��', '716000', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610602', '������', '716000', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610621', '�ӳ���', '717100', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610622', '�Ӵ���', '717200', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610623', '�ӳ���', '717300', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610624', '������', '717400', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610625', '־����', '717500', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610626', '������', '717600', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610627', '��Ȫ��', '716100', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610628', '������', '727500', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610629', '�崨��', '727400', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610630', '�˴���', '716200', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610631', '������', '715700', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610632', '������', '727300', '86610600', '86610000', '86610600,86610000', '�Ӱ���,����ʡ', null);
INSERT INTO `area` VALUES ('86610700', '������', '723000', '86610000', '86610000', '86610000', '����ʡ', '86610730,86610729,86610728,86610727,86610726,86610725,86610724,86610723,86610722,86610721,86610702,86610701');
INSERT INTO `area` VALUES ('86610701', '��Ͻ��', '723000', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610702', '��̨��', '723000', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610721', '��֣��', '723100', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610722', '�ǹ���', '723200', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610723', '����', '723300', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610724', '������', '723500', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610725', '�㡡��', '724200', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610726', '��ǿ��', '724400', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610727', '������', '724300', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610728', '�����', '723600', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610729', '������', '724100', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610730', '��ƺ��', '723400', '86610700', '86610000', '86610700,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610800', '������', '719000', '86610000', '86610000', '86610000', '����ʡ', '86610831,86610830,86610829,86610828,86610827,86610826,86610825,86610824,86610823,86610822,86610821,86610802,86610801');
INSERT INTO `area` VALUES ('86610801', '��Ͻ��', '719000', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610802', '������', '719000', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610821', '��ľ��', '719300', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610822', '������', '719400', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610823', '��ɽ��', '719200', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610824', '������', '718500', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610825', '������', '718600', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610826', '�����', '718000', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610827', '��֬��', '718100', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610828', '�ѡ���', '719200', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610829', '�Ɽ��', '718200', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610830', '�彧��', '718300', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610831', '������', '718400', '86610800', '86610000', '86610800,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610900', '������', '725000', '86610000', '86610000', '86610000', '����ʡ', '86610929,86610928,86610927,86610926,86610925,86610924,86610923,86610922,86610921,86610902,86610901');
INSERT INTO `area` VALUES ('86610901', '��Ͻ��', '725000', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610902', '������', '725000', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610921', '������', '725100', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610922', 'ʯȪ��', '725200', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610923', '������', '711600', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610924', '������', '725300', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610925', '᰸���', '725400', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610926', 'ƽ����', '725500', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610927', '��ƺ��', '725600', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610928', 'Ѯ����', '725700', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86610929', '�׺���', '725800', '86610900', '86610000', '86610900,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86611000', '������', '726000', '86610000', '86610000', '86610000', '����ʡ', '86611026,86611025,86611024,86611023,86611022,86611021,86611002,86611001');
INSERT INTO `area` VALUES ('86611001', '��Ͻ��', '726000', '86611000', '86610000', '86611000,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86611002', '������', '726000', '86611000', '86610000', '86611000,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86611021', '������', '726100', '86611000', '86610000', '86611000,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86611022', '������', '726200', '86611000', '86610000', '86611000,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86611023', '������', '726300', '86611000', '86610000', '86611000,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86611024', 'ɽ����', '726400', '86611000', '86610000', '86611000,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86611025', '����', '711500', '86611000', '86610000', '86611000,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86611026', '��ˮ��', '711400', '86611000', '86610000', '86611000,86610000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620000', '����ʡ', null, '0', null, null, null, '86623000,86622900,86621200,86621100,86621000,86620900,86620800,86620700,86620600,86620500,86620400,86620300,86620200,86620100');
INSERT INTO `area` VALUES ('86620100', '������', '730000', '86620000', '86620000', '86620000', '����ʡ', '86620123,86620122,86620121,86620111,86620105,86620104,86620103,86620102,86620101');
INSERT INTO `area` VALUES ('86620101', '��Ͻ��', '730000', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620102', '�ǹ���', '730030', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620103', '�������', '730050', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620104', '������', '730060', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620105', '������', '730070', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620111', '�����', '730080', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620121', '������', '730300', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620122', '������', '730200', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620123', '������', '730100', '86620100', '86620000', '86620100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620200', '��������', '737100', '86620000', '86620000', '86620000', '����ʡ', '86620201');
INSERT INTO `area` VALUES ('86620201', '��Ͻ��', '737100', '86620200', '86620000', '86620200,86620000', '��������,����ʡ', null);
INSERT INTO `area` VALUES ('86620300', '�����', '737100', '86620000', '86620000', '86620000', '����ʡ', '86620321,86620302,86620301');
INSERT INTO `area` VALUES ('86620301', '��Ͻ��', '737100', '86620300', '86620000', '86620300,86620000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86620302', '����', '737100', '86620300', '86620000', '86620300,86620000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86620321', '������', '737200', '86620300', '86620000', '86620300,86620000', '�����,����ʡ', null);
INSERT INTO `area` VALUES ('86620400', '������', '730900', '86620000', '86620000', '86620000', '����ʡ', '86620423,86620422,86620421,86620403,86620402,86620401');
INSERT INTO `area` VALUES ('86620401', '��Ͻ��', '730900', '86620400', '86620000', '86620400,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620402', '������', '730900', '86620400', '86620000', '86620400,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620403', 'ƽ����', '730900', '86620400', '86620000', '86620400,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620421', '��Զ��', '730600', '86620400', '86620000', '86620400,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620422', '������', '730700', '86620400', '86620000', '86620400,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620423', '��̩��', '730400', '86620400', '86620000', '86620400,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620500', '��ˮ��', '741000', '86620000', '86620000', '86620000', '����ʡ', '86620525,86620524,86620523,86620522,86620521,86620503,86620502,86620501');
INSERT INTO `area` VALUES ('86620501', '��Ͻ��', '741000', '86620500', '86620000', '86620500,86620000', '��ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620502', '�س���', '741000', '86620500', '86620000', '86620500,86620000', '��ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620503', '������', '741000', '86620500', '86620000', '86620500,86620000', '��ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620521', '��ˮ��', '741400', '86620500', '86620000', '86620500,86620000', '��ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620522', '�ذ���', '741600', '86620500', '86620000', '86620500,86620000', '��ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620523', '�ʹ���', '741200', '86620500', '86620000', '86620500,86620000', '��ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620524', '��ɽ��', '741300', '86620500', '86620000', '86620500,86620000', '��ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620525', '�żҴ�����������', '733000', '86620500', '86620000', '86620500,86620000', '��ˮ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620600', '������', '733000', '86620000', '86620000', '86620000', '����ʡ', '86620623,86620622,86620621,86620602,86620601');
INSERT INTO `area` VALUES ('86620601', '��Ͻ��', '733000', '86620600', '86620000', '86620600,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620602', '������', '733000', '86620600', '86620000', '86620600,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620621', '������', '733300', '86620600', '86620000', '86620600,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620622', '������', '733100', '86620600', '86620000', '86620600,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620623', '��ף����������', '733200', '86620600', '86620000', '86620600,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86620700', '��Ҵ��', '734000', '86620000', '86620000', '86620000', '����ʡ', '86620725,86620724,86620723,86620722,86620721,86620702,86620701');
INSERT INTO `area` VALUES ('86620701', '��Ͻ��', '734000', '86620700', '86620000', '86620700,86620000', '��Ҵ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620702', '������', '734000', '86620700', '86620000', '86620700,86620000', '��Ҵ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620721', '����ԣ����������', '734400', '86620700', '86620000', '86620700,86620000', '��Ҵ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620722', '������', '734500', '86620700', '86620000', '86620700,86620000', '��Ҵ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620723', '������', '734200', '86620700', '86620000', '86620700,86620000', '��Ҵ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620724', '��̨��', '734300', '86620700', '86620000', '86620700,86620000', '��Ҵ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620725', 'ɽ����', '734100', '86620700', '86620000', '86620700,86620000', '��Ҵ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620800', 'ƽ����', '744000', '86620000', '86620000', '86620000', '����ʡ', '86620826,86620825,86620824,86620823,86620822,86620821,86620802,86620801');
INSERT INTO `area` VALUES ('86620801', '��Ͻ��', '744000', '86620800', '86620000', '86620800,86620000', 'ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86620802', '�����', '744000', '86620800', '86620000', '86620800,86620000', 'ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86620821', '������', '744300', '86620800', '86620000', '86620800,86620000', 'ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86620822', '��̨��', '744400', '86620800', '86620000', '86620800,86620000', 'ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86620823', '������', '744200', '86620800', '86620000', '86620800,86620000', 'ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86620824', '��ͤ��', '744100', '86620800', '86620000', '86620800,86620000', 'ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86620825', 'ׯ����', '744600', '86620800', '86620000', '86620800,86620000', 'ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86620826', '������', '743400', '86620800', '86620000', '86620800,86620000', 'ƽ����,����ʡ', null);
INSERT INTO `area` VALUES ('86620900', '��Ȫ��', '735000', '86620000', '86620000', '86620000', '����ʡ', '86620982,86620981,86620924,86620923,86620922,86620921,86620902,86620901');
INSERT INTO `area` VALUES ('86620901', '��Ͻ��', '735000', '86620900', '86620000', '86620900,86620000', '��Ȫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620902', '������', '735000', '86620900', '86620000', '86620900,86620000', '��Ȫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620921', '������', '735300', '86620900', '86620000', '86620900,86620000', '��Ȫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620922', '������', '736100', '86620900', '86620000', '86620900,86620000', '��Ȫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620923', '�౱�ɹ���������', '736300', '86620900', '86620000', '86620900,86620000', '��Ȫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620924', '��������������������', '736400', '86620900', '86620000', '86620900,86620000', '��Ȫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620981', '������', '735200', '86620900', '86620000', '86620900,86620000', '��Ȫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86620982', '�ػ���', '736200', '86620900', '86620000', '86620900,86620000', '��Ȫ��,����ʡ', null);
INSERT INTO `area` VALUES ('86621000', '������', '745000', '86620000', '86620000', '86620000', '����ʡ', '86621027,86621026,86621025,86621024,86621023,86621022,86621021,86621002,86621001');
INSERT INTO `area` VALUES ('86621001', '��Ͻ��', '745000', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621002', '������', '745000', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621021', '�����', '745000', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621022', '������', '745700', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621023', '������', '745600', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621024', '��ˮ��', '745400', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621025', '������', '745300', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621026', '������', '745200', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621027', '��ԭ��', '744500', '86621000', '86620000', '86621000,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621100', '������', '743000', '86620000', '86620000', '86620000', '����ʡ', '86621126,86621125,86621124,86621123,86621122,86621121,86621102,86621101');
INSERT INTO `area` VALUES ('86621101', '��Ͻ��', '743000', '86621100', '86620000', '86621100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621102', '������', '743000', '86621100', '86620000', '86621100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621121', 'ͨμ��', '743300', '86621100', '86620000', '86621100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621122', '¤����', '748100', '86621100', '86620000', '86621100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621123', 'μԴ��', '748200', '86621100', '86620000', '86621100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621124', '�����', '730500', '86621100', '86620000', '86621100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621125', '�ġ���', '748300', '86621100', '86620000', '86621100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621126', 'ạ���', '748400', '86621100', '86620000', '86621100,86620000', '������,����ʡ', null);
INSERT INTO `area` VALUES ('86621200', '¤����', '746000', '86620000', '86620000', '86620000', '����ʡ', '86621228,86621227,86621226,86621225,86621224,86621223,86621222,86621221,86621202,86621201');
INSERT INTO `area` VALUES ('86621201', '��Ͻ��', '746000', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621202', '�䶼��', '746000', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621221', '�ɡ���', '742500', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621222', '�ġ���', '746400', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621223', '崲���', '748500', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621224', '������', '746500', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621225', '������', '742100', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621226', '����', '742200', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621227', '�ա���', '742300', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86621228', '������', '742400', '86621200', '86620000', '86621200,86620000', '¤����,����ʡ', null);
INSERT INTO `area` VALUES ('86622900', '���Ļ���������', '731100', '86620000', '86620000', '86620000', '����ʡ', '86622927,86622926,86622925,86622924,86622923,86622922,86622921,86622901');
INSERT INTO `area` VALUES ('86622901', '������', '731100', '86622900', '86620000', '86622900,86620000', '���Ļ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86622921', '������', '731800', '86622900', '86620000', '86622900,86620000', '���Ļ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86622922', '������', '731500', '86622900', '86620000', '86622900,86620000', '���Ļ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86622923', '������', '731600', '86622900', '86620000', '86622900,86620000', '���Ļ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86622924', '�����', '731300', '86622900', '86620000', '86622900,86620000', '���Ļ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86622925', '������', '731200', '86622900', '86620000', '86622900,86620000', '���Ļ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86622926', '������������', '731400', '86622900', '86620000', '86622900,86620000', '���Ļ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86622927', '��ʯɽ�����嶫����������������', '731700', '86622900', '86620000', '86622900,86620000', '���Ļ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86623000', '���ϲ���������', '747000', '86620000', '86620000', '86620000', '����ʡ', '86623027,86623026,86623025,86623024,86623023,86623022,86623021,86623001');
INSERT INTO `area` VALUES ('86623001', '������', '747000', '86623000', '86620000', '86623000,86620000', '���ϲ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86623021', '��̶��', '747500', '86623000', '86620000', '86623000,86620000', '���ϲ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86623022', '׿����', '747600', '86623000', '86620000', '86623000,86620000', '���ϲ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86623023', '������', '746300', '86623000', '86620000', '86623000,86620000', '���ϲ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86623024', '������', '747400', '86623000', '86620000', '86623000,86620000', '���ϲ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86623025', '������', '747300', '86623000', '86620000', '86623000,86620000', '���ϲ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86623026', 'µ����', '747200', '86623000', '86620000', '86623000,86620000', '���ϲ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86623027', '�ĺ���', '747100', '86623000', '86620000', '86623000,86620000', '���ϲ���������,����ʡ', null);
INSERT INTO `area` VALUES ('86630000', '�ຣʡ', null, '0', null, null, null, '86632800,86632700,86632600,86632500,86632300,86632200,86632100,86630100');
INSERT INTO `area` VALUES ('86630100', '������', '810000', '86630000', '86630000', '86630000', '�ຣʡ', '86630123,86630122,86630121,86630105,86630104,86630103,86630102,86630101');
INSERT INTO `area` VALUES ('86630101', '��Ͻ��', '810000', '86630100', '86630000', '86630100,86630000', '������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86630102', '�Ƕ���', '810000', '86630100', '86630000', '86630100,86630000', '������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86630103', '������', '810000', '86630100', '86630000', '86630100,86630000', '������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86630104', '������', '810000', '86630100', '86630000', '86630100,86630000', '������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86630105', '�Ǳ���', '810000', '86630100', '86630000', '86630100,86630000', '������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86630121', '��ͨ��������������', '810100', '86630100', '86630000', '86630100,86630000', '������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86630122', '������', '811600', '86630100', '86630000', '86630100,86630000', '������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86630123', '��Դ��', '812100', '86630100', '86630000', '86630100,86630000', '������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632100', '��������', '810600', '86630000', '86630000', '86630000', '�ຣʡ', '86632128,86632127,86632126,86632123,86632122,86632121');
INSERT INTO `area` VALUES ('86632121', 'ƽ����', '810600', '86632100', '86630000', '86632100,86630000', '��������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632122', '��ͻ�������������', '810800', '86632100', '86630000', '86632100,86630000', '��������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632123', '�ֶ���', '810700', '86632100', '86630000', '86632100,86630000', '��������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632126', '��������������', '810500', '86632100', '86630000', '86632100,86630000', '��������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632127', '��¡����������', '810900', '86632100', '86630000', '86632100,86630000', '��������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632128', 'ѭ��������������', '811100', '86632100', '86630000', '86632100,86630000', '��������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632200', '��������������', '810300', '86630000', '86630000', '86630000', '�ຣʡ', '86632224,86632223,86632222,86632221');
INSERT INTO `area` VALUES ('86632221', '��Դ����������', '810300', '86632200', '86630000', '86632200,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632222', '������', '810400', '86632200', '86630000', '86632200,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632223', '������', '812200', '86632200', '86630000', '86632200,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632224', '�ղ���', '812300', '86632200', '86630000', '86632200,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632300', '���ϲ���������', '811300', '86630000', '86630000', '86630000', '�ຣʡ', '86632324,86632323,86632322,86632321');
INSERT INTO `area` VALUES ('86632321', 'ͬ����', '811300', '86632300', '86630000', '86632300,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632322', '������', '811200', '86632300', '86630000', '86632300,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632323', '�����', '811400', '86632300', '86630000', '86632300,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632324', '�����ɹ���������', '811500', '86632300', '86630000', '86632300,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632500', '���ϲ���������', '813000', '86630000', '86630000', '86630000', '�ຣʡ', '86632525,86632524,86632523,86632522,86632521');
INSERT INTO `area` VALUES ('86632521', '������', '813000', '86632500', '86630000', '86632500,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632522', 'ͬ����', '813200', '86632500', '86630000', '86632500,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632523', '�����', '811700', '86632500', '86630000', '86632500,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632524', '�˺���', '813300', '86632500', '86630000', '86632500,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632525', '������', '813100', '86632500', '86630000', '86632500,86630000', '���ϲ���������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632600', '�������������', '814000', '86630000', '86630000', '86630000', '�ຣʡ', '86632626,86632625,86632624,86632623,86632622,86632621');
INSERT INTO `area` VALUES ('86632621', '������', '814000', '86632600', '86630000', '86632600,86630000', '�������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632622', '������', '814300', '86632600', '86630000', '86632600,86630000', '�������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632623', '�ʵ���', '814100', '86632600', '86630000', '86632600,86630000', '�������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632624', '������', '814200', '86632600', '86630000', '86632600,86630000', '�������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632625', '������', '624700', '86632600', '86630000', '86632600,86630000', '�������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632626', '�����', '813500', '86632600', '86630000', '86632600,86630000', '�������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632700', '��������������', '815000', '86630000', '86630000', '86630000', '�ຣʡ', '86632726,86632725,86632724,86632723,86632722,86632721');
INSERT INTO `area` VALUES ('86632721', '������', '815000', '86632700', '86630000', '86632700,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632722', '�Ӷ���', '815300', '86632700', '86630000', '86632700,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632723', '�ƶ���', '815100', '86632700', '86630000', '86632700,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632724', '�ζ���', '815400', '86632700', '86630000', '86632700,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632725', '��ǫ��', '815200', '86632700', '86630000', '86632700,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632726', '��������', '815500', '86632700', '86630000', '86632700,86630000', '��������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632800', '�����ɹ������������', '816000', '86630000', '86630000', '86630000', '�ຣʡ', '86632823,86632822,86632821,86632802,86632801');
INSERT INTO `area` VALUES ('86632801', '���ľ��', '816000', '86632800', '86630000', '86632800,86630000', '�����ɹ������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632802', '�������', '817000', '86632800', '86630000', '86632800,86630000', '�����ɹ������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632821', '������', '817100', '86632800', '86630000', '86632800,86630000', '�����ɹ������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632822', '������', '816100', '86632800', '86630000', '86632800,86630000', '�����ɹ������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86632823', '�����', '817200', '86632800', '86630000', '86632800,86630000', '�����ɹ������������,�ຣʡ', null);
INSERT INTO `area` VALUES ('86640000', '���Ļ���������', null, '0', null, null, null, '86640500,86640400,86640300,86640200,86640100');
INSERT INTO `area` VALUES ('86640100', '������', '750000', '86640000', '86640000', '86640000', '���Ļ���������', '86640181,86640122,86640121,86640106,86640105,86640104,86640101');
INSERT INTO `area` VALUES ('86640101', '��Ͻ��', '750000', '86640100', '86640000', '86640100,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640104', '������', '750000', '86640100', '86640000', '86640100,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640105', '������', '750000', '86640100', '86640000', '86640100,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640106', '�����', '750000', '86640100', '86640000', '86640100,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640121', '������', '750100', '86640100', '86640000', '86640100,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640122', '������', '750200', '86640100', '86640000', '86640100,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640181', '������', '751400', '86640100', '86640000', '86640100,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640200', 'ʯ��ɽ��', '753000', '86640000', '86640000', '86640000', '���Ļ���������', '86640221,86640205,86640202,86640201');
INSERT INTO `area` VALUES ('86640201', '��Ͻ��', '753000', '86640200', '86640000', '86640200,86640000', 'ʯ��ɽ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640202', '�������', '753000', '86640200', '86640000', '86640200,86640000', 'ʯ��ɽ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640205', '��ũ��', '753600', '86640200', '86640000', '86640200,86640000', 'ʯ��ɽ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640221', 'ƽ����', '753400', '86640200', '86640000', '86640200,86640000', 'ʯ��ɽ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640300', '������', '751100', '86640000', '86640000', '86640000', '���Ļ���������', '86640381,86640324,86640323,86640302,86640301');
INSERT INTO `area` VALUES ('86640301', '��Ͻ��', '751100', '86640300', '86640000', '86640300,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640302', '��ͨ��', '751100', '86640300', '86640000', '86640300,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640323', '�γ���', '751500', '86640300', '86640000', '86640300,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640324', 'ͬ����', '751300', '86640300', '86640000', '86640300,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640381', '��ͭϿ��', '751600', '86640300', '86640000', '86640300,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640400', '��ԭ��', '756000', '86640000', '86640000', '86640000', '���Ļ���������', '86640522,86640425,86640424,86640423,86640422,86640402,86640401');
INSERT INTO `area` VALUES ('86640401', '��Ͻ��', '756000', '86640400', '86640000', '86640400,86640000', '��ԭ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640402', 'ԭ����', '756000', '86640400', '86640000', '86640400,86640000', '��ԭ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640422', '������', '756200', '86640400', '86640000', '86640400,86640000', '��ԭ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640423', '¡����', '756300', '86640400', '86640000', '86640400,86640000', '��ԭ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640424', '��Դ��', '756400', '86640400', '86640000', '86640400,86640000', '��ԭ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640425', '������', '756500', '86640400', '86640000', '86640400,86640000', '��ԭ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640500', '������', '751700', '86640000', '86640000', '86640000', '���Ļ���������', '86640521,86640502,86640501');
INSERT INTO `area` VALUES ('86640501', '��Ͻ��', '751700', '86640500', '86640000', '86640500,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640502', 'ɳ��ͷ��', '751700', '86640500', '86640000', '86640500,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640521', '������', '751200', '86640500', '86640000', '86640500,86640000', '������,���Ļ���������', null);
INSERT INTO `area` VALUES ('86640522', '��ԭ��', '751800', '86640400', '86640000', '86640400,86640000', '��ԭ��,���Ļ���������', null);
INSERT INTO `area` VALUES ('86650000', '�½�ά���������', null, '0', null, null, null, '86659000,86654300,86654200,86654000,86653200,86653100,86653000,86652900,86652800,86652700,86652300,86652200,86652100,86650200,86650100');
INSERT INTO `area` VALUES ('86650100', '��³ľ����', '830000', '86650000', '86650000', '86650000', '�½�ά���������', '86650121,86650108,86650107,86650106,86650105,86650104,86650103,86650102,86650101');
INSERT INTO `area` VALUES ('86650101', '��Ͻ��', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650102', '��ɽ��', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650103', 'ɳ���Ϳ���', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650104', '������', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650105', 'ˮĥ����', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650106', 'ͷ�ͺ���', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650107', '�������', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650108', '��ɽ��', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650121', '��³ľ����', '830000', '86650100', '86650000', '86650100,86650000', '��³ľ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650200', '����������', '834000', '86650000', '86650000', '86650000', '�½�ά���������', '86650205,86650204,86650203,86650202,86650201');
INSERT INTO `area` VALUES ('86650201', '��Ͻ��', '834000', '86650200', '86650000', '86650200,86650000', '����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650202', '��ɽ����', '838600', '86650200', '86650000', '86650200,86650000', '����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650203', '����������', '834000', '86650200', '86650000', '86650200,86650000', '����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650204', '�׼�̲��', '834000', '86650200', '86650000', '86650200,86650000', '����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86650205', '�ڶ�����', '834000', '86650200', '86650000', '86650200,86650000', '����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652100', '��³������', '838000', '86650000', '86650000', '86650000', '�½�ά���������', '86652123,86652122,86652101');
INSERT INTO `area` VALUES ('86652101', '��³����', '838000', '86652100', '86650000', '86652100,86650000', '��³������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652122', '۷����', '838200', '86652100', '86650000', '86652100,86650000', '��³������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652123', '�п�ѷ��', '838100', '86652100', '86650000', '86652100,86650000', '��³������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652200', '���ܵ���', '839000', '86650000', '86650000', '86650000', '�½�ά���������', '86652223,86652222,86652201');
INSERT INTO `area` VALUES ('86652201', '������', '839000', '86652200', '86650000', '86652200,86650000', '���ܵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652222', '������������������', '839200', '86652200', '86650000', '86652200,86650000', '���ܵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652223', '������', '839300', '86652200', '86650000', '86652200,86650000', '���ܵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652300', '��������������', '831100', '86650000', '86650000', '86650000', '�½�ά���������', '86652328,86652327,86652325,86652324,86652323,86652303,86652302,86652301');
INSERT INTO `area` VALUES ('86652301', '������', '831100', '86652300', '86650000', '86652300,86650000', '��������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652302', '������', '831500', '86652300', '86650000', '86652300,86650000', '��������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652303', '��Ȫ��', '831400', '86652300', '86650000', '86652300,86650000', '��������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652323', '��ͼ����', '831200', '86652300', '86650000', '86652300,86650000', '��������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652324', '����˹��', '832200', '86652300', '86650000', '86652300,86650000', '��������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652325', '��̨��', '831800', '86652300', '86650000', '86652300,86650000', '��������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652327', '��ľ������', '831700', '86652300', '86650000', '86652300,86650000', '��������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652328', 'ľ�ݹ�����������', '831900', '86652300', '86650000', '86652300,86650000', '��������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652700', '���������ɹ�������', '833400', '86650000', '86650000', '86650000', '�½�ά���������', '86652723,86652722,86652701');
INSERT INTO `area` VALUES ('86652701', '������', '833400', '86652700', '86650000', '86652700,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652722', '������', '833300', '86652700', '86650000', '86652700,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652723', '��Ȫ��', '833500', '86652700', '86650000', '86652700,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652800', '���������ɹ�������', '841000', '86650000', '86650000', '86650000', '�½�ά���������', '86652829,86652828,86652827,86652826,86652825,86652824,86652823,86652822,86652801');
INSERT INTO `area` VALUES ('86652801', '�������', '841000', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652822', '��̨��', '841600', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652823', 'ξ����', '841500', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652824', '��Ǽ��', '841800', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652825', '��ĩ��', '841900', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652826', '���Ȼ���������', '841100', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652827', '�;���', '841300', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652828', '��˶��', '841200', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652829', '������', '841400', '86652800', '86650000', '86652800,86650000', '���������ɹ�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652900', '�����յ���', '843000', '86650000', '86650000', '86650000', '�½�ά���������', '86652929,86652928,86652927,86652926,86652925,86652924,86652923,86652922,86652901');
INSERT INTO `area` VALUES ('86652901', '��������', '843000', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652922', '������', '843100', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652923', '�⳵��', '842000', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652924', 'ɳ����', '842200', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652925', '�º���', '842100', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652926', '�ݳ���', '842300', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652927', '��ʲ��', '843400', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652928', '��������', '843200', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86652929', '��ƺ��', '845350', '86652900', '86650000', '86652900,86650000', '�����յ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653000', '�������տ¶�����������', '845350', '86650000', '86650000', '86650000', '�½�ά���������', '86653024,86653023,86653022,86653001');
INSERT INTO `area` VALUES ('86653001', '��ͼʲ��', '845350', '86653000', '86650000', '86653000,86650000', '�������տ¶�����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653022', '��������', '845550', '86653000', '86650000', '86653000,86650000', '�������տ¶�����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653023', '��������', '843500', '86653000', '86650000', '86653000,86650000', '�������տ¶�����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653024', '��ǡ��', '845450', '86653000', '86650000', '86653000,86650000', '�������տ¶�����������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653100', '��ʲ����', '844000', '86650000', '86650000', '86650000', '�½�ά���������', '86653131,86653130,86653129,86653128,86653127,86653126,86653125,86653124,86653123,86653122,86653121,86653101');
INSERT INTO `area` VALUES ('86653101', '��ʲ��', '844000', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653121', '�踽��', '844100', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653122', '������', '844200', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653123', 'Ӣ��ɳ��', '844500', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653124', '������', '844800', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653125', 'ɯ����', '844700', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653126', 'Ҷ����', '844900', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653127', '�������', '844600', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653128', '���պ���', '844400', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653129', '٤ʦ��', '844300', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653130', '�ͳ���', '843800', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653131', '��ʲ�����������������', '845250', '86653100', '86650000', '86653100,86650000', '��ʲ����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653200', '�������', '848000', '86650000', '86650000', '86650000', '�½�ά���������', '86653227,86653226,86653225,86653224,86653223,86653222,86653221,86653201');
INSERT INTO `area` VALUES ('86653201', '������', '848000', '86653200', '86650000', '86653200,86650000', '�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653221', '������', '848000', '86653200', '86650000', '86653200,86650000', '�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653222', 'ī����', '848100', '86653200', '86650000', '86653200,86650000', '�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653223', 'Ƥɽ��', '845150', '86653200', '86650000', '86653200,86650000', '�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653224', '������', '848200', '86653200', '86650000', '86653200,86650000', '�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653225', '������', '848300', '86653200', '86650000', '86653200,86650000', '�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653226', '������', '848400', '86653200', '86650000', '86653200,86650000', '�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86653227', '�����', '848500', '86653200', '86650000', '86653200,86650000', '�������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654000', '���������������', '835000', '86650000', '86650000', '86650000', '�½�ά���������', '86654028,86654027,86654026,86654025,86654024,86654023,86654022,86654021,86654003,86654002');
INSERT INTO `area` VALUES ('86654002', '������', '835000', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654003', '������', '833200', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654021', '������', '835100', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654022', '�첼�������������', '835300', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654023', '������', '835200', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654024', '������', '835400', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654025', '��Դ��', '835800', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654026', '������', '835600', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654027', '�ؿ�˹��', '835500', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654028', '���տ���', '835700', '86654000', '86650000', '86654000,86650000', '���������������,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654200', '���ǵ���', '834700', '86650000', '86650000', '86650000', '�½�ά���������', '86654226,86654225,86654224,86654223,86654221,86654202,86654201');
INSERT INTO `area` VALUES ('86654201', '������', '834300', '86654200', '86650000', '86654200,86650000', '���ǵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654202', '������', '833300', '86654200', '86650000', '86654200,86650000', '���ǵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654221', '������', '834600', '86654200', '86650000', '86654200,86650000', '���ǵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654223', 'ɳ����', '832100', '86654200', '86650000', '86654200,86650000', '���ǵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654224', '������', '834500', '86654200', '86650000', '86654200,86650000', '���ǵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654225', 'ԣ����', '834800', '86654200', '86650000', '86654200,86650000', '���ǵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654226', '�Ͳ��������ɹ�������', '834400', '86654200', '86650000', '86654200,86650000', '���ǵ���,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654300', '����̩����', '836500', '86650000', '86650000', '86650000', '�½�ά���������', '86654326,86654325,86654324,86654323,86654322,86654321,86654301');
INSERT INTO `area` VALUES ('86654301', '����̩��', '836500', '86654300', '86650000', '86654300,86650000', '����̩����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654321', '��������', '836600', '86654300', '86650000', '86654300,86650000', '����̩����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654322', '������', '836100', '86654300', '86650000', '86654300,86650000', '����̩����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654323', '������', '836400', '86654300', '86650000', '86654300,86650000', '����̩����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654324', '���ͺ���', '836700', '86654300', '86650000', '86654300,86650000', '����̩����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654325', '�����', '836200', '86654300', '86650000', '86654300,86650000', '����̩����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86654326', '��ľ����', '836800', '86654300', '86650000', '86654300,86650000', '����̩����,�½�ά���������', null);
INSERT INTO `area` VALUES ('86659000', 'ʡֱϽ������λ', '832000', '86650000', '86650000', '86650000', '�½�ά���������', '86659004,86659003,86659002,86659001');
INSERT INTO `area` VALUES ('86659001', 'ʯ������', '832000', '86659000', '86650000', '86659000,86650000', 'ʡֱϽ������λ,�½�ά���������', null);
INSERT INTO `area` VALUES ('86659002', '��������', '843300', '86659000', '86650000', '86659000,86650000', 'ʡֱϽ������λ,�½�ά���������', null);
INSERT INTO `area` VALUES ('86659003', 'ͼľ�����', '844000', '86659000', '86650000', '86659000,86650000', 'ʡֱϽ������λ,�½�ά���������', null);
INSERT INTO `area` VALUES ('86659004', '�������', '831300', '86659000', '86650000', '86659000,86650000', 'ʡֱϽ������λ,�½�ά���������', null);
INSERT INTO `area` VALUES ('86710000', '̨��ʡ', null, '0', null, null, null, null);
INSERT INTO `area` VALUES ('86810000', '����ر�������', null, '0', null, null, null, null);
INSERT INTO `area` VALUES ('86820000', '�����ر�������', null, '0', null, null, null, null);
