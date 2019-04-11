/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : pjs

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-12 01:35:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bro_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `bro_admin_log`;
CREATE TABLE `bro_admin_log` (
  `log_id` bigint(16) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `admin_id` int(10) DEFAULT NULL COMMENT '管理员id',
  `log_info` varchar(255) DEFAULT NULL COMMENT '日志描述',
  `log_ip` varchar(30) DEFAULT NULL COMMENT 'ip地址',
  `log_url` varchar(50) DEFAULT NULL COMMENT 'url',
  `log_time` int(10) DEFAULT NULL COMMENT '日志时间',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bro_admin_log
-- ----------------------------
INSERT INTO `bro_admin_log` VALUES ('1', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548165162');
INSERT INTO `bro_admin_log` VALUES ('2', '1', '添加病史(ID:Array)', '127.0.0.1', '/user/medical_history/delete.html', '1548165762');
INSERT INTO `bro_admin_log` VALUES ('3', '1', '添加病史(ID:9,8)', '127.0.0.1', '/user/medical_history/delete.html', '1548165810');
INSERT INTO `bro_admin_log` VALUES ('4', '1', '添加病史(ID:1)', '127.0.0.1', '/user/medical_history/addpost.html', '1548167395');
INSERT INTO `bro_admin_log` VALUES ('5', '1', '添加病史(ID:1)', '127.0.0.1', '/user/body_check/addpost.html', '1548169061');
INSERT INTO `bro_admin_log` VALUES ('6', '1', '添加病史(ID:1)', '127.0.0.1', '/user/body_check/addpost.html', '1548169160');
INSERT INTO `bro_admin_log` VALUES ('7', '1', '添加用药史(ID:1)', '127.0.0.1', '/user/drug_history/addpost.html', '1548170714');
INSERT INTO `bro_admin_log` VALUES ('8', '1', '删除用药史(ID:3)', '127.0.0.1', '/user/drug_history/delete/id/3.html', '1548170729');
INSERT INTO `bro_admin_log` VALUES ('9', '15', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548172006');
INSERT INTO `bro_admin_log` VALUES ('10', '15', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548173389');
INSERT INTO `bro_admin_log` VALUES ('11', '15', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548173649');
INSERT INTO `bro_admin_log` VALUES ('12', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548175651');
INSERT INTO `bro_admin_log` VALUES ('13', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548242562');
INSERT INTO `bro_admin_log` VALUES ('14', '1', '添加病史(ID:1)', '127.0.0.1', '/user/medical_history/addpost.html', '1548252442');
INSERT INTO `bro_admin_log` VALUES ('15', '1', '编辑病史(ID:13)', '127.0.0.1', '/user/medical_history/addpost.html', '1548254240');
INSERT INTO `bro_admin_log` VALUES ('16', '1', '编辑病史(ID:13)', '127.0.0.1', '/user/medical_history/addpost.html', '1548254300');
INSERT INTO `bro_admin_log` VALUES ('17', '1', '添加病史(ID:1)', '127.0.0.1', '/user/body_check/addpost.html', '1548258346');
INSERT INTO `bro_admin_log` VALUES ('18', '1', '添加病史(ID:1)', '127.0.0.1', '/user/body_check/addpost.html', '1548258730');
INSERT INTO `bro_admin_log` VALUES ('19', '1', '编辑病史(ID:10)', '127.0.0.1', '/user/body_check/addpost.html', '1548259058');
INSERT INTO `bro_admin_log` VALUES ('20', '1', '编辑病史(ID:10)', '127.0.0.1', '/user/body_check/addpost.html', '1548259092');
INSERT INTO `bro_admin_log` VALUES ('21', '1', '添加辅助检查(ID:1)', '127.0.0.1', '/user/assist_check/addpost.html', '1548262351');
INSERT INTO `bro_admin_log` VALUES ('22', '1', '编辑辅助检查(ID:7)', '127.0.0.1', '/user/assist_check/addpost.html', '1548262690');
INSERT INTO `bro_admin_log` VALUES ('23', '1', '编辑辅助检查(ID:7)', '127.0.0.1', '/user/assist_check/addpost.html', '1548262711');
INSERT INTO `bro_admin_log` VALUES ('24', '1', '编辑辅助检查(ID:7)', '127.0.0.1', '/user/assist_check/addpost.html', '1548262726');
INSERT INTO `bro_admin_log` VALUES ('25', '1', '添加化验检查(ID:1)', '127.0.0.1', '/user/assay_check/addpost.html', '1548265673');
INSERT INTO `bro_admin_log` VALUES ('26', '1', '编辑化验检查(ID:8)', '127.0.0.1', '/user/assay_check/addpost.html', '1548265704');
INSERT INTO `bro_admin_log` VALUES ('27', '1', '删除化验检查(ID:8,7)', '127.0.0.1', '/user/assay_check/delete.html', '1548265949');
INSERT INTO `bro_admin_log` VALUES ('28', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548328435');
INSERT INTO `bro_admin_log` VALUES ('29', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/center_diagnose/addpost.html', '1548331162');
INSERT INTO `bro_admin_log` VALUES ('30', '1', '编辑中心名称及诊断(ID:9)', '127.0.0.1', '/user/center_diagnose/addpost.html', '1548331173');
INSERT INTO `bro_admin_log` VALUES ('31', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548337596');
INSERT INTO `bro_admin_log` VALUES ('32', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548337716');
INSERT INTO `bro_admin_log` VALUES ('33', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548337725');
INSERT INTO `bro_admin_log` VALUES ('34', '1', '编辑中心名称及诊断(ID:9)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548337732');
INSERT INTO `bro_admin_log` VALUES ('35', '1', '编辑中心名称及诊断(ID:9)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548337746');
INSERT INTO `bro_admin_log` VALUES ('36', '1', '删除中心名称及诊断(ID:6)', '127.0.0.1', '/user/scale/delete/id/6/inc_type/mds_updrs.html', '1548337759');
INSERT INTO `bro_admin_log` VALUES ('37', '1', '删除中心名称及诊断(ID:9,8,7)', '127.0.0.1', '/user/scale/delete/inc_type/mds_updrs.html', '1548337766');
INSERT INTO `bro_admin_log` VALUES ('38', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548337777');
INSERT INTO `bro_admin_log` VALUES ('39', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548337783');
INSERT INTO `bro_admin_log` VALUES ('40', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345289');
INSERT INTO `bro_admin_log` VALUES ('41', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345301');
INSERT INTO `bro_admin_log` VALUES ('42', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345483');
INSERT INTO `bro_admin_log` VALUES ('43', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345494');
INSERT INTO `bro_admin_log` VALUES ('44', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345507');
INSERT INTO `bro_admin_log` VALUES ('45', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345553');
INSERT INTO `bro_admin_log` VALUES ('46', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345748');
INSERT INTO `bro_admin_log` VALUES ('47', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345761');
INSERT INTO `bro_admin_log` VALUES ('48', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345816');
INSERT INTO `bro_admin_log` VALUES ('49', '1', '编辑中心名称及诊断(ID:12)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1548345826');
INSERT INTO `bro_admin_log` VALUES ('50', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1548347262');
INSERT INTO `bro_admin_log` VALUES ('51', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1548347290');
INSERT INTO `bro_admin_log` VALUES ('52', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1548347308');
INSERT INTO `bro_admin_log` VALUES ('53', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1548347343');
INSERT INTO `bro_admin_log` VALUES ('54', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548413694');
INSERT INTO `bro_admin_log` VALUES ('55', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/nmss.html', '1548422293');
INSERT INTO `bro_admin_log` VALUES ('56', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/nmss.html', '1548422506');
INSERT INTO `bro_admin_log` VALUES ('57', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/nmss.html', '1548422696');
INSERT INTO `bro_admin_log` VALUES ('58', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/mmse.html', '1548423911');
INSERT INTO `bro_admin_log` VALUES ('59', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/mmse.html', '1548424019');
INSERT INTO `bro_admin_log` VALUES ('60', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/mmse.html', '1548424032');
INSERT INTO `bro_admin_log` VALUES ('61', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/mmse.html', '1548424212');
INSERT INTO `bro_admin_log` VALUES ('62', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548424968');
INSERT INTO `bro_admin_log` VALUES ('63', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548424993');
INSERT INTO `bro_admin_log` VALUES ('64', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548425042');
INSERT INTO `bro_admin_log` VALUES ('65', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548425112');
INSERT INTO `bro_admin_log` VALUES ('66', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548426080');
INSERT INTO `bro_admin_log` VALUES ('67', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548426172');
INSERT INTO `bro_admin_log` VALUES ('68', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548426202');
INSERT INTO `bro_admin_log` VALUES ('69', '1', '编辑中心名称及诊断(ID:8)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548426278');
INSERT INTO `bro_admin_log` VALUES ('70', '1', '编辑中心名称及诊断(ID:8)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1548426427');
INSERT INTO `bro_admin_log` VALUES ('71', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/hama.html', '1548428421');
INSERT INTO `bro_admin_log` VALUES ('72', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/hama.html', '1548428464');
INSERT INTO `bro_admin_log` VALUES ('73', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/maes.html', '1548429661');
INSERT INTO `bro_admin_log` VALUES ('74', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/maes.html', '1548429677');
INSERT INTO `bro_admin_log` VALUES ('75', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1548432631');
INSERT INTO `bro_admin_log` VALUES ('76', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1548432660');
INSERT INTO `bro_admin_log` VALUES ('77', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1548432725');
INSERT INTO `bro_admin_log` VALUES ('78', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1548432786');
INSERT INTO `bro_admin_log` VALUES ('79', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1548432809');
INSERT INTO `bro_admin_log` VALUES ('80', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/ess.html', '1548433580');
INSERT INTO `bro_admin_log` VALUES ('81', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/ess.html', '1548433594');
INSERT INTO `bro_admin_log` VALUES ('82', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/ess.html', '1548433620');
INSERT INTO `bro_admin_log` VALUES ('83', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/fai.html', '1548434931');
INSERT INTO `bro_admin_log` VALUES ('84', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/npi.html', '1548436172');
INSERT INTO `bro_admin_log` VALUES ('85', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/npi.html', '1548436317');
INSERT INTO `bro_admin_log` VALUES ('86', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/npi.html', '1548436437');
INSERT INTO `bro_admin_log` VALUES ('87', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/npi.html', '1548436556');
INSERT INTO `bro_admin_log` VALUES ('88', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/npi.html', '1548436577');
INSERT INTO `bro_admin_log` VALUES ('89', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/pdql.html', '1548437518');
INSERT INTO `bro_admin_log` VALUES ('90', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/adl.html', '1548437939');
INSERT INTO `bro_admin_log` VALUES ('91', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548504759');
INSERT INTO `bro_admin_log` VALUES ('92', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1548509581');
INSERT INTO `bro_admin_log` VALUES ('93', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1548509812');
INSERT INTO `bro_admin_log` VALUES ('94', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1548509847');
INSERT INTO `bro_admin_log` VALUES ('95', '1', '编辑中心名称及诊断(ID:7)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1548509863');
INSERT INTO `bro_admin_log` VALUES ('96', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1548509878');
INSERT INTO `bro_admin_log` VALUES ('97', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/moca.html', '1548519804');
INSERT INTO `bro_admin_log` VALUES ('98', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1548819283');
INSERT INTO `bro_admin_log` VALUES ('99', '1', '添加中心名称及诊断(ID:1)', '127.0.0.1', '/user/scale/addpost/inc_type/moca.html', '1548828975');
INSERT INTO `bro_admin_log` VALUES ('100', '1', '编辑中心名称及诊断(ID:8)', '127.0.0.1', '/user/scale/addpost/inc_type/moca.html', '1548829153');
INSERT INTO `bro_admin_log` VALUES ('101', '1', '删除化验检查(ID:8)', '127.0.0.1', '/user/assay_check/delete/id/8.html', '1548835374');
INSERT INTO `bro_admin_log` VALUES ('102', '1', '删除患者(ID:8)', '127.0.0.1', '/user/admin_index/delete/id/8.html', '1548835530');
INSERT INTO `bro_admin_log` VALUES ('103', '1', '后台登录', '171.107.45.228', '/admin/public/dologin.html', '1548853672');
INSERT INTO `bro_admin_log` VALUES ('104', '1', '后台登录', '111.164.176.17', '/admin/public/dologin.html', '1548854182');
INSERT INTO `bro_admin_log` VALUES ('105', '1', '后台登录', '111.164.176.17', '/admin/public/dologin.html', '1548898446');
INSERT INTO `bro_admin_log` VALUES ('106', '1', '添加病史(ID:1)', '111.164.176.17', '/user/medical_history/addpost.html', '1548900078');
INSERT INTO `bro_admin_log` VALUES ('107', '1', '后台登录', '111.164.176.17', '/admin/public/dologin.html', '1548982934');
INSERT INTO `bro_admin_log` VALUES ('108', '1', '添加用药史(ID:1)', '111.164.176.17', '/user/drug_history/addpost.html', '1548988832');
INSERT INTO `bro_admin_log` VALUES ('109', '1', '添加病史(ID:1)', '111.164.176.17', '/user/medical_history/addpost.html', '1548989726');
INSERT INTO `bro_admin_log` VALUES ('110', '1', '添加病史(ID:1)', '111.164.176.17', '/user/medical_history/addpost.html', '1548991175');
INSERT INTO `bro_admin_log` VALUES ('111', '1', '添加主要病史及症状(ID:1)', '111.164.176.17', '/user/major_medical/addpost.html', '1548991391');
INSERT INTO `bro_admin_log` VALUES ('112', '1', '编辑病史(ID:16)', '171.107.45.228', '/user/medical_history/addpost.html', '1548997443');
INSERT INTO `bro_admin_log` VALUES ('113', '1', '编辑病史(ID:16)', '171.107.45.228', '/user/medical_history/addpost.html', '1548997453');
INSERT INTO `bro_admin_log` VALUES ('114', '1', '编辑病史(ID:15)', '171.107.45.228', '/user/medical_history/addpost.html', '1549001018');
INSERT INTO `bro_admin_log` VALUES ('115', '1', '编辑主要病史及症状(ID:11)', '171.107.45.228', '/user/major_medical/addpost.html', '1549001160');
INSERT INTO `bro_admin_log` VALUES ('116', '1', '后台登录', '111.164.179.42', '/admin/public/dologin.html', '1549847512');
INSERT INTO `bro_admin_log` VALUES ('117', '1', '添加病史(ID:1)', '111.164.179.42', '/user/medical_history/addpost.html', '1549854822');
INSERT INTO `bro_admin_log` VALUES ('118', '1', '编辑病史(ID:17)', '111.164.179.42', '/user/medical_history/addpost.html', '1549854839');
INSERT INTO `bro_admin_log` VALUES ('119', '1', '添加主要病史及症状(ID:1)', '111.164.179.42', '/user/major_medical/addpost.html', '1549856381');
INSERT INTO `bro_admin_log` VALUES ('120', '1', '添加辅助检查(ID:1)', '111.164.179.42', '/user/assist_check/addpost.html', '1549856660');
INSERT INTO `bro_admin_log` VALUES ('121', '1', '编辑病史(ID:17)', '111.164.179.42', '/user/medical_history/addpost.html', '1549856942');
INSERT INTO `bro_admin_log` VALUES ('122', '1', '添加化验检查(ID:1)', '111.164.179.42', '/user/assay_check/addpost.html', '1549856966');
INSERT INTO `bro_admin_log` VALUES ('123', '1', '添加用药史(ID:1)', '111.164.179.42', '/user/drug_history/addpost.html', '1549857000');
INSERT INTO `bro_admin_log` VALUES ('124', '1', '添加中心名称及诊断(ID:1)', '111.164.179.42', '/user/center_diagnose/addpost.html', '1549857331');
INSERT INTO `bro_admin_log` VALUES ('125', '1', '后台登录', '120.230.125.234', '/admin/public/dologin.html', '1549897896');
INSERT INTO `bro_admin_log` VALUES ('126', '1', '编辑辅助检查(ID:8)', '120.230.125.234', '/user/assist_check/addpost.html', '1549898244');
INSERT INTO `bro_admin_log` VALUES ('127', '1', '添加病史(ID:1)', '120.230.125.234', '/user/medical_history/addpost.html', '1549899075');
INSERT INTO `bro_admin_log` VALUES ('128', '1', '编辑病史(ID:17)', '120.230.125.234', '/user/medical_history/addpost.html', '1549899149');
INSERT INTO `bro_admin_log` VALUES ('129', '1', '编辑用药史(ID:11)', '120.230.125.234', '/user/drug_history/addpost.html', '1549899467');
INSERT INTO `bro_admin_log` VALUES ('130', '1', '添加病史(ID:1)', '120.230.125.234', '/user/medical_history/addpost.html', '1549899507');
INSERT INTO `bro_admin_log` VALUES ('131', '1', '编辑病史(ID:19)', '120.230.125.234', '/user/medical_history/addpost.html', '1549899535');
INSERT INTO `bro_admin_log` VALUES ('132', '1', '添加病史(ID:1)', '120.230.125.234', '/user/medical_history/addpost.html', '1549899652');
INSERT INTO `bro_admin_log` VALUES ('133', '1', '编辑病史(ID:20)', '120.230.125.234', '/user/medical_history/addpost.html', '1549899679');
INSERT INTO `bro_admin_log` VALUES ('134', '1', '编辑辅助检查(ID:8)', '120.230.125.234', '/user/assist_check/addpost.html', '1549899956');
INSERT INTO `bro_admin_log` VALUES ('135', '1', '编辑病史(ID:10)', '120.230.125.234', '/user/body_check/addpost.html', '1549900360');
INSERT INTO `bro_admin_log` VALUES ('136', '1', '添加病史(ID:1)', '120.230.125.234', '/user/body_check/addpost.html', '1549900376');
INSERT INTO `bro_admin_log` VALUES ('137', '1', '编辑辅助检查(ID:8)', '120.230.125.234', '/user/assist_check/addpost.html', '1549900496');
INSERT INTO `bro_admin_log` VALUES ('138', '1', '编辑化验检查(ID:9)', '120.230.125.234', '/user/assay_check/addpost.html', '1549900503');
INSERT INTO `bro_admin_log` VALUES ('139', '1', '后台登录', '111.164.179.42', '/admin/public/dologin.html', '1549931863');
INSERT INTO `bro_admin_log` VALUES ('140', '1', '添加辅助检查(ID:1)', '111.164.179.42', '/user/assist_check/addpost.html', '1549932104');
INSERT INTO `bro_admin_log` VALUES ('141', '1', '编辑中心名称及诊断(ID:12)', '111.164.179.42', '/user/scale/addpost/inc_type/mds_updrs.html', '1549932968');
INSERT INTO `bro_admin_log` VALUES ('142', '1', '添加中心名称及诊断(ID:1)', '111.164.179.42', '/user/scale/addpost/inc_type/mds_updrs.html', '1549935066');
INSERT INTO `bro_admin_log` VALUES ('143', '1', '编辑中心名称及诊断(ID:7)', '111.164.179.42', '/user/scale/addpost/inc_type/sc_en.html', '1549935160');
INSERT INTO `bro_admin_log` VALUES ('144', '1', '添加中心名称及诊断(ID:1)', '111.164.179.42', '/user/scale/addpost/inc_type/nmss.html', '1549935373');
INSERT INTO `bro_admin_log` VALUES ('145', '1', '编辑中心名称及诊断(ID:9)', '111.164.179.42', '/user/scale/addpost/inc_type/nmss.html', '1549935390');
INSERT INTO `bro_admin_log` VALUES ('146', '1', '删除患者(ID:10)', '111.164.179.42', '/user/admin_index/delete/id/10.html', '1549936097');
INSERT INTO `bro_admin_log` VALUES ('147', '1', '后台登录', '106.121.143.124', '/admin/public/dologin.html', '1549938355');
INSERT INTO `bro_admin_log` VALUES ('148', '1', '后台登录', '120.230.125.234', '/admin/public/dologin.html', '1549984313');
INSERT INTO `bro_admin_log` VALUES ('149', '1', '编辑中心名称及诊断(ID:8)', '120.230.125.234', '/user/scale/addpost/inc_type/hama.html', '1549989256');
INSERT INTO `bro_admin_log` VALUES ('150', '1', '后台登录', '120.230.125.234', '/admin/public/dologin.html', '1549989384');
INSERT INTO `bro_admin_log` VALUES ('151', '1', '后台登录', '111.164.179.42', '/admin/public/dologin.html', '1550019392');
INSERT INTO `bro_admin_log` VALUES ('152', '1', '后台登录', '120.230.125.217', '/admin/public/dologin.html', '1550072886');
INSERT INTO `bro_admin_log` VALUES ('153', '1', '编辑中心名称及诊断(ID:7)', '120.230.125.217', '/user/scale/addpost/inc_type/npi.html', '1550072928');
INSERT INTO `bro_admin_log` VALUES ('154', '14', '后台登录', '120.230.125.217', '/admin/public/dologin.html', '1550073869');
INSERT INTO `bro_admin_log` VALUES ('155', '15', '后台登录', '120.230.125.217', '/admin/public/dologin.html', '1550073912');
INSERT INTO `bro_admin_log` VALUES ('156', '15', '添加中心名称及诊断(ID:1)', '120.230.125.217', '/user/scale/addpost/inc_type/mds_updrs.html', '1550073962');
INSERT INTO `bro_admin_log` VALUES ('157', '1', '后台登录', '111.164.179.42', '/admin/public/dologin.html', '1550121629');
INSERT INTO `bro_admin_log` VALUES ('158', '1', '后台登录', '113.108.141.170', '/admin/public/dologin.html', '1550131266');
INSERT INTO `bro_admin_log` VALUES ('159', '1', '编辑中心名称及诊断(ID:7)', '113.108.141.170', '/user/scale/addpost/inc_type/npi.html', '1550131961');
INSERT INTO `bro_admin_log` VALUES ('160', '1', '编辑中心名称及诊断(ID:13)', '113.108.141.170', '/user/scale/addpost/inc_type/mds_updrs.html', '1550132107');
INSERT INTO `bro_admin_log` VALUES ('161', '1', '后台登录', '111.164.179.42', '/admin/public/dologin.html', '1550279011');
INSERT INTO `bro_admin_log` VALUES ('162', '1', '编辑中心名称及诊断(ID:11)', '111.164.179.42', '/user/scale/addpost/inc_type/mds_updrs.html', '1550279075');
INSERT INTO `bro_admin_log` VALUES ('163', '1', '编辑中心名称及诊断(ID:12)', '111.164.179.42', '/user/scale/addpost/inc_type/mds_updrs.html', '1550279903');
INSERT INTO `bro_admin_log` VALUES ('164', '1', '编辑中心名称及诊断(ID:13)', '111.164.179.42', '/user/scale/addpost/inc_type/mds_updrs.html', '1550280051');
INSERT INTO `bro_admin_log` VALUES ('165', '1', '后台登录', '120.230.125.149', '/admin/public/dologin.html', '1550328393');
INSERT INTO `bro_admin_log` VALUES ('166', '1', '编辑中心名称及诊断(ID:13)', '120.230.125.149', '/user/scale/addpost/inc_type/mds_updrs.html', '1550328496');
INSERT INTO `bro_admin_log` VALUES ('167', '1', '编辑中心名称及诊断(ID:7)', '120.230.125.149', '/user/scale/addpost/inc_type/npi.html', '1550330537');
INSERT INTO `bro_admin_log` VALUES ('168', '1', '编辑中心名称及诊断(ID:7)', '120.230.125.149', '/user/scale/addpost/inc_type/npi.html', '1550330559');
INSERT INTO `bro_admin_log` VALUES ('169', '1', '编辑中心名称及诊断(ID:7)', '120.230.125.149', '/user/scale/addpost/inc_type/npi.html', '1550330906');
INSERT INTO `bro_admin_log` VALUES ('170', '1', '编辑中心名称及诊断(ID:7)', '120.230.125.149', '/user/scale/addpost/inc_type/sc_en.html', '1550415078');
INSERT INTO `bro_admin_log` VALUES ('171', '1', '编辑中心名称及诊断(ID:8)', '120.230.125.149', '/user/scale/addpost/inc_type/hamd.html', '1550415840');
INSERT INTO `bro_admin_log` VALUES ('172', '1', '编辑中心名称及诊断(ID:8)', '120.230.125.149', '/user/scale/addpost/inc_type/hamd.html', '1550415859');
INSERT INTO `bro_admin_log` VALUES ('173', '1', '编辑中心名称及诊断(ID:8)', '120.230.125.149', '/user/scale/addpost/inc_type/hama.html', '1550416199');
INSERT INTO `bro_admin_log` VALUES ('174', '1', '添加中心名称及诊断(ID:1)', '120.230.125.149', '/user/scale/addpost/inc_type/maes.html', '1550416349');
INSERT INTO `bro_admin_log` VALUES ('175', '1', '编辑中心名称及诊断(ID:8)', '120.230.125.149', '/user/scale/addpost/inc_type/ess.html', '1550416506');
INSERT INTO `bro_admin_log` VALUES ('176', '1', '编辑中心名称及诊断(ID:7)', '120.230.125.149', '/user/scale/addpost/inc_type/fai.html', '1550416601');
INSERT INTO `bro_admin_log` VALUES ('177', '1', '编辑中心名称及诊断(ID:7)', '120.230.125.149', '/user/scale/addpost/inc_type/fai.html', '1550416616');
INSERT INTO `bro_admin_log` VALUES ('178', '1', '添加中心名称及诊断(ID:1)', '120.230.125.149', '/user/scale/addpost/inc_type/pdql.html', '1550416750');
INSERT INTO `bro_admin_log` VALUES ('179', '1', '编辑中心名称及诊断(ID:7)', '120.230.125.149', '/user/scale/addpost/inc_type/adl.html', '1550416822');
INSERT INTO `bro_admin_log` VALUES ('180', '1', '后台登录', '36.106.253.107', '/admin/public/dologin.html', '1550469692');
INSERT INTO `bro_admin_log` VALUES ('181', '1', '后台登录', '120.230.125.149', '/admin/public/dologin.html', '1550491800');
INSERT INTO `bro_admin_log` VALUES ('182', '1', '编辑中心名称及诊断(ID:8)', '120.230.125.149', '/user/scale/addpost/inc_type/hamd.html', '1550492443');
INSERT INTO `bro_admin_log` VALUES ('183', '1', '编辑中心名称及诊断(ID:8)', '120.230.125.149', '/user/scale/addpost/inc_type/hamd.html', '1550492462');
INSERT INTO `bro_admin_log` VALUES ('184', '1', '后台登录', '36.106.253.107', '/admin/public/dologin.html', '1550542095');
INSERT INTO `bro_admin_log` VALUES ('185', '1', '后台登录', '111.164.179.140', '/admin/public/dologin.html', '1550542942');
INSERT INTO `bro_admin_log` VALUES ('186', '1', '后台登录', '36.106.253.107', '/admin/public/dologin.html', '1550565925');
INSERT INTO `bro_admin_log` VALUES ('187', '1', '后台登录', '36.106.253.107', '/admin/public/dologin.html', '1550575520');
INSERT INTO `bro_admin_log` VALUES ('188', '1', '后台登录', '36.106.253.107', '/admin/public/dologin.html', '1550583352');
INSERT INTO `bro_admin_log` VALUES ('189', '1', '后台登录', '115.24.144.170', '/admin/public/dologin.html', '1550661160');
INSERT INTO `bro_admin_log` VALUES ('190', '1', '后台登录', '223.73.65.67', '/admin/public/dologin.html', '1550668428');
INSERT INTO `bro_admin_log` VALUES ('191', '1', '编辑中心名称及诊断(ID:8)', '223.73.65.67', '/user/scale/addpost/inc_type/mmse.html', '1550669156');
INSERT INTO `bro_admin_log` VALUES ('192', '1', '编辑中心名称及诊断(ID:8)', '223.73.65.67', '/user/scale/addpost/inc_type/mmse.html', '1550669216');
INSERT INTO `bro_admin_log` VALUES ('193', '1', '编辑中心名称及诊断(ID:7)', '223.73.65.67', '/user/scale/addpost/inc_type/psqi.html', '1550669711');
INSERT INTO `bro_admin_log` VALUES ('194', '1', '编辑中心名称及诊断(ID:8)', '223.73.65.67', '/user/scale/addpost/inc_type/moca.html', '1550672164');
INSERT INTO `bro_admin_log` VALUES ('195', '1', '编辑中心名称及诊断(ID:8)', '223.73.65.67', '/user/scale/addpost/inc_type/moca.html', '1550672206');
INSERT INTO `bro_admin_log` VALUES ('196', '1', '编辑中心名称及诊断(ID:8)', '223.73.65.67', '/user/scale/addpost/inc_type/moca.html', '1550672234');
INSERT INTO `bro_admin_log` VALUES ('197', '1', '编辑中心名称及诊断(ID:8)', '223.73.65.67', '/user/scale/addpost/inc_type/moca.html', '1550672283');
INSERT INTO `bro_admin_log` VALUES ('198', '1', '编辑中心名称及诊断(ID:7)', '223.73.65.67', '/user/scale/addpost/inc_type/adl.html', '1550672334');
INSERT INTO `bro_admin_log` VALUES ('199', '1', '编辑中心名称及诊断(ID:13)', '223.73.65.67', '/user/scale/addpost/inc_type/mds_updrs.html', '1550672554');
INSERT INTO `bro_admin_log` VALUES ('200', '1', '后台登录', '111.164.179.140', '/admin/public/dologin.html', '1550728360');
INSERT INTO `bro_admin_log` VALUES ('201', '1', '编辑中心名称及诊断(ID:12)', '111.164.179.140', '/user/scale/addpost/inc_type/mds_updrs.html', '1550728794');
INSERT INTO `bro_admin_log` VALUES ('202', '1', '编辑中心名称及诊断(ID:11)', '111.164.179.140', '/user/scale/addpost/inc_type/mds_updrs.html', '1550728809');
INSERT INTO `bro_admin_log` VALUES ('203', '1', '删除中心名称及诊断(ID:10)', '111.164.179.140', '/user/scale/delete/id/10/inc_type/mds_updrs.html', '1550728815');
INSERT INTO `bro_admin_log` VALUES ('204', '1', '编辑中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/addpost/inc_type/sc_en.html', '1550728829');
INSERT INTO `bro_admin_log` VALUES ('205', '1', '删除中心名称及诊断(ID:8)', '111.164.179.140', '/user/scale/delete/id/8/inc_type/nmss.html', '1550728836');
INSERT INTO `bro_admin_log` VALUES ('206', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/nmss.html', '1550728840');
INSERT INTO `bro_admin_log` VALUES ('207', '1', '编辑中心名称及诊断(ID:9)', '111.164.179.140', '/user/scale/addpost/inc_type/nmss.html', '1550728978');
INSERT INTO `bro_admin_log` VALUES ('208', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/mmse.html', '1550728985');
INSERT INTO `bro_admin_log` VALUES ('209', '1', '编辑中心名称及诊断(ID:8)', '111.164.179.140', '/user/scale/addpost/inc_type/mmse.html', '1550729000');
INSERT INTO `bro_admin_log` VALUES ('210', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/moca.html', '1550729014');
INSERT INTO `bro_admin_log` VALUES ('211', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/hamd.html', '1550729122');
INSERT INTO `bro_admin_log` VALUES ('212', '1', '编辑中心名称及诊断(ID:8)', '111.164.179.140', '/user/scale/addpost/inc_type/hamd.html', '1550729134');
INSERT INTO `bro_admin_log` VALUES ('213', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/hama.html', '1550729142');
INSERT INTO `bro_admin_log` VALUES ('214', '1', '编辑中心名称及诊断(ID:8)', '111.164.179.140', '/user/scale/addpost/inc_type/hama.html', '1550729151');
INSERT INTO `bro_admin_log` VALUES ('215', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/maes.html', '1550729159');
INSERT INTO `bro_admin_log` VALUES ('216', '1', '编辑中心名称及诊断(ID:8)', '111.164.179.140', '/user/scale/addpost/inc_type/maes.html', '1550729173');
INSERT INTO `bro_admin_log` VALUES ('217', '1', '编辑中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/addpost/inc_type/psqi.html', '1550729197');
INSERT INTO `bro_admin_log` VALUES ('218', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/ess.html', '1550729208');
INSERT INTO `bro_admin_log` VALUES ('219', '1', '编辑中心名称及诊断(ID:8)', '111.164.179.140', '/user/scale/addpost/inc_type/ess.html', '1550729217');
INSERT INTO `bro_admin_log` VALUES ('220', '1', '编辑中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/addpost/inc_type/fai.html', '1550729229');
INSERT INTO `bro_admin_log` VALUES ('221', '1', '编辑中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/addpost/inc_type/npi.html', '1550729322');
INSERT INTO `bro_admin_log` VALUES ('222', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/pdql.html', '1550729330');
INSERT INTO `bro_admin_log` VALUES ('223', '1', '编辑中心名称及诊断(ID:8)', '111.164.179.140', '/user/scale/addpost/inc_type/pdql.html', '1550729340');
INSERT INTO `bro_admin_log` VALUES ('224', '1', '编辑中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/addpost/inc_type/adl.html', '1550729355');
INSERT INTO `bro_admin_log` VALUES ('225', '1', '删除中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/delete/id/7/inc_type/dlb.html', '1550729362');
INSERT INTO `bro_admin_log` VALUES ('226', '1', '后台登录', '223.73.65.67', '/admin/public/dologin.html', '1550750117');
INSERT INTO `bro_admin_log` VALUES ('227', '1', '编辑中心名称及诊断(ID:9)', '223.73.65.67', '/user/scale/addpost/inc_type/nmss.html', '1550750934');
INSERT INTO `bro_admin_log` VALUES ('228', '1', '后台登录', '111.164.179.140', '/admin/public/dologin.html', '1550796860');
INSERT INTO `bro_admin_log` VALUES ('229', '1', '编辑中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/addpost/inc_type/npi.html', '1550796880');
INSERT INTO `bro_admin_log` VALUES ('230', '1', '编辑中心名称及诊断(ID:7)', '111.164.179.140', '/user/scale/addpost/inc_type/npi.html', '1550796899');
INSERT INTO `bro_admin_log` VALUES ('231', '1', '编辑中心名称及诊断(ID:9)', '111.164.179.140', '/user/scale/addpost/inc_type/nmss.html', '1550796957');
INSERT INTO `bro_admin_log` VALUES ('232', '1', '后台登录', '223.73.65.67', '/admin/public/dologin.html', '1550835894');
INSERT INTO `bro_admin_log` VALUES ('233', '1', '后台登录', '111.164.179.140', '/admin/public/dologin.html', '1550881910');
INSERT INTO `bro_admin_log` VALUES ('234', '1', '后台登录', '120.230.125.235', '/admin/public/dologin.html', '1550892023');
INSERT INTO `bro_admin_log` VALUES ('235', '1', '添加中心名称及诊断(ID:1)', '120.230.125.235', '/user/center_diagnose/addpost.html', '1550895129');
INSERT INTO `bro_admin_log` VALUES ('236', '1', '编辑中心名称及诊断(ID:11)', '120.230.125.235', '/user/center_diagnose/addpost.html', '1550896850');
INSERT INTO `bro_admin_log` VALUES ('237', '1', '编辑中心名称及诊断(ID:11)', '120.230.125.235', '/user/center_diagnose/addpost.html', '1550896995');
INSERT INTO `bro_admin_log` VALUES ('238', '1', '编辑中心名称及诊断(ID:11)', '120.230.125.235', '/user/center_diagnose/addpost.html', '1550897042');
INSERT INTO `bro_admin_log` VALUES ('239', '1', '编辑中心名称及诊断(ID:11)', '120.230.125.235', '/user/center_diagnose/addpost.html', '1550897343');
INSERT INTO `bro_admin_log` VALUES ('240', '1', '添加中心名称及诊断(ID:1)', '111.164.179.140', '/user/center_diagnose/addpost.html', '1550905915');
INSERT INTO `bro_admin_log` VALUES ('241', '1', '添加中心名称及诊断(ID:1)', '111.164.179.140', '/user/center_diagnose/addpost.html', '1550905937');
INSERT INTO `bro_admin_log` VALUES ('242', '1', '后台登录', '115.24.144.244', '/admin/public/dologin.html', '1550972355');
INSERT INTO `bro_admin_log` VALUES ('243', '1', '后台登录', '211.94.254.141', '/admin/public/dologin.html', '1551000278');
INSERT INTO `bro_admin_log` VALUES ('244', '1', '后台登录', '113.108.141.170', '/admin/public/dologin.html', '1551079091');
INSERT INTO `bro_admin_log` VALUES ('245', '1', '后台登录', '111.164.179.253', '/admin/public/dologin.html', '1552271409');
INSERT INTO `bro_admin_log` VALUES ('246', '1', '后台登录', '111.164.179.253', '/admin/public/dologin.html', '1552280631');
INSERT INTO `bro_admin_log` VALUES ('247', '1', '后台登录', '113.108.141.170', '/admin/public/dologin.html', '1552282401');
INSERT INTO `bro_admin_log` VALUES ('248', '1', '后台登录', '120.230.125.198', '/admin/public/dologin.html', '1552304988');
INSERT INTO `bro_admin_log` VALUES ('249', '1', '后台登录', '115.24.144.222', '/admin/public/dologin.html', '1552393536');
INSERT INTO `bro_admin_log` VALUES ('250', '1', '后台登录', '111.164.179.253', '/admin/public/dologin.html', '1552453302');
INSERT INTO `bro_admin_log` VALUES ('251', '1', '后台登录', '113.108.141.170', '/admin/public/dologin.html', '1552455495');
INSERT INTO `bro_admin_log` VALUES ('252', '1', '后台登录', '106.47.93.109', '/admin/public/dologin.html', '1552485377');
INSERT INTO `bro_admin_log` VALUES ('253', '1', '后台登录', '111.164.179.253', '/admin/public/dologin.html', '1552546036');
INSERT INTO `bro_admin_log` VALUES ('254', '1', '添加主要病史及症状(ID:1)', '111.164.179.253', '/user/major_medical/addpost.html', '1552546482');
INSERT INTO `bro_admin_log` VALUES ('255', '1', '添加主要病史及症状(ID:1)', '111.164.179.253', '/user/major_medical/addpost.html', '1552546494');
INSERT INTO `bro_admin_log` VALUES ('256', '1', '添加病史(ID:1)', '111.164.179.253', '/user/medical_history/addpost.html', '1552547200');
INSERT INTO `bro_admin_log` VALUES ('257', '1', '添加主要病史及症状(ID:1)', '111.164.179.253', '/user/major_medical/addpost.html', '1552547360');
INSERT INTO `bro_admin_log` VALUES ('258', '1', '后台登录', '115.24.144.161', '/admin/public/dologin.html', '1552557169');
INSERT INTO `bro_admin_log` VALUES ('259', '1', '后台登录', '115.24.144.161', '/admin/public/dologin.html', '1552559460');
INSERT INTO `bro_admin_log` VALUES ('260', '1', '后台登录', '115.24.144.161', '/admin/public/dologin.html', '1552559645');
INSERT INTO `bro_admin_log` VALUES ('261', '1', '后台登录', '111.164.179.253', '/admin/public/dologin.html', '1552610347');
INSERT INTO `bro_admin_log` VALUES ('262', '1', '后台登录', '111.164.179.253', '/admin/public/dologin.html', '1552613587');
INSERT INTO `bro_admin_log` VALUES ('263', '1', '后台登录', '211.94.243.116', '/admin/public/dologin.html', '1552616638');
INSERT INTO `bro_admin_log` VALUES ('264', '1', '后台登录', '113.108.141.170', '/admin/public/dologin.html', '1552629596');
INSERT INTO `bro_admin_log` VALUES ('265', '1', '后台登录', '115.24.144.118', '/admin/public/dologin.html', '1552647039');
INSERT INTO `bro_admin_log` VALUES ('266', '1', '后台登录', '120.230.125.108', '/admin/public/dologin.html', '1552702299');
INSERT INTO `bro_admin_log` VALUES ('267', '1', '编辑用药史(ID:11)', '120.230.125.108', '/user/drug_history/addpost.html', '1552703397');
INSERT INTO `bro_admin_log` VALUES ('268', '1', '后台登录', '111.164.179.253', '/admin/public/dologin.html', '1552705297');
INSERT INTO `bro_admin_log` VALUES ('269', '1', '后台登录', '120.230.125.159', '/admin/public/dologin.html', '1552839151');
INSERT INTO `bro_admin_log` VALUES ('270', '1', '后台登录', '120.230.125.166', '/admin/public/dologin.html', '1553325815');
INSERT INTO `bro_admin_log` VALUES ('271', '1', '添加中心名称及诊断(ID:1)', '120.230.125.166', '/user/scale/addpost/inc_type/mds_updrs.html', '1553328198');
INSERT INTO `bro_admin_log` VALUES ('272', '1', '编辑中心名称及诊断(ID:15)', '120.230.125.166', '/user/scale/addpost/inc_type/mds_updrs.html', '1553328236');
INSERT INTO `bro_admin_log` VALUES ('273', '1', '编辑中心名称及诊断(ID:15)', '120.230.125.166', '/user/scale/addpost/inc_type/mds_updrs.html', '1553328247');
INSERT INTO `bro_admin_log` VALUES ('274', '1', '添加中心名称及诊断(ID:1)', '120.230.125.166', '/user/scale/addpost/inc_type/mmse.html', '1553330046');
INSERT INTO `bro_admin_log` VALUES ('275', '1', '编辑中心名称及诊断(ID:9)', '120.230.125.166', '/user/scale/addpost/inc_type/mmse.html', '1553330083');
INSERT INTO `bro_admin_log` VALUES ('276', '1', '添加中心名称及诊断(ID:1)', '120.230.125.166', '/user/scale/addpost/inc_type/frozen.html', '1553332979');
INSERT INTO `bro_admin_log` VALUES ('277', '1', '编辑中心名称及诊断(ID:10)', '120.230.125.166', '/user/scale/addpost/inc_type/frozen.html', '1553333062');
INSERT INTO `bro_admin_log` VALUES ('278', '1', '编辑中心名称及诊断(ID:10)', '120.230.125.166', '/user/scale/addpost/inc_type/frozen.html', '1553333086');
INSERT INTO `bro_admin_log` VALUES ('279', '1', '编辑中心名称及诊断(ID:10)', '120.230.125.166', '/user/scale/addpost/inc_type/frozen.html', '1553333127');
INSERT INTO `bro_admin_log` VALUES ('280', '1', '编辑中心名称及诊断(ID:10)', '120.230.125.166', '/user/scale/addpost/inc_type/frozen.html', '1553333248');
INSERT INTO `bro_admin_log` VALUES ('281', '1', '编辑中心名称及诊断(ID:10)', '120.230.125.166', '/user/scale/addpost/inc_type/frozen.html', '1553333279');
INSERT INTO `bro_admin_log` VALUES ('282', '1', '编辑中心名称及诊断(ID:9)', '120.230.125.166', '/user/scale/addpost/inc_type/stroop.html', '1553333990');
INSERT INTO `bro_admin_log` VALUES ('283', '1', '编辑中心名称及诊断(ID:9)', '120.230.125.166', '/user/scale/addpost/inc_type/stroop.html', '1553334041');
INSERT INTO `bro_admin_log` VALUES ('284', '1', '编辑中心名称及诊断(ID:9)', '120.230.125.166', '/user/scale/addpost/inc_type/stroop.html', '1553334081');
INSERT INTO `bro_admin_log` VALUES ('285', '1', '编辑中心名称及诊断(ID:9)', '120.230.125.166', '/user/scale/addpost/inc_type/wais.html', '1553334984');
INSERT INTO `bro_admin_log` VALUES ('286', '1', '编辑中心名称及诊断(ID:9)', '120.230.125.166', '/user/scale/addpost/inc_type/wais.html', '1553334991');
INSERT INTO `bro_admin_log` VALUES ('287', '1', '编辑中心名称及诊断(ID:9)', '120.230.125.166', '/user/scale/addpost/inc_type/wais.html', '1553334999');
INSERT INTO `bro_admin_log` VALUES ('288', '1', '后台登录', '111.164.174.57', '/admin/public/dologin.html', '1553664310');
INSERT INTO `bro_admin_log` VALUES ('289', '1', '后台登录', '120.230.125.48', '/admin/public/dologin.html', '1553693753');
INSERT INTO `bro_admin_log` VALUES ('290', '1', '编辑中心名称及诊断(ID:10)', '120.230.125.48', '/user/scale/addpost/inc_type/frozen.html', '1553693783');
INSERT INTO `bro_admin_log` VALUES ('291', '1', '后台登录', '111.164.178.105', '/admin/public/dologin.html', '1554773594');
INSERT INTO `bro_admin_log` VALUES ('292', '1', '后台登录', '111.164.178.105', '/admin/public/dologin.html', '1554774048');
INSERT INTO `bro_admin_log` VALUES ('293', '1', '后台登录', '113.108.141.170', '/admin/public/dologin.html', '1554774058');
INSERT INTO `bro_admin_log` VALUES ('294', '1', '后台登录', '60.2.125.182', '/admin/public/dologin.html', '1554775737');
INSERT INTO `bro_admin_log` VALUES ('295', '1', '删除患者(ID:22)', '113.108.141.170', '/user/admin_index/delete/id/22.html', '1554775965');
INSERT INTO `bro_admin_log` VALUES ('296', '1', '删除患者(ID:21)', '113.108.141.170', '/user/admin_index/delete/id/21.html', '1554775971');
INSERT INTO `bro_admin_log` VALUES ('297', '1', '删除患者(ID:20)', '113.108.141.170', '/user/admin_index/delete/id/20.html', '1554775975');
INSERT INTO `bro_admin_log` VALUES ('298', '1', '删除患者(ID:19)', '113.108.141.170', '/user/admin_index/delete/id/19.html', '1554775980');
INSERT INTO `bro_admin_log` VALUES ('299', '1', '删除患者(ID:18)', '113.108.141.170', '/user/admin_index/delete/id/18.html', '1554775984');
INSERT INTO `bro_admin_log` VALUES ('300', '1', '删除患者(ID:17)', '113.108.141.170', '/user/admin_index/delete/id/17.html', '1554775988');
INSERT INTO `bro_admin_log` VALUES ('301', '1', '删除患者(ID:16)', '60.2.125.182', '/user/admin_index/delete/id/16.html', '1554776197');
INSERT INTO `bro_admin_log` VALUES ('302', '1', '删除患者(ID:13)', '60.2.125.182', '/user/admin_index/delete/id/13.html', '1554776210');
INSERT INTO `bro_admin_log` VALUES ('303', '1', '删除患者(ID:12)', '60.2.125.182', '/user/admin_index/delete/id/12.html', '1554776214');
INSERT INTO `bro_admin_log` VALUES ('304', '1', '删除患者(ID:11)', '60.2.125.182', '/user/admin_index/delete/id/11.html', '1554776219');
INSERT INTO `bro_admin_log` VALUES ('305', '9', '后台登录', '111.164.178.105', '/admin/public/dologin.html', '1554776285');
INSERT INTO `bro_admin_log` VALUES ('306', '1', '删除患者(ID:29)', '113.108.141.170', '/user/admin_index/delete/id/29.html', '1554777088');
INSERT INTO `bro_admin_log` VALUES ('307', '1', '删除患者(ID:28)', '113.108.141.170', '/user/admin_index/delete/id/28.html', '1554777093');
INSERT INTO `bro_admin_log` VALUES ('308', '1', '删除患者(ID:27)', '113.108.141.170', '/user/admin_index/delete/id/27.html', '1554777098');
INSERT INTO `bro_admin_log` VALUES ('309', '1', '删除患者(ID:23)', '60.2.125.182', '/user/admin_index/delete/id/23.html', '1554777150');
INSERT INTO `bro_admin_log` VALUES ('310', '1', '删除患者(ID:24)', '60.2.125.182', '/user/admin_index/delete/id/24.html', '1554777154');
INSERT INTO `bro_admin_log` VALUES ('311', '1', '删除患者(ID:25)', '60.2.125.182', '/user/admin_index/delete/id/25.html', '1554777158');
INSERT INTO `bro_admin_log` VALUES ('312', '1', '删除患者(ID:26)', '60.2.125.182', '/user/admin_index/delete/id/26.html', '1554777163');
INSERT INTO `bro_admin_log` VALUES ('313', '1', '后台登录', '111.164.178.105', '/admin/public/dologin.html', '1554777346');
INSERT INTO `bro_admin_log` VALUES ('314', '1', '后台登录', '111.164.178.105', '/admin/public/dologin.html', '1554777584');
INSERT INTO `bro_admin_log` VALUES ('315', '1', '编辑中心名称及诊断(ID:13)', '111.164.178.105', '/user/scale/addpost/inc_type/stroop.html', '1554778232');
INSERT INTO `bro_admin_log` VALUES ('316', '1', '编辑中心名称及诊断(ID:14)', '111.164.178.105', '/user/scale/addpost/inc_type/frozen.html', '1554780246');
INSERT INTO `bro_admin_log` VALUES ('317', '1', '编辑中心名称及诊断(ID:13)', '111.164.178.105', '/user/scale/addpost/inc_type/stroop.html', '1554780268');
INSERT INTO `bro_admin_log` VALUES ('318', '1', '编辑中心名称及诊断(ID:13)', '111.164.178.105', '/user/scale/addpost/inc_type/wais.html', '1554780296');
INSERT INTO `bro_admin_log` VALUES ('319', '1', '编辑中心名称及诊断(ID:19)', '111.164.178.105', '/user/scale/addpost/inc_type/mds_updrs.html', '1554781229');
INSERT INTO `bro_admin_log` VALUES ('320', '1', '编辑中心名称及诊断(ID:19)', '111.164.178.105', '/user/scale/addpost/inc_type/mds_updrs.html', '1554781252');
INSERT INTO `bro_admin_log` VALUES ('321', '1', '编辑中心名称及诊断(ID:19)', '111.164.178.105', '/user/scale/addpost/inc_type/mds_updrs.html', '1554781321');
INSERT INTO `bro_admin_log` VALUES ('322', '1', '编辑中心名称及诊断(ID:19)', '111.164.178.105', '/user/scale/addpost/inc_type/mds_updrs.html', '1554781366');
INSERT INTO `bro_admin_log` VALUES ('323', '1', '编辑中心名称及诊断(ID:13)', '111.164.178.105', '/user/scale/addpost/inc_type/nmss.html', '1554781389');
INSERT INTO `bro_admin_log` VALUES ('324', '1', '编辑中心名称及诊断(ID:14)', '111.164.178.105', '/user/scale/addpost/inc_type/frozen.html', '1554781423');
INSERT INTO `bro_admin_log` VALUES ('325', '1', '编辑中心名称及诊断(ID:13)', '111.164.178.105', '/user/scale/addpost/inc_type/wais.html', '1554781498');
INSERT INTO `bro_admin_log` VALUES ('326', '1', '编辑中心名称及诊断(ID:13)', '111.164.178.105', '/user/scale/addpost/inc_type/wais.html', '1554781515');
INSERT INTO `bro_admin_log` VALUES ('327', '1', '删除患者(ID:32)', '111.164.178.105', '/user/admin_index/delete/id/32.html', '1554792128');
INSERT INTO `bro_admin_log` VALUES ('328', '1', '编辑中心名称及诊断(ID:25)', '111.164.178.105', '/user/center_diagnose/addpost.html', '1554792594');
INSERT INTO `bro_admin_log` VALUES ('329', '1', '后台登录', '120.230.125.52', '/admin/public/dologin.html', '1554812485');
INSERT INTO `bro_admin_log` VALUES ('330', '1', '后台登录', '111.164.178.105', '/admin/public/dologin.html', '1554859639');
INSERT INTO `bro_admin_log` VALUES ('331', '1', '后台登录', '113.108.141.170', '/admin/public/dologin.html', '1554874397');
INSERT INTO `bro_admin_log` VALUES ('332', '1', '编辑体格检查(ID:26)', '113.108.141.170', '/user/body_check/addpost.html', '1554875076');
INSERT INTO `bro_admin_log` VALUES ('333', '1', '编辑体格检查(ID:26)', '113.108.141.170', '/user/body_check/addpost.html', '1554875088');
INSERT INTO `bro_admin_log` VALUES ('334', '1', '编辑体格检查(ID:26)', '113.108.141.170', '/user/body_check/addpost.html', '1554875095');
INSERT INTO `bro_admin_log` VALUES ('335', '1', '编辑体格检查(ID:20)', '111.164.178.105', '/user/body_check/addpost.html', '1554875251');
INSERT INTO `bro_admin_log` VALUES ('336', '1', '后台登录', '60.2.125.182', '/admin/public/dologin.html', '1554887371');
INSERT INTO `bro_admin_log` VALUES ('337', '1', '后台登录', '120.230.125.52', '/admin/public/dologin.html', '1554893354');
INSERT INTO `bro_admin_log` VALUES ('338', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1554893384');
INSERT INTO `bro_admin_log` VALUES ('339', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/npi.html', '1554896731');
INSERT INTO `bro_admin_log` VALUES ('340', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1554904369');
INSERT INTO `bro_admin_log` VALUES ('341', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1554904447');
INSERT INTO `bro_admin_log` VALUES ('342', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1554908306');
INSERT INTO `bro_admin_log` VALUES ('343', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1554908323');
INSERT INTO `bro_admin_log` VALUES ('344', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/sc_en.html', '1554908370');
INSERT INTO `bro_admin_log` VALUES ('345', '1', '编辑中心名称及诊断(ID:17)', '127.0.0.1', '/user/scale/addpost/inc_type/nmss.html', '1554910050');
INSERT INTO `bro_admin_log` VALUES ('346', '1', '编辑中心名称及诊断(ID:17)', '127.0.0.1', '/user/scale/addpost/inc_type/mmse.html', '1554910772');
INSERT INTO `bro_admin_log` VALUES ('347', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/moca.html', '1554912116');
INSERT INTO `bro_admin_log` VALUES ('348', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/moca.html', '1554912456');
INSERT INTO `bro_admin_log` VALUES ('349', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/hamd.html', '1554912679');
INSERT INTO `bro_admin_log` VALUES ('350', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/hama.html', '1554913068');
INSERT INTO `bro_admin_log` VALUES ('351', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/hama.html', '1554913259');
INSERT INTO `bro_admin_log` VALUES ('352', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/maes.html', '1554913929');
INSERT INTO `bro_admin_log` VALUES ('353', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554914217');
INSERT INTO `bro_admin_log` VALUES ('354', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915191');
INSERT INTO `bro_admin_log` VALUES ('355', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915218');
INSERT INTO `bro_admin_log` VALUES ('356', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915266');
INSERT INTO `bro_admin_log` VALUES ('357', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915605');
INSERT INTO `bro_admin_log` VALUES ('358', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915631');
INSERT INTO `bro_admin_log` VALUES ('359', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915658');
INSERT INTO `bro_admin_log` VALUES ('360', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915701');
INSERT INTO `bro_admin_log` VALUES ('361', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915822');
INSERT INTO `bro_admin_log` VALUES ('362', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915841');
INSERT INTO `bro_admin_log` VALUES ('363', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915856');
INSERT INTO `bro_admin_log` VALUES ('364', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/psqi.html', '1554915907');
INSERT INTO `bro_admin_log` VALUES ('365', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/ess.html', '1554916174');
INSERT INTO `bro_admin_log` VALUES ('366', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1554916601');
INSERT INTO `bro_admin_log` VALUES ('367', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/fai.html', '1554917028');
INSERT INTO `bro_admin_log` VALUES ('368', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/fai.html', '1554917077');
INSERT INTO `bro_admin_log` VALUES ('369', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1554917205');
INSERT INTO `bro_admin_log` VALUES ('370', '1', '后台登录', '127.0.0.1', '/admin/public/dologin.html', '1554987393');
INSERT INTO `bro_admin_log` VALUES ('371', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/pdql.html', '1554988297');
INSERT INTO `bro_admin_log` VALUES ('372', '1', '编辑中心名称及诊断(ID:15)', '127.0.0.1', '/user/scale/addpost/inc_type/adl.html', '1554988801');
INSERT INTO `bro_admin_log` VALUES ('373', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1554989998');
INSERT INTO `bro_admin_log` VALUES ('374', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1554990025');
INSERT INTO `bro_admin_log` VALUES ('375', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1554990176');
INSERT INTO `bro_admin_log` VALUES ('376', '1', '编辑中心名称及诊断(ID:16)', '127.0.0.1', '/user/scale/addpost/inc_type/dlb.html', '1554990202');
INSERT INTO `bro_admin_log` VALUES ('377', '1', '编辑中心名称及诊断(ID:18)', '127.0.0.1', '/user/scale/addpost/inc_type/frozen.html', '1554991781');
INSERT INTO `bro_admin_log` VALUES ('378', '1', '编辑中心名称及诊断(ID:17)', '127.0.0.1', '/user/scale/addpost/inc_type/wais.html', '1554992910');
INSERT INTO `bro_admin_log` VALUES ('379', '1', '编辑中心名称及诊断(ID:17)', '127.0.0.1', '/user/scale/addpost/inc_type/stroop.html', '1554993016');
INSERT INTO `bro_admin_log` VALUES ('380', '1', '编辑中心名称及诊断(ID:18)', '127.0.0.1', '/user/scale/addpost/inc_type/frozen.html', '1554994360');
INSERT INTO `bro_admin_log` VALUES ('381', '1', '编辑中心名称及诊断(ID:18)', '127.0.0.1', '/user/scale/addpost/inc_type/frozen.html', '1554994917');
INSERT INTO `bro_admin_log` VALUES ('382', '1', '编辑中心名称及诊断(ID:18)', '127.0.0.1', '/user/scale/addpost/inc_type/frozen.html', '1554995008');
INSERT INTO `bro_admin_log` VALUES ('383', '1', '编辑中心名称及诊断(ID:18)', '127.0.0.1', '/user/scale/addpost/inc_type/frozen.html', '1554995270');
INSERT INTO `bro_admin_log` VALUES ('384', '1', '编辑中心名称及诊断(ID:18)', '127.0.0.1', '/user/scale/addpost/inc_type/frozen.html', '1554995316');
INSERT INTO `bro_admin_log` VALUES ('385', '1', '编辑中心名称及诊断(ID:23)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1555000068');
INSERT INTO `bro_admin_log` VALUES ('386', '1', '编辑中心名称及诊断(ID:23)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1555000620');
INSERT INTO `bro_admin_log` VALUES ('387', '1', '编辑中心名称及诊断(ID:23)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1555002133');
INSERT INTO `bro_admin_log` VALUES ('388', '1', '编辑中心名称及诊断(ID:23)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1555002295');
INSERT INTO `bro_admin_log` VALUES ('389', '1', '编辑中心名称及诊断(ID:23)', '127.0.0.1', '/user/scale/addpost/inc_type/mds_updrs.html', '1555002555');

-- ----------------------------
-- Table structure for bro_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `bro_admin_menu`;
CREATE TABLE `bro_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`) USING BTREE,
  KEY `parentid` (`parent_id`) USING BTREE,
  KEY `model` (`controller`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
-- Records of bro_admin_menu
-- ----------------------------
INSERT INTO `bro_admin_menu` VALUES ('1', '0', '0', '0', '20', 'admin', 'Plugin', 'default', '', '插件管理', 'cloud', '插件管理');
INSERT INTO `bro_admin_menu` VALUES ('2', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `bro_admin_menu` VALUES ('3', '2', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `bro_admin_menu` VALUES ('4', '2', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `bro_admin_menu` VALUES ('5', '2', '1', '0', '10000', 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `bro_admin_menu` VALUES ('6', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `bro_admin_menu` VALUES ('7', '6', '1', '0', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `bro_admin_menu` VALUES ('8', '7', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `bro_admin_menu` VALUES ('9', '7', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `bro_admin_menu` VALUES ('10', '7', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `bro_admin_menu` VALUES ('11', '7', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `bro_admin_menu` VALUES ('12', '7', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `bro_admin_menu` VALUES ('13', '7', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `bro_admin_menu` VALUES ('14', '7', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `bro_admin_menu` VALUES ('15', '6', '1', '0', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `bro_admin_menu` VALUES ('16', '15', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `bro_admin_menu` VALUES ('17', '15', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `bro_admin_menu` VALUES ('18', '15', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `bro_admin_menu` VALUES ('19', '15', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `bro_admin_menu` VALUES ('20', '6', '1', '0', '10000', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `bro_admin_menu` VALUES ('21', '20', '1', '1', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `bro_admin_menu` VALUES ('22', '20', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `bro_admin_menu` VALUES ('23', '20', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `bro_admin_menu` VALUES ('24', '20', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `bro_admin_menu` VALUES ('25', '20', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `bro_admin_menu` VALUES ('26', '20', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `bro_admin_menu` VALUES ('27', '20', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `bro_admin_menu` VALUES ('28', '20', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `bro_admin_menu` VALUES ('29', '6', '1', '0', '30', 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `bro_admin_menu` VALUES ('30', '29', '1', '0', '10000', 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `bro_admin_menu` VALUES ('31', '29', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `bro_admin_menu` VALUES ('32', '29', '1', '0', '10000', 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `bro_admin_menu` VALUES ('33', '29', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `bro_admin_menu` VALUES ('34', '29', '2', '0', '10000', 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `bro_admin_menu` VALUES ('35', '29', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `bro_admin_menu` VALUES ('36', '35', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `bro_admin_menu` VALUES ('37', '35', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `bro_admin_menu` VALUES ('38', '35', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `bro_admin_menu` VALUES ('39', '35', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `bro_admin_menu` VALUES ('40', '35', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `bro_admin_menu` VALUES ('41', '35', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `bro_admin_menu` VALUES ('42', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `bro_admin_menu` VALUES ('43', '42', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `bro_admin_menu` VALUES ('44', '42', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `bro_admin_menu` VALUES ('45', '42', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `bro_admin_menu` VALUES ('46', '42', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `bro_admin_menu` VALUES ('47', '42', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `bro_admin_menu` VALUES ('48', '42', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `bro_admin_menu` VALUES ('49', '109', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `bro_admin_menu` VALUES ('50', '49', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `bro_admin_menu` VALUES ('51', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `bro_admin_menu` VALUES ('52', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `bro_admin_menu` VALUES ('53', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `bro_admin_menu` VALUES ('54', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `bro_admin_menu` VALUES ('55', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `bro_admin_menu` VALUES ('56', '50', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `bro_admin_menu` VALUES ('57', '50', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `bro_admin_menu` VALUES ('58', '0', '1', '0', '10000', 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `bro_admin_menu` VALUES ('59', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `bro_admin_menu` VALUES ('60', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `bro_admin_menu` VALUES ('61', '6', '1', '0', '10000', 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `bro_admin_menu` VALUES ('62', '61', '1', '0', '10000', 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `bro_admin_menu` VALUES ('63', '61', '2', '0', '10000', 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `bro_admin_menu` VALUES ('64', '61', '1', '0', '10000', 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `bro_admin_menu` VALUES ('65', '61', '2', '0', '10000', 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `bro_admin_menu` VALUES ('66', '61', '2', '0', '10000', 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `bro_admin_menu` VALUES ('67', '61', '2', '0', '10000', 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `bro_admin_menu` VALUES ('68', '61', '2', '0', '10000', 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `bro_admin_menu` VALUES ('69', '61', '2', '0', '10000', 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `bro_admin_menu` VALUES ('70', '61', '1', '0', '10000', 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `bro_admin_menu` VALUES ('71', '6', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `bro_admin_menu` VALUES ('72', '71', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `bro_admin_menu` VALUES ('73', '6', '1', '0', '10000', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `bro_admin_menu` VALUES ('74', '73', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `bro_admin_menu` VALUES ('75', '6', '1', '0', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `bro_admin_menu` VALUES ('76', '75', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `bro_admin_menu` VALUES ('77', '6', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `bro_admin_menu` VALUES ('78', '6', '1', '0', '40', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `bro_admin_menu` VALUES ('79', '78', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `bro_admin_menu` VALUES ('80', '78', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `bro_admin_menu` VALUES ('81', '78', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `bro_admin_menu` VALUES ('82', '78', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `bro_admin_menu` VALUES ('83', '78', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `bro_admin_menu` VALUES ('84', '78', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `bro_admin_menu` VALUES ('85', '84', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `bro_admin_menu` VALUES ('86', '84', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `bro_admin_menu` VALUES ('87', '84', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `bro_admin_menu` VALUES ('88', '84', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `bro_admin_menu` VALUES ('89', '84', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `bro_admin_menu` VALUES ('90', '84', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `bro_admin_menu` VALUES ('91', '84', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `bro_admin_menu` VALUES ('92', '84', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `bro_admin_menu` VALUES ('93', '6', '1', '0', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `bro_admin_menu` VALUES ('94', '93', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `bro_admin_menu` VALUES ('95', '6', '1', '0', '20', 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `bro_admin_menu` VALUES ('96', '95', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `bro_admin_menu` VALUES ('97', '95', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `bro_admin_menu` VALUES ('98', '95', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `bro_admin_menu` VALUES ('99', '95', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `bro_admin_menu` VALUES ('100', '95', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `bro_admin_menu` VALUES ('101', '95', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `bro_admin_menu` VALUES ('102', '95', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `bro_admin_menu` VALUES ('103', '95', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `bro_admin_menu` VALUES ('104', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `bro_admin_menu` VALUES ('105', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `bro_admin_menu` VALUES ('106', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `bro_admin_menu` VALUES ('107', '95', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `bro_admin_menu` VALUES ('108', '95', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `bro_admin_menu` VALUES ('109', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `bro_admin_menu` VALUES ('110', '49', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `bro_admin_menu` VALUES ('111', '110', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `bro_admin_menu` VALUES ('112', '110', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `bro_admin_menu` VALUES ('113', '110', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `bro_admin_menu` VALUES ('114', '110', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `bro_admin_menu` VALUES ('115', '110', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `bro_admin_menu` VALUES ('116', '110', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `bro_admin_menu` VALUES ('117', '110', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `bro_admin_menu` VALUES ('118', '110', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `bro_admin_menu` VALUES ('119', '110', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `bro_admin_menu` VALUES ('120', '0', '0', '0', '30', 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `bro_admin_menu` VALUES ('121', '120', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `bro_admin_menu` VALUES ('122', '121', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `bro_admin_menu` VALUES ('123', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `bro_admin_menu` VALUES ('124', '121', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `bro_admin_menu` VALUES ('125', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `bro_admin_menu` VALUES ('126', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `bro_admin_menu` VALUES ('127', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `bro_admin_menu` VALUES ('128', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `bro_admin_menu` VALUES ('129', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `bro_admin_menu` VALUES ('130', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `bro_admin_menu` VALUES ('131', '120', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `bro_admin_menu` VALUES ('132', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `bro_admin_menu` VALUES ('133', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `bro_admin_menu` VALUES ('134', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `bro_admin_menu` VALUES ('135', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `bro_admin_menu` VALUES ('136', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `bro_admin_menu` VALUES ('137', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `bro_admin_menu` VALUES ('138', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `bro_admin_menu` VALUES ('139', '120', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `bro_admin_menu` VALUES ('140', '139', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `bro_admin_menu` VALUES ('141', '139', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `bro_admin_menu` VALUES ('142', '139', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `bro_admin_menu` VALUES ('143', '139', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `bro_admin_menu` VALUES ('144', '139', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `bro_admin_menu` VALUES ('145', '120', '1', '1', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `bro_admin_menu` VALUES ('146', '145', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `bro_admin_menu` VALUES ('147', '145', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `bro_admin_menu` VALUES ('148', '145', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `bro_admin_menu` VALUES ('149', '145', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `bro_admin_menu` VALUES ('150', '0', '1', '0', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `bro_admin_menu` VALUES ('151', '150', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `bro_admin_menu` VALUES ('152', '109', '0', '0', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `bro_admin_menu` VALUES ('153', '0', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '患者列表', 'user', '患者列表');
INSERT INTO `bro_admin_menu` VALUES ('154', '153', '2', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `bro_admin_menu` VALUES ('155', '153', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `bro_admin_menu` VALUES ('156', '152', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `bro_admin_menu` VALUES ('157', '156', '2', '0', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `bro_admin_menu` VALUES ('158', '6', '1', '0', '10000', 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `bro_admin_menu` VALUES ('159', '158', '1', '0', '10000', 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `bro_admin_menu` VALUES ('160', '158', '2', '0', '10000', 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `bro_admin_menu` VALUES ('161', '158', '1', '0', '10000', 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `bro_admin_menu` VALUES ('163', '153', '1', '0', '10000', 'user', 'UserVisit', 'index', '', '随访记录', '', '');
INSERT INTO `bro_admin_menu` VALUES ('164', '153', '1', '0', '10000', 'User', 'MedicalHistory', 'index', '', '既往病史', '', '');
INSERT INTO `bro_admin_menu` VALUES ('165', '153', '1', '0', '10000', 'User', 'MajorMedical', 'index', '', '主要病史及症状', '', '');
INSERT INTO `bro_admin_menu` VALUES ('166', '153', '1', '0', '10000', 'User', 'BodyCheck', 'index', '', '体格检查', '', '');
INSERT INTO `bro_admin_menu` VALUES ('167', '153', '1', '0', '10000', 'User', 'AssistCheck', 'index', '', '辅助检查', '', '');
INSERT INTO `bro_admin_menu` VALUES ('168', '153', '1', '0', '10000', 'User', 'AssayCheck', 'index', '', '化验检查', '', '');
INSERT INTO `bro_admin_menu` VALUES ('169', '153', '1', '0', '10000', 'User', 'DrugHistory', 'index', '', '用药史', '', '');
INSERT INTO `bro_admin_menu` VALUES ('170', '153', '1', '0', '10000', 'User', '中心名称及诊断', 'index', '', '中心名称及诊断', '', '');
INSERT INTO `bro_admin_menu` VALUES ('171', '153', '1', '0', '10000', 'User', 'Scale', 'index', '', '问卷调查', '', '');
INSERT INTO `bro_admin_menu` VALUES ('172', '109', '1', '1', '10000', 'admin', 'user', 'adminlog', '', '管理员日志', '', '');

-- ----------------------------
-- Table structure for bro_asset
-- ----------------------------
DROP TABLE IF EXISTS `bro_asset`;
CREATE TABLE `bro_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
-- Records of bro_asset
-- ----------------------------
INSERT INTO `bro_asset` VALUES ('1', '1', '15601', '1548075612', '1', '0', '2e5f4c91c65c4ac3e969032d687e68a2b578cea4c7dd3f9d052a6a263686685d', 'timg.jpg', 'user/20190121/3a2489228eadd6330a3762348c64635d.jpg', '2e5f4c91c65c4ac3e969032d687e68a2', 'd5f291f7dbe8259fb0d2a6cd8d8f930657d43638', 'jpg', null);
INSERT INTO `bro_asset` VALUES ('2', '1', '133371', '1548075619', '1', '0', 'fdc3b27126a306f4a8506a9a169b41c9329d82d6bbf83e149e5c96978ec44217', '1546872021.jpg', 'user/20190121/b4287f2104c3675743090aa20c1c68fb.jpg', 'fdc3b27126a306f4a8506a9a169b41c9', '2fa460696c925d704483871d5ca91e76510cbddf', 'jpg', null);

-- ----------------------------
-- Table structure for bro_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `bro_auth_access`;
CREATE TABLE `bro_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of bro_auth_access
-- ----------------------------
INSERT INTO `bro_auth_access` VALUES ('264', '2', 'user/adminindex/default', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('265', '2', 'admin/user/default', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('266', '2', 'admin/rbac/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('267', '2', 'admin/rbac/roleadd', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('268', '2', 'admin/rbac/roleaddpost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('269', '2', 'admin/rbac/roleedit', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('270', '2', 'admin/rbac/roleeditpost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('271', '2', 'admin/rbac/roledelete', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('272', '2', 'admin/rbac/authorize', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('273', '2', 'admin/rbac/authorizepost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('274', '2', 'admin/user/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('275', '2', 'admin/user/add', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('276', '2', 'admin/user/addpost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('277', '2', 'admin/user/edit', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('278', '2', 'admin/user/editpost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('279', '2', 'admin/user/userinfo', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('280', '2', 'admin/user/userinfopost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('281', '2', 'admin/user/delete', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('282', '2', 'admin/user/ban', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('283', '2', 'admin/user/cancelban', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('284', '2', 'user/adminindex/default1', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('285', '2', 'user/adminoauth/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('286', '2', 'user/adminoauth/delete', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('287', '2', 'portal/adminindex/default', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('288', '2', 'portal/adminarticle/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('289', '2', 'portal/adminarticle/add', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('290', '2', 'portal/adminarticle/addpost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('291', '2', 'portal/adminarticle/editpost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('292', '2', 'portal/adminarticle/publish', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('293', '2', 'portal/admincategory/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('294', '2', 'portal/admincategory/add', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('295', '2', 'portal/admincategory/addpost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('296', '2', 'portal/admincategory/edit', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('297', '2', 'portal/admincategory/editpost', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('298', '2', 'portal/admincategory/select', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('299', '2', 'portal/admincategory/listorder', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('300', '2', 'portal/admincategory/delete', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('301', '2', 'user/adminasset/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('302', '2', 'user/adminasset/delete', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('303', '2', 'user/adminindex/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('304', '2', 'user/adminindex/ban', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('305', '2', 'user/adminindex/cancelban', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('306', '2', 'user/uservisit/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('307', '2', 'user/medicalhistory/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('308', '2', 'user/majormedical/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('309', '2', 'user/bodycheck/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('310', '2', 'user/assistcheck/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('311', '2', 'user/assaycheck/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('312', '2', 'user/drughistory/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('313', '2', 'user/中心名称及诊断/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('314', '2', 'user/scale/index', 'admin_url');
INSERT INTO `bro_auth_access` VALUES ('315', '2', '/uservisit/index', 'admin_url');

-- ----------------------------
-- Table structure for bro_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `bro_auth_rule`;
CREATE TABLE `bro_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
-- Records of bro_auth_rule
-- ----------------------------
INSERT INTO `bro_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `bro_auth_rule` VALUES ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `bro_auth_rule` VALUES ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `bro_auth_rule` VALUES ('4', '1', 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `bro_auth_rule` VALUES ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `bro_auth_rule` VALUES ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `bro_auth_rule` VALUES ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `bro_auth_rule` VALUES ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `bro_auth_rule` VALUES ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `bro_auth_rule` VALUES ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `bro_auth_rule` VALUES ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `bro_auth_rule` VALUES ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('15', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `bro_auth_rule` VALUES ('16', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `bro_auth_rule` VALUES ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `bro_auth_rule` VALUES ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `bro_auth_rule` VALUES ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `bro_auth_rule` VALUES ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `bro_auth_rule` VALUES ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `bro_auth_rule` VALUES ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `bro_auth_rule` VALUES ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `bro_auth_rule` VALUES ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `bro_auth_rule` VALUES ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `bro_auth_rule` VALUES ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `bro_auth_rule` VALUES ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `bro_auth_rule` VALUES ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `bro_auth_rule` VALUES ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `bro_auth_rule` VALUES ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `bro_auth_rule` VALUES ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `bro_auth_rule` VALUES ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `bro_auth_rule` VALUES ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `bro_auth_rule` VALUES ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', '');
INSERT INTO `bro_auth_rule` VALUES ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `bro_auth_rule` VALUES ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `bro_auth_rule` VALUES ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `bro_auth_rule` VALUES ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `bro_auth_rule` VALUES ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `bro_auth_rule` VALUES ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `bro_auth_rule` VALUES ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `bro_auth_rule` VALUES ('48', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `bro_auth_rule` VALUES ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `bro_auth_rule` VALUES ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `bro_auth_rule` VALUES ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `bro_auth_rule` VALUES ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `bro_auth_rule` VALUES ('53', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `bro_auth_rule` VALUES ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `bro_auth_rule` VALUES ('55', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `bro_auth_rule` VALUES ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `bro_auth_rule` VALUES ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `bro_auth_rule` VALUES ('58', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `bro_auth_rule` VALUES ('59', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `bro_auth_rule` VALUES ('60', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `bro_auth_rule` VALUES ('61', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `bro_auth_rule` VALUES ('62', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `bro_auth_rule` VALUES ('63', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `bro_auth_rule` VALUES ('64', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `bro_auth_rule` VALUES ('65', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `bro_auth_rule` VALUES ('66', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `bro_auth_rule` VALUES ('67', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `bro_auth_rule` VALUES ('68', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `bro_auth_rule` VALUES ('69', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `bro_auth_rule` VALUES ('70', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `bro_auth_rule` VALUES ('71', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `bro_auth_rule` VALUES ('72', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `bro_auth_rule` VALUES ('73', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `bro_auth_rule` VALUES ('74', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `bro_auth_rule` VALUES ('75', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `bro_auth_rule` VALUES ('76', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `bro_auth_rule` VALUES ('77', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `bro_auth_rule` VALUES ('78', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `bro_auth_rule` VALUES ('79', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `bro_auth_rule` VALUES ('80', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `bro_auth_rule` VALUES ('81', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `bro_auth_rule` VALUES ('82', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `bro_auth_rule` VALUES ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `bro_auth_rule` VALUES ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `bro_auth_rule` VALUES ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `bro_auth_rule` VALUES ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `bro_auth_rule` VALUES ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `bro_auth_rule` VALUES ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `bro_auth_rule` VALUES ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `bro_auth_rule` VALUES ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `bro_auth_rule` VALUES ('91', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `bro_auth_rule` VALUES ('92', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `bro_auth_rule` VALUES ('93', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `bro_auth_rule` VALUES ('94', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `bro_auth_rule` VALUES ('95', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `bro_auth_rule` VALUES ('96', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `bro_auth_rule` VALUES ('97', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `bro_auth_rule` VALUES ('98', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `bro_auth_rule` VALUES ('99', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `bro_auth_rule` VALUES ('100', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `bro_auth_rule` VALUES ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `bro_auth_rule` VALUES ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `bro_auth_rule` VALUES ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `bro_auth_rule` VALUES ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('105', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `bro_auth_rule` VALUES ('106', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `bro_auth_rule` VALUES ('107', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `bro_auth_rule` VALUES ('108', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `bro_auth_rule` VALUES ('109', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `bro_auth_rule` VALUES ('110', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `bro_auth_rule` VALUES ('111', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `bro_auth_rule` VALUES ('112', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `bro_auth_rule` VALUES ('113', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `bro_auth_rule` VALUES ('114', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `bro_auth_rule` VALUES ('115', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `bro_auth_rule` VALUES ('116', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `bro_auth_rule` VALUES ('117', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `bro_auth_rule` VALUES ('118', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `bro_auth_rule` VALUES ('119', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `bro_auth_rule` VALUES ('120', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `bro_auth_rule` VALUES ('121', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `bro_auth_rule` VALUES ('122', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `bro_auth_rule` VALUES ('123', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `bro_auth_rule` VALUES ('124', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `bro_auth_rule` VALUES ('125', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `bro_auth_rule` VALUES ('126', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `bro_auth_rule` VALUES ('127', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `bro_auth_rule` VALUES ('128', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `bro_auth_rule` VALUES ('129', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `bro_auth_rule` VALUES ('130', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `bro_auth_rule` VALUES ('131', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `bro_auth_rule` VALUES ('132', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `bro_auth_rule` VALUES ('133', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `bro_auth_rule` VALUES ('134', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `bro_auth_rule` VALUES ('135', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `bro_auth_rule` VALUES ('136', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `bro_auth_rule` VALUES ('137', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `bro_auth_rule` VALUES ('138', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `bro_auth_rule` VALUES ('139', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `bro_auth_rule` VALUES ('140', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `bro_auth_rule` VALUES ('141', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `bro_auth_rule` VALUES ('142', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `bro_auth_rule` VALUES ('143', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `bro_auth_rule` VALUES ('144', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `bro_auth_rule` VALUES ('145', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `bro_auth_rule` VALUES ('146', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `bro_auth_rule` VALUES ('147', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `bro_auth_rule` VALUES ('148', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `bro_auth_rule` VALUES ('149', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `bro_auth_rule` VALUES ('150', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `bro_auth_rule` VALUES ('151', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `bro_auth_rule` VALUES ('152', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `bro_auth_rule` VALUES ('153', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '患者列表', '');
INSERT INTO `bro_auth_rule` VALUES ('154', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `bro_auth_rule` VALUES ('155', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `bro_auth_rule` VALUES ('156', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `bro_auth_rule` VALUES ('157', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `bro_auth_rule` VALUES ('158', '1', 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `bro_auth_rule` VALUES ('159', '1', 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `bro_auth_rule` VALUES ('160', '1', 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `bro_auth_rule` VALUES ('161', '1', 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `bro_auth_rule` VALUES ('162', '1', 'user', 'admin_url', 'user/UserVisit/index', '', '随访记录', '');
INSERT INTO `bro_auth_rule` VALUES ('163', '1', 'User', 'admin_url', 'User/MedicalHistory/index', '', '既往病史', '');
INSERT INTO `bro_auth_rule` VALUES ('164', '1', 'User', 'admin_url', 'User/MajorMedical/index', '', '主要病史及症状', '');
INSERT INTO `bro_auth_rule` VALUES ('165', '1', 'User', 'admin_url', 'User/BodyCheck/index', '', '体格检查', '');
INSERT INTO `bro_auth_rule` VALUES ('166', '1', 'User', 'admin_url', 'User/AssistCheck/index', '', '辅助检查', '');
INSERT INTO `bro_auth_rule` VALUES ('167', '1', 'User', 'admin_url', 'User/AssayCheck/index', '', '化验检查', '');
INSERT INTO `bro_auth_rule` VALUES ('168', '1', 'User', 'admin_url', 'User/DrugHistory/index', '', '用药史', '');
INSERT INTO `bro_auth_rule` VALUES ('169', '1', 'User', 'admin_url', 'User/中心名称及诊断/index', '', '中心名称及诊断', '');
INSERT INTO `bro_auth_rule` VALUES ('170', '1', 'User', 'admin_url', 'User/Scale/index', '', '问卷调查', '');
INSERT INTO `bro_auth_rule` VALUES ('171', '1', 'admin', 'admin_url', 'admin/user/adminlog', '', '管理员日志', '');

-- ----------------------------
-- Table structure for bro_comment
-- ----------------------------
DROP TABLE IF EXISTS `bro_comment`;
CREATE TABLE `bro_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`object_id`) USING BTREE,
  KEY `comment_approved_date_gmt` (`status`) USING BTREE,
  KEY `comment_parent` (`parent_id`) USING BTREE,
  KEY `table_id_status` (`table_name`,`object_id`,`status`) USING BTREE,
  KEY `createtime` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of bro_comment
-- ----------------------------

-- ----------------------------
-- Table structure for bro_hook
-- ----------------------------
DROP TABLE IF EXISTS `bro_hook`;
CREATE TABLE `bro_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
-- Records of bro_hook
-- ----------------------------
INSERT INTO `bro_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `bro_hook` VALUES ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `bro_hook` VALUES ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `bro_hook` VALUES ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `bro_hook` VALUES ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `bro_hook` VALUES ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `bro_hook` VALUES ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `bro_hook` VALUES ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `bro_hook` VALUES ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `bro_hook` VALUES ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `bro_hook` VALUES ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `bro_hook` VALUES ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `bro_hook` VALUES ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `bro_hook` VALUES ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `bro_hook` VALUES ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `bro_hook` VALUES ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `bro_hook` VALUES ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `bro_hook` VALUES ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `bro_hook` VALUES ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `bro_hook` VALUES ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `bro_hook` VALUES ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `bro_hook` VALUES ('22', '3', '1', '评论区', 'comment', '', '评论区');
INSERT INTO `bro_hook` VALUES ('23', '3', '1', '留言区', 'guestbook', '', '留言区');
INSERT INTO `bro_hook` VALUES ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `bro_hook` VALUES ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `bro_hook` VALUES ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `bro_hook` VALUES ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `bro_hook` VALUES ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `bro_hook` VALUES ('29', '3', '0', '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `bro_hook` VALUES ('30', '2', '0', '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `bro_hook` VALUES ('31', '2', '0', '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');

-- ----------------------------
-- Table structure for bro_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `bro_hook_plugin`;
CREATE TABLE `bro_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of bro_hook_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for bro_link
-- ----------------------------
DROP TABLE IF EXISTS `bro_link`;
CREATE TABLE `bro_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
-- Records of bro_link
-- ----------------------------
INSERT INTO `bro_link` VALUES ('1', '1', '1', '8', '百荣官网', 'http://bronet.cn', '百荣科技', '', '_blank', '');

-- ----------------------------
-- Table structure for bro_nav
-- ----------------------------
DROP TABLE IF EXISTS `bro_nav`;
CREATE TABLE `bro_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of bro_nav
-- ----------------------------
INSERT INTO `bro_nav` VALUES ('1', '1', '主导航', '主导航');
INSERT INTO `bro_nav` VALUES ('2', '0', '底部导航', '');

-- ----------------------------
-- Table structure for bro_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `bro_nav_menu`;
CREATE TABLE `bro_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of bro_nav_menu
-- ----------------------------
INSERT INTO `bro_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1');

-- ----------------------------
-- Table structure for bro_option
-- ----------------------------
DROP TABLE IF EXISTS `bro_option`;
CREATE TABLE `bro_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='全站配置表';

-- ----------------------------
-- Records of bro_option
-- ----------------------------
INSERT INTO `bro_option` VALUES ('7', '1', 'site_info', '{\"site_name\":\"\\u5e15\\u91d1\\u68ee\\u60a3\\u8005\\u7cfb\\u7edf\",\"site_seo_title\":\"\\u5e15\\u91d1\\u68ee\\u60a3\\u8005\\u7ba1\\u7406\\u7cfb\\u7edf\",\"site_seo_keywords\":\"\\u5e15\\u91d1\\u68ee\\u60a3\\u8005\\u7ba1\\u7406\\u7cfb\\u7edf\",\"site_seo_description\":\"bronet\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_icp\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\",\"urlmode\":\"1\",\"html_suffix\":\"\",\"visit_hour\":\"1000\",\"tips_interval\":\"0.1\"}');
INSERT INTO `bro_option` VALUES ('8', '1', 'cmf_settings', '{\"open_registration\":\"0\",\"banned_usernames\":\"\"}');
INSERT INTO `bro_option` VALUES ('9', '1', 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `bro_option` VALUES ('10', '1', 'admin_settings', '{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}');
INSERT INTO `bro_option` VALUES ('11', '1', 'storage', '{\"type\":\"Local\"}');

-- ----------------------------
-- Table structure for bro_plugin
-- ----------------------------
DROP TABLE IF EXISTS `bro_plugin`;
CREATE TABLE `bro_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
-- Records of bro_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for bro_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `bro_portal_category`;
CREATE TABLE `bro_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of bro_portal_category
-- ----------------------------
INSERT INTO `bro_portal_category` VALUES ('1', '0', '0', '1', '0', '10000', '测试', '', '0-1', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');

-- ----------------------------
-- Table structure for bro_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `bro_portal_category_post`;
CREATE TABLE `bro_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of bro_portal_category_post
-- ----------------------------
INSERT INTO `bro_portal_category_post` VALUES ('1', '1', '1', '10000', '1');
INSERT INTO `bro_portal_category_post` VALUES ('2', '2', '1', '10000', '0');

-- ----------------------------
-- Table structure for bro_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `bro_portal_post`;
CREATE TABLE `bro_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`) USING BTREE,
  KEY `post_parent` (`parent_id`) USING BTREE,
  KEY `post_author` (`user_id`) USING BTREE,
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of bro_portal_post
-- ----------------------------
INSERT INTO `bro_portal_post` VALUES ('1', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1548001060', '1548001060', '1548001049', '0', '测试1', '', '', '', null, null, '{\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `bro_portal_post` VALUES ('2', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1548001070', '1548001070', '1548001063', '1548076899', '测试2', '', '', '', null, null, '{\"thumbnail\":\"\",\"template\":\"\"}');

-- ----------------------------
-- Table structure for bro_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `bro_portal_tag`;
CREATE TABLE `bro_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of bro_portal_tag
-- ----------------------------

-- ----------------------------
-- Table structure for bro_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `bro_portal_tag_post`;
CREATE TABLE `bro_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of bro_portal_tag_post
-- ----------------------------

-- ----------------------------
-- Table structure for bro_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `bro_recycle_bin`;
CREATE TABLE `bro_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
-- Records of bro_recycle_bin
-- ----------------------------
INSERT INTO `bro_recycle_bin` VALUES ('1', '2', '1548076899', 'portal_post', '测试2');

-- ----------------------------
-- Table structure for bro_role
-- ----------------------------
DROP TABLE IF EXISTS `bro_role`;
CREATE TABLE `bro_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of bro_role
-- ----------------------------
INSERT INTO `bro_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `bro_role` VALUES ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for bro_role_user
-- ----------------------------
DROP TABLE IF EXISTS `bro_role_user`;
CREATE TABLE `bro_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of bro_role_user
-- ----------------------------
INSERT INTO `bro_role_user` VALUES ('11', '2', '9');
INSERT INTO `bro_role_user` VALUES ('12', '1', '14');
INSERT INTO `bro_role_user` VALUES ('13', '2', '15');

-- ----------------------------
-- Table structure for bro_route
-- ----------------------------
DROP TABLE IF EXISTS `bro_route`;
CREATE TABLE `bro_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
-- Records of bro_route
-- ----------------------------
INSERT INTO `bro_route` VALUES ('1', '5000', '1', '2', 'portal/List/index?id=1', '1');
INSERT INTO `bro_route` VALUES ('2', '4999', '1', '2', 'portal/Article/index?cid=1', '1/:id');

-- ----------------------------
-- Table structure for bro_scale_adl
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_adl`;
CREATE TABLE `bro_scale_adl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `remark` varchar(255) DEFAULT NULL,
  `score` decimal(5,1) NOT NULL DEFAULT '0.0' COMMENT '总分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='日常生活能力量表（ADL）';

-- ----------------------------
-- Records of bro_scale_adl
-- ----------------------------
INSERT INTO `bro_scale_adl` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_adl` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_adl` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_adl` VALUES ('9', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_adl` VALUES ('10', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_adl` VALUES ('11', '30', '1', '1554777448', '1554777448', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_adl` VALUES ('12', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_adl` VALUES ('14', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_adl` VALUES ('15', '33', '1', '1554859778', '1554988801', '111', 'a:1:{s:3:\"adl\";a:8:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"3\";i:7;s:1:\"2\";i:8;s:1:\"1\";}}', '111111', '20.0', '0');

-- ----------------------------
-- Table structure for bro_scale_dlb
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_dlb`;
CREATE TABLE `bro_scale_dlb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `remark` varchar(255) DEFAULT NULL,
  `score` decimal(5,1) NOT NULL DEFAULT '0.0' COMMENT '总分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='路易体痴呆专用病史及症状';

-- ----------------------------
-- Records of bro_scale_dlb
-- ----------------------------
INSERT INTO `bro_scale_dlb` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_dlb` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_dlb` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_dlb` VALUES ('10', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_dlb` VALUES ('11', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_dlb` VALUES ('12', '30', '1', '1554777448', '1554777448', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_dlb` VALUES ('13', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_dlb` VALUES ('15', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_dlb` VALUES ('16', '33', '1', '1554859778', '1554990202', '111', 'a:1:{s:3:\"dlb\";a:14:{i:1;a:2:{s:5:\"radio\";s:1:\"2\";s:5:\"date1\";s:10:\"2019-04-11\";}i:2;a:3:{s:5:\"radio\";s:1:\"2\";s:5:\"date1\";s:10:\"2019-04-12\";s:5:\"date2\";s:1:\"2\";}i:3;a:3:{s:5:\"radio\";s:1:\"2\";s:5:\"date1\";s:10:\"2019-04-01\";s:5:\"date2\";s:1:\"3\";}i:4;a:2:{s:5:\"radio\";s:1:\"2\";s:5:\"date1\";s:10:\"2019-04-13\";}i:5;a:1:{s:5:\"radio\";s:1:\"2\";}i:6;a:2:{s:5:\"radio\";s:1:\"2\";s:5:\"date1\";s:10:\"2019-04-14\";}i:7;a:2:{s:5:\"radio\";s:1:\"2\";s:5:\"date1\";s:10:\"2019-04-15\";}i:8;a:2:{s:5:\"radio\";s:1:\"2\";s:5:\"date1\";s:10:\"2019-04-16\";}i:9;a:1:{s:5:\"radio\";s:1:\"2\";}i:10;a:1:{s:5:\"radio\";s:1:\"2\";}i:11;a:1:{s:5:\"radio\";s:1:\"2\";}i:12;a:1:{s:5:\"radio\";s:1:\"2\";}i:13;a:1:{s:5:\"radio\";s:1:\"2\";}i:14;a:1:{s:5:\"radio\";s:1:\"2\";}}}', '11111', '12.0', '0');

-- ----------------------------
-- Table structure for bro_scale_ess
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_ess`;
CREATE TABLE `bro_scale_ess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `remark` varchar(255) DEFAULT NULL,
  `score` decimal(5,1) NOT NULL DEFAULT '0.0' COMMENT '总分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='爱泼沃斯思睡量表（ESS）';

-- ----------------------------
-- Records of bro_scale_ess
-- ----------------------------
INSERT INTO `bro_scale_ess` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_ess` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_ess` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_ess` VALUES ('10', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_ess` VALUES ('11', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_ess` VALUES ('12', '30', '1', '1554777448', '1554777448', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_ess` VALUES ('13', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_ess` VALUES ('15', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_ess` VALUES ('16', '33', '1', '1554859778', '1554916174', '111', 'a:1:{s:3:\"ess\";a:8:{i:1;s:1:\"0\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"3\";i:6;s:1:\"2\";i:7;s:1:\"1\";i:8;s:1:\"0\";}}', '1111111', '12.0', '0');

-- ----------------------------
-- Table structure for bro_scale_fai
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_fai`;
CREATE TABLE `bro_scale_fai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `remark` varchar(255) DEFAULT NULL,
  `score` decimal(5,1) NOT NULL DEFAULT '0.0' COMMENT '总分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='疲劳评定量表';

-- ----------------------------
-- Records of bro_scale_fai
-- ----------------------------
INSERT INTO `bro_scale_fai` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_fai` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_fai` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_fai` VALUES ('9', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_fai` VALUES ('10', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_fai` VALUES ('11', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_fai` VALUES ('12', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_fai` VALUES ('14', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_fai` VALUES ('15', '33', '1', '1554859778', '1554917077', '1111', 'a:1:{s:3:\"ess\";a:10:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"1\";i:4;s:1:\"0\";i:9;s:1:\"1\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"1\";i:13;s:1:\"1\";i:14;s:1:\"0\";}}', '111111', '5.0', '0');

-- ----------------------------
-- Table structure for bro_scale_frozen
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_frozen`;
CREATE TABLE `bro_scale_frozen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '项目',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `score_item` varchar(255) DEFAULT NULL,
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COMMENT='新版冻结步态问卷';

-- ----------------------------
-- Records of bro_scale_frozen
-- ----------------------------
INSERT INTO `bro_scale_frozen` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_frozen` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_frozen` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_frozen` VALUES ('12', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', null, '0');
INSERT INTO `bro_scale_frozen` VALUES ('13', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', null, '15');
INSERT INTO `bro_scale_frozen` VALUES ('14', '30', '1', '1554777449', '1554781423', '测试1', 'a:9:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}', '诉讼书', '11.0', 'a:2:{i:1;s:1:\"8\";i:2;s:1:\"3\";}', '16');
INSERT INTO `bro_scale_frozen` VALUES ('15', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', null, '0');
INSERT INTO `bro_scale_frozen` VALUES ('17', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', null, '17');
INSERT INTO `bro_scale_frozen` VALUES ('18', '33', '1', '1554859778', '1554995316', '111', 'a:9:{i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"1\";i:5;s:1:\"0\";i:6;s:1:\"1\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";}', '12345', '2.0', 'a:2:{i:1;s:1:\"2\";i:2;s:1:\"0\";}', '0');

-- ----------------------------
-- Table structure for bro_scale_hama
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_hama`;
CREATE TABLE `bro_scale_hama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '选项答案',
  `remark` text COMMENT '备注',
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='汉密尔顿焦虑量表（HAMA）';

-- ----------------------------
-- Records of bro_scale_hama
-- ----------------------------
INSERT INTO `bro_scale_hama` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_hama` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_hama` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_hama` VALUES ('10', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_hama` VALUES ('11', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_hama` VALUES ('12', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_hama` VALUES ('13', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_hama` VALUES ('15', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_hama` VALUES ('16', '33', '1', '1554859778', '1554913259', '111', 'a:1:{s:4:\"hama\";a:12:{i:1;s:1:\"0\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:1:\"4\";i:7;s:1:\"3\";i:8;s:1:\"2\";i:9;s:1:\"1\";i:10;s:1:\"0\";i:11;s:1:\"1\";i:12;s:1:\"2\";}}', '1111111', '23.0', '0');

-- ----------------------------
-- Table structure for bro_scale_hamd
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_hamd`;
CREATE TABLE `bro_scale_hamd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '选项',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='汉密顿抑郁量表（HAMD）';

-- ----------------------------
-- Records of bro_scale_hamd
-- ----------------------------
INSERT INTO `bro_scale_hamd` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_hamd` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_hamd` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_hamd` VALUES ('10', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_hamd` VALUES ('11', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_hamd` VALUES ('12', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_hamd` VALUES ('13', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_hamd` VALUES ('15', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_hamd` VALUES ('16', '33', '1', '1554859778', '1554912679', '111', 'a:1:{s:4:\"mmse\";a:6:{i:1;s:1:\"0\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"1\";i:6;s:1:\"0\";}}', '111111', '6.0', '0');

-- ----------------------------
-- Table structure for bro_scale_maes
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_maes`;
CREATE TABLE `bro_scale_maes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '选项j结果',
  `remark` varchar(255) DEFAULT NULL COMMENT 'b备注',
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='改良淡漠评定量表';

-- ----------------------------
-- Records of bro_scale_maes
-- ----------------------------
INSERT INTO `bro_scale_maes` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_maes` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_maes` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_maes` VALUES ('10', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_maes` VALUES ('11', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_maes` VALUES ('12', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_maes` VALUES ('13', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_maes` VALUES ('15', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_maes` VALUES ('16', '33', '1', '1554859778', '1554913929', '111', 'a:1:{s:4:\"hama\";a:14:{i:1;s:1:\"3\";i:2;s:1:\"2\";i:3;s:1:\"1\";i:4;s:1:\"0\";i:5;s:1:\"1\";i:6;s:1:\"2\";i:7;s:1:\"3\";i:8;s:1:\"2\";i:9;s:1:\"0\";i:10;s:1:\"1\";i:11;s:1:\"2\";i:12;s:1:\"3\";i:13;s:1:\"2\";i:14;s:1:\"1\";}}', '111111', '23.0', '0');

-- ----------------------------
-- Table structure for bro_scale_mds_updrs
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_mds_updrs`;
CREATE TABLE `bro_scale_mds_updrs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `user_sex` tinyint(4) DEFAULT '0' COMMENT '性别,1-男，2 女',
  `user_age` float(5,0) DEFAULT '0',
  `clinic_num` varchar(50) DEFAULT NULL COMMENT '门诊号',
  `valuation_date` date DEFAULT NULL COMMENT '评估日期',
  `source` int(11) DEFAULT NULL COMMENT '信息来源',
  `part1` text COMMENT '日常生活非运动症状体验',
  `part2` text COMMENT '日常生活运动症状体验',
  `part3` text COMMENT '运动功能检查',
  `part4` text COMMENT 'PartⅣ    运动并发症',
  `part5` text,
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0',
  `items` text,
  `score_item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='PD统一评分量表(MDS-UPDRS)';

-- ----------------------------
-- Records of bro_scale_mds_updrs
-- ----------------------------
INSERT INTO `bro_scale_mds_updrs` VALUES ('5', '1', '1', '1548163692', null, null, null, null, null, null, null, null, null, null, null, null, null, '0.0', '0', null, null);
INSERT INTO `bro_scale_mds_updrs` VALUES ('3', '1', '1', '1548087797', null, null, null, null, null, null, null, null, null, null, null, null, null, '0.0', '0', null, null);
INSERT INTO `bro_scale_mds_updrs` VALUES ('17', '30', '1', '1554777174', '1554777174', null, null, '0', '0', null, null, null, null, null, null, null, null, '0.0', '0', 'a:0:{}', null);
INSERT INTO `bro_scale_mds_updrs` VALUES ('18', '30', '1', '1554777372', '1554777372', null, null, '0', '0', null, null, null, null, null, null, null, null, '0.0', '15', 'a:0:{}', null);
INSERT INTO `bro_scale_mds_updrs` VALUES ('19', '30', '1', '1554777448', '1554781366', '标题3', null, '0', '0', '', '0000-00-00', null, 'a:1:{i:1;a:1:{s:5:\"radio\";s:1:\"4\";}}', 'a:1:{s:1:\"d\";a:1:{s:4:\"date\";s:0:\"\";}}', null, null, null, '4.0', '16', 'a:0:{}', null);
INSERT INTO `bro_scale_mds_updrs` VALUES ('20', '31', '1', '1554792099', '1554792099', null, null, '0', '0', null, null, null, null, null, null, null, null, '0.0', '0', 'a:0:{}', null);
INSERT INTO `bro_scale_mds_updrs` VALUES ('22', '31', '1', '1554817658', '1554817658', null, null, '0', '0', null, null, null, null, null, null, null, null, '0.0', '17', 'a:0:{}', null);
INSERT INTO `bro_scale_mds_updrs` VALUES ('23', '33', '1', '1554859778', '1555002555', '111', null, '0', '0', '', '0000-00-00', null, 'a:13:{i:1;a:1:{s:5:\"radio\";s:1:\"0\";}i:2;a:1:{s:5:\"radio\";s:1:\"1\";}i:3;a:1:{s:5:\"radio\";s:1:\"0\";}i:4;a:1:{s:5:\"radio\";s:1:\"1\";}i:5;a:1:{s:5:\"radio\";s:1:\"0\";}i:6;a:1:{s:5:\"radio\";s:1:\"1\";}i:7;a:1:{s:5:\"radio\";s:1:\"0\";}i:8;a:1:{s:5:\"radio\";s:1:\"1\";}i:9;a:1:{s:5:\"radio\";s:1:\"0\";}i:10;a:1:{s:5:\"radio\";s:1:\"1\";}i:11;a:1:{s:5:\"radio\";s:1:\"0\";}i:12;a:1:{s:5:\"radio\";s:1:\"1\";}i:13;a:1:{s:5:\"radio\";s:1:\"0\";}}', 'a:17:{i:1;a:1:{s:5:\"radio\";s:1:\"0\";}i:2;a:1:{s:5:\"radio\";s:1:\"1\";}i:3;a:1:{s:5:\"radio\";s:1:\"0\";}i:4;a:1:{s:5:\"radio\";s:1:\"1\";}i:5;a:1:{s:5:\"radio\";s:1:\"0\";}i:6;a:1:{s:5:\"radio\";s:1:\"1\";}i:7;a:1:{s:5:\"radio\";s:1:\"0\";}i:8;a:1:{s:5:\"radio\";s:1:\"1\";}i:9;a:1:{s:5:\"radio\";s:1:\"0\";}i:10;a:1:{s:5:\"radio\";s:1:\"1\";}i:11;a:1:{s:5:\"radio\";s:1:\"0\";}i:12;a:1:{s:5:\"radio\";s:1:\"1\";}i:13;a:1:{s:5:\"radio\";s:1:\"0\";}s:1:\"a\";a:1:{s:5:\"radio\";s:1:\"1\";}s:1:\"b\";a:1:{s:5:\"radio\";s:1:\"1\";}s:1:\"c\";a:1:{s:5:\"radio\";s:1:\"1\";}s:1:\"d\";a:1:{s:4:\"date\";s:10:\"2019-04-12\";}}', 'a:34:{i:1;a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"3a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"3b\";a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"3c\";a:1:{s:5:\"radio\";s:1:\"3\";}s:2:\"3d\";a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"3e\";a:1:{s:5:\"radio\";s:1:\"3\";}s:2:\"4a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"4b\";a:1:{s:5:\"radio\";s:1:\"3\";}s:2:\"5a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"5b\";a:1:{s:5:\"radio\";s:1:\"3\";}s:2:\"6a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"6b\";a:1:{s:5:\"radio\";s:1:\"3\";}s:2:\"7a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"7b\";a:1:{s:5:\"radio\";s:1:\"3\";}s:2:\"8a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:2:\"8b\";a:1:{s:5:\"radio\";s:1:\"3\";}i:9;a:1:{s:5:\"radio\";s:1:\"2\";}i:10;a:1:{s:5:\"radio\";s:1:\"3\";}i:11;a:1:{s:5:\"radio\";s:1:\"2\";}i:12;a:1:{s:5:\"radio\";s:1:\"3\";}i:13;a:1:{s:5:\"radio\";s:1:\"2\";}i:14;a:1:{s:5:\"radio\";s:1:\"3\";}s:3:\"15a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:3:\"15b\";a:1:{s:5:\"radio\";s:1:\"3\";}s:3:\"16a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:3:\"16b\";a:1:{s:5:\"radio\";s:1:\"3\";}s:3:\"17a\";a:1:{s:5:\"radio\";s:1:\"2\";}s:3:\"17b\";a:1:{s:5:\"radio\";s:1:\"3\";}s:3:\"17c\";a:1:{s:5:\"radio\";s:1:\"2\";}s:3:\"17d\";a:1:{s:5:\"radio\";s:1:\"3\";}s:3:\"17e\";a:1:{s:5:\"radio\";s:1:\"2\";}i:18;a:1:{s:5:\"radio\";s:1:\"2\";}i:19;a:1:{s:5:\"radio\";s:1:\"1\";}i:20;a:1:{s:5:\"radio\";s:1:\"1\";}}', 'a:6:{i:1;a:1:{s:5:\"radio\";s:1:\"4\";}i:2;a:1:{s:5:\"radio\";s:1:\"4\";}i:3;a:1:{s:5:\"radio\";s:1:\"4\";}i:4;a:1:{s:5:\"radio\";s:1:\"4\";}i:5;a:1:{s:5:\"radio\";s:1:\"4\";}i:6;a:1:{s:5:\"radio\";s:1:\"4\";}}', null, '114.0', '0', 'a:0:{}', 'a:4:{s:5:\"part1\";s:1:\"6\";s:5:\"part2\";s:1:\"6\";s:5:\"part3\";s:2:\"78\";s:5:\"part4\";s:2:\"24\";}');

-- ----------------------------
-- Table structure for bro_scale_mmse
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_mmse`;
CREATE TABLE `bro_scale_mmse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '项目',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `score_item` varchar(255) DEFAULT NULL,
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='WAIS-III数字光度量表';

-- ----------------------------
-- Records of bro_scale_mmse
-- ----------------------------
INSERT INTO `bro_scale_mmse` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_mmse` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_mmse` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_mmse` VALUES ('11', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', null, '0');
INSERT INTO `bro_scale_mmse` VALUES ('12', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', null, '15');
INSERT INTO `bro_scale_mmse` VALUES ('13', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', null, '16');
INSERT INTO `bro_scale_mmse` VALUES ('14', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', null, '0');
INSERT INTO `bro_scale_mmse` VALUES ('16', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', null, '17');
INSERT INTO `bro_scale_mmse` VALUES ('17', '33', '1', '1554859778', '1554910772', '111', 'a:1:{s:4:\"mmse\";a:5:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"1\";i:11;s:1:\"1\";i:12;s:1:\"1\";}}', '', '4.0', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";}', '0');

-- ----------------------------
-- Table structure for bro_scale_moca
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_moca`;
CREATE TABLE `bro_scale_moca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `remark` varchar(255) DEFAULT NULL,
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='蒙特利尔认知评估量表（MoCA）';

-- ----------------------------
-- Records of bro_scale_moca
-- ----------------------------
INSERT INTO `bro_scale_moca` VALUES ('10', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_moca` VALUES ('11', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_moca` VALUES ('12', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_moca` VALUES ('13', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_moca` VALUES ('15', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_moca` VALUES ('16', '33', '1', '1554859778', '1554912456', '111', 'a:48:{i:11;s:0:\"\";i:12;s:0:\"\";i:13;s:0:\"\";i:1;a:1:{s:1:\"t\";s:1:\"1\";}i:21;s:0:\"\";i:22;s:0:\"\";i:23;s:0:\"\";i:2;a:1:{s:1:\"t\";s:1:\"2\";}i:31;s:0:\"\";i:32;s:0:\"\";i:33;s:0:\"\";i:34;s:0:\"\";i:35;s:0:\"\";i:36;s:0:\"\";i:37;s:0:\"\";i:38;s:0:\"\";i:39;s:0:\"\";i:310;s:0:\"\";i:3;a:3:{s:2:\"t1\";s:1:\"3\";s:2:\"t2\";s:1:\"4\";s:2:\"t3\";s:1:\"5\";}i:41;s:0:\"\";i:42;s:0:\"\";i:43;s:0:\"\";i:44;s:0:\"\";i:45;s:0:\"\";i:46;s:0:\"\";i:47;s:0:\"\";i:48;s:0:\"\";i:4;a:1:{s:1:\"t\";s:1:\"6\";}i:51;s:0:\"\";i:5;a:3:{s:2:\"t1\";s:1:\"7\";s:2:\"t2\";s:1:\"8\";s:2:\"t3\";s:1:\"9\";}i:52;s:0:\"\";i:53;s:0:\"\";i:61;s:0:\"\";i:62;s:0:\"\";i:6;a:1:{s:1:\"t\";s:2:\"10\";}i:71;s:0:\"\";i:72;s:0:\"\";i:73;s:0:\"\";i:74;s:0:\"\";i:75;s:0:\"\";i:7;a:1:{s:1:\"t\";s:2:\"11\";}i:81;s:0:\"\";i:82;s:0:\"\";i:83;s:0:\"\";i:84;s:0:\"\";i:85;s:0:\"\";i:86;s:0:\"\";i:8;a:1:{s:1:\"t\";s:2:\"12\";}}', '123213', '78.0', '0');

-- ----------------------------
-- Table structure for bro_scale_nmss
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_nmss`;
CREATE TABLE `bro_scale_nmss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '选项答案',
  `remark` text COMMENT '备注',
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='非运动症状筛查量表';

-- ----------------------------
-- Records of bro_scale_nmss
-- ----------------------------
INSERT INTO `bro_scale_nmss` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_nmss` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_nmss` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_nmss` VALUES ('11', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_nmss` VALUES ('12', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_nmss` VALUES ('13', '30', '1', '1554777449', '1554781389', '标题3', 'a:1:{s:2:\"sc\";a:1:{i:1;s:1:\"2\";}}', '', '2.0', '16');
INSERT INTO `bro_scale_nmss` VALUES ('14', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_nmss` VALUES ('16', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_nmss` VALUES ('17', '33', '1', '1554859778', '1554910050', '111', 'a:1:{s:2:\"sc\";a:3:{i:1;s:1:\"2\";i:2;s:1:\"1\";i:3;s:1:\"0\";}}', '', '3.0', '0');

-- ----------------------------
-- Table structure for bro_scale_npi
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_npi`;
CREATE TABLE `bro_scale_npi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `remark` varchar(255) DEFAULT NULL,
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `score1` decimal(5,1) DEFAULT '0.0',
  `score2` decimal(5,1) DEFAULT '0.0',
  `score3` decimal(5,1) DEFAULT '0.0',
  `score4` decimal(5,1) DEFAULT '0.0',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='神经精神症状问卷（NPI）';

-- ----------------------------
-- Records of bro_scale_npi
-- ----------------------------
INSERT INTO `bro_scale_npi` VALUES ('9', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0.0', '0.0', '0.0', '0.0', '0');
INSERT INTO `bro_scale_npi` VALUES ('10', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '0.0', '0.0', '0.0', '0.0', '15');
INSERT INTO `bro_scale_npi` VALUES ('11', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '0.0', '0.0', '0.0', '0.0', '16');
INSERT INTO `bro_scale_npi` VALUES ('12', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0.0', '0.0', '0.0', '0.0', '0');
INSERT INTO `bro_scale_npi` VALUES ('14', '31', '1', '1554817658', '1554817658', null, 'a:0:{}', null, '0.0', '0.0', '0.0', '0.0', '0.0', '17');
INSERT INTO `bro_scale_npi` VALUES ('15', '33', '1', '1554859778', '1554896731', '111', 'a:1:{s:3:\"npi\";a:12:{i:1;a:5:{i:1;s:1:\"1\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}i:2;a:4:{i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}i:3;a:4:{i:2;s:1:\"1\";i:3;s:0:\"\";i:4;s:1:\"0\";i:5;s:0:\"\";}i:4;a:4:{i:2;s:1:\"1\";i:3;s:0:\"\";i:4;s:1:\"0\";i:5;s:0:\"\";}i:5;a:4:{i:2;s:1:\"1\";i:3;s:0:\"\";i:4;s:1:\"0\";i:5;s:0:\"\";}i:6;a:4:{i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}i:7;a:4:{i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}i:8;a:4:{i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}i:9;a:4:{i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}i:10;a:4:{i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}i:11;a:4:{i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}i:12;a:4:{i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";}}}', '', '0.0', '3.0', '0.0', '0.0', '0.0', '0');

-- ----------------------------
-- Table structure for bro_scale_pdql
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_pdql`;
CREATE TABLE `bro_scale_pdql` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `remark` varchar(255) DEFAULT NULL,
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='PD生活质量问卷（PDQL-39';

-- ----------------------------
-- Records of bro_scale_pdql
-- ----------------------------
INSERT INTO `bro_scale_pdql` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_pdql` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_pdql` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_pdql` VALUES ('10', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_pdql` VALUES ('11', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_pdql` VALUES ('12', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_pdql` VALUES ('13', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_pdql` VALUES ('15', '31', '1', '1554817659', '1554817659', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_pdql` VALUES ('16', '33', '1', '1554859778', '1554988297', '111', 'a:1:{s:3:\"npi\";a:10:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"5\";i:7;s:1:\"4\";i:8;s:1:\"3\";i:9;s:1:\"2\";i:10;s:1:\"1\";}}', '111111', '30.0', '0');

-- ----------------------------
-- Table structure for bro_scale_psqi
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_psqi`;
CREATE TABLE `bro_scale_psqi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `remark` varchar(255) DEFAULT NULL,
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='匹茨堡睡眠质量指数（PSQI）量表';

-- ----------------------------
-- Records of bro_scale_psqi
-- ----------------------------
INSERT INTO `bro_scale_psqi` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_psqi` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_psqi` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', '0');
INSERT INTO `bro_scale_psqi` VALUES ('9', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_psqi` VALUES ('10', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_psqi` VALUES ('11', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_psqi` VALUES ('12', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_psqi` VALUES ('14', '31', '1', '1554817659', '1554817659', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_psqi` VALUES ('15', '33', '1', '1554859778', '1554915907', '111', 'a:1:{s:4:\"psqi\";a:9:{i:1;s:1:\"1\";i:2;s:1:\"0\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;a:11:{s:1:\"a\";s:1:\"0\";s:1:\"b\";s:1:\"1\";s:1:\"c\";s:1:\"2\";s:1:\"d\";s:1:\"3\";s:1:\"e\";s:1:\"2\";s:1:\"f\";s:1:\"1\";s:1:\"g\";s:1:\"0\";s:1:\"h\";s:1:\"1\";s:1:\"i\";s:1:\"2\";s:1:\"j\";s:1:\"3\";s:1:\"k\";s:5:\"12345\";}i:6;s:1:\"0\";i:7;s:1:\"1\";i:8;s:1:\"2\";i:9;s:1:\"3\";}}', '1111', '21.0', '0');

-- ----------------------------
-- Table structure for bro_scale_sc_en
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_sc_en`;
CREATE TABLE `bro_scale_sc_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text,
  `remark` text,
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='Schwab-England残疾量表';

-- ----------------------------
-- Records of bro_scale_sc_en
-- ----------------------------
INSERT INTO `bro_scale_sc_en` VALUES ('9', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_sc_en` VALUES ('10', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', '15');
INSERT INTO `bro_scale_sc_en` VALUES ('11', '30', '1', '1554777449', '1554777449', null, 'a:0:{}', null, '0.0', '16');
INSERT INTO `bro_scale_sc_en` VALUES ('12', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', '0');
INSERT INTO `bro_scale_sc_en` VALUES ('14', '31', '1', '1554817659', '1554817659', null, 'a:0:{}', null, '0.0', '17');
INSERT INTO `bro_scale_sc_en` VALUES ('15', '33', '1', '1554859778', '1554908370', '11', 'a:1:{s:2:\"sc\";a:1:{s:5:\"radio\";s:3:\"100\";}}', '', '100.0', '0');

-- ----------------------------
-- Table structure for bro_scale_stroop
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_stroop`;
CREATE TABLE `bro_scale_stroop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '项目',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `score_item` varchar(255) DEFAULT NULL,
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='Stroop色词量表';

-- ----------------------------
-- Records of bro_scale_stroop
-- ----------------------------
INSERT INTO `bro_scale_stroop` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_stroop` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_stroop` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_stroop` VALUES ('11', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', null, '0');
INSERT INTO `bro_scale_stroop` VALUES ('12', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', null, '15');
INSERT INTO `bro_scale_stroop` VALUES ('13', '30', '1', '1554777449', '1554780268', '标题3', 'a:3:{i:1;s:9:\"我问问\";i:2;s:9:\"我问问\";i:3;s:18:\"我我我我我我\";}', '我我我我我我', '0.0', null, '16');
INSERT INTO `bro_scale_stroop` VALUES ('14', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', null, '0');
INSERT INTO `bro_scale_stroop` VALUES ('16', '31', '1', '1554817659', '1554817659', null, 'a:0:{}', null, '0.0', null, '17');
INSERT INTO `bro_scale_stroop` VALUES ('17', '33', '1', '1554859778', '1554993016', '111', 'a:3:{i:1;s:1:\"a\";i:2;s:1:\"b\";i:3;s:1:\"c\";}', '11111', '0.0', null, '0');

-- ----------------------------
-- Table structure for bro_scale_wais
-- ----------------------------
DROP TABLE IF EXISTS `bro_scale_wais`;
CREATE TABLE `bro_scale_wais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '项目',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `score` decimal(5,1) DEFAULT '0.0' COMMENT '评分',
  `score_item` varchar(255) DEFAULT NULL,
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='简易智力状态检查量表（MMSE）';

-- ----------------------------
-- Records of bro_scale_wais
-- ----------------------------
INSERT INTO `bro_scale_wais` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_wais` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_wais` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0.0', null, '0');
INSERT INTO `bro_scale_wais` VALUES ('11', '30', '1', '1554777174', '1554777174', null, 'a:0:{}', null, '0.0', null, '0');
INSERT INTO `bro_scale_wais` VALUES ('12', '30', '1', '1554777372', '1554777372', null, 'a:0:{}', null, '0.0', null, '15');
INSERT INTO `bro_scale_wais` VALUES ('13', '30', '1', '1554777449', '1554781515', '测试3', 'a:2:{i:1;s:2:\"50\";i:2;s:2:\"20\";}', '水水水水', '70.0', null, '16');
INSERT INTO `bro_scale_wais` VALUES ('14', '31', '1', '1554792099', '1554792099', null, 'a:0:{}', null, '0.0', null, '0');
INSERT INTO `bro_scale_wais` VALUES ('16', '31', '1', '1554817659', '1554817659', null, 'a:0:{}', null, '0.0', null, '17');
INSERT INTO `bro_scale_wais` VALUES ('17', '33', '1', '1554859778', '1554992910', '111', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"0\";}', '11111', '1.0', null, '0');

-- ----------------------------
-- Table structure for bro_slide
-- ----------------------------
DROP TABLE IF EXISTS `bro_slide`;
CREATE TABLE `bro_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
-- Records of bro_slide
-- ----------------------------

-- ----------------------------
-- Table structure for bro_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `bro_slide_item`;
CREATE TABLE `bro_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_cid` (`slide_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of bro_slide_item
-- ----------------------------

-- ----------------------------
-- Table structure for bro_theme
-- ----------------------------
DROP TABLE IF EXISTS `bro_theme`;
CREATE TABLE `bro_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bro_theme
-- ----------------------------
INSERT INTO `bro_theme` VALUES ('19', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.bronet.cn', '', 'bronet', 'http://www.bronet.cn', 'zh-cn', 'bronet模板', 'bronet默认模板');

-- ----------------------------
-- Table structure for bro_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `bro_theme_file`;
CREATE TABLE `bro_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bro_theme_file
-- ----------------------------
INSERT INTO `bro_theme_file` VALUES ('105', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `bro_theme_file` VALUES ('106', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"bronet<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@bronet.cn\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"bronet<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@bronet.cn\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `bro_theme_file` VALUES ('107', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3bronet\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the bronet\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fbronet\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"bronet\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728bronet\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3bronet\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the bronet\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fbronet\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"bronet\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728bronet\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `bro_theme_file` VALUES ('108', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `bro_theme_file` VALUES ('109', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `bro_theme_file` VALUES ('110', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `bro_theme_file` VALUES ('111', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null);
INSERT INTO `bro_theme_file` VALUES ('112', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"bronet\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"bronet\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);

-- ----------------------------
-- Table structure for bro_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `bro_third_party_user`;
CREATE TABLE `bro_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- ----------------------------
-- Records of bro_third_party_user
-- ----------------------------

-- ----------------------------
-- Table structure for bro_user
-- ----------------------------
DROP TABLE IF EXISTS `bro_user`;
CREATE TABLE `bro_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_code` smallint(15) DEFAULT '10000' COMMENT '用户编号',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `age` int(3) DEFAULT '0' COMMENT '年龄',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `more` text COMMENT '扩展属性',
  `bind_admin_id` int(11) DEFAULT '0' COMMENT '隶属管理员',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_login` (`user_login`) USING BTREE,
  KEY `user_nickname` (`user_nickname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of bro_user
-- ----------------------------
INSERT INTO `bro_user` VALUES ('1', '1', '0', '0', '1554987393', '1', '0', '1547903496', '1', 'bronet', '###6344d598285238fe4d933a73db19773c', 'bronet', '0', '1064413915@qq.com', '', null, '', '', '127.0.0.1', '', '', null, '0');
INSERT INTO `bro_user` VALUES ('9', '1', '0', '0', '1554776285', '0', '0', '0', '1', 'admin1', '###6344d598285238fe4d933a73db19773c', '', '0', '1064413916@qq.com', '', '0', '', '', '111.164.178.105', '', '', null, '0');
INSERT INTO `bro_user` VALUES ('14', '1', '0', '0', '1550073869', '0', '0', '0', '1', '18353621521', '###6344d598285238fe4d933a73db19773c', '', '10000', '18353621521@qq.com', '', '0', '', '', '120.230.125.217', '', '', null, '0');
INSERT INTO `bro_user` VALUES ('15', '1', '0', '0', '1550073912', '0', '0', '0', '1', '18353621522', '###6344d598285238fe4d933a73db19773c', '', '10000', '18353621522@qq.com', '', '0', '', '', '120.230.125.217', '', '', null, '0');
INSERT INTO `bro_user` VALUES ('30', '2', '1', '1554739200', '0', '0', '0', '1554777174', '1', '', '', '111', '10001', '', '', '11', '', '', '', '', '18034115303', null, '1');
INSERT INTO `bro_user` VALUES ('31', '2', '2', '1554739200', '0', '0', '0', '1554792099', '1', '', '', '测试', '10002', '', '', '65', '', '', '', '', '18034115303', null, '1');
INSERT INTO `bro_user` VALUES ('33', '2', '1', '1554134400', '0', '0', '0', '1554859777', '1', '', '', '测试33', '10003', '', '', '1', '', '', '', '', '', null, '1');

-- ----------------------------
-- Table structure for bro_user_action
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_action`;
CREATE TABLE `bro_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

-- ----------------------------
-- Records of bro_user_action
-- ----------------------------
INSERT INTO `bro_user_action` VALUES ('1', '1', '0', '1', '1', '1', '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for bro_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_action_log`;
CREATE TABLE `bro_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`) USING BTREE,
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
-- Records of bro_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for bro_user_assay_check
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_assay_check`;
CREATE TABLE `bro_user_assay_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '检查项',
  `remark` text COMMENT '备注',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COMMENT='化验检查';

-- ----------------------------
-- Records of bro_user_assay_check
-- ----------------------------
INSERT INTO `bro_user_assay_check` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0');
INSERT INTO `bro_user_assay_check` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0');
INSERT INTO `bro_user_assay_check` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0');
INSERT INTO `bro_user_assay_check` VALUES ('24', '33', '1', '1554859777', '1554859777', null, null, null, '0');
INSERT INTO `bro_user_assay_check` VALUES ('18', '30', '1', '1554777174', '1554777174', null, null, null, '0');
INSERT INTO `bro_user_assay_check` VALUES ('19', '30', '1', '1554777372', '1554777372', null, null, null, '15');
INSERT INTO `bro_user_assay_check` VALUES ('20', '30', '1', '1554777448', '1554777448', null, null, null, '16');
INSERT INTO `bro_user_assay_check` VALUES ('21', '31', '1', '1554792099', '1554792099', null, null, null, '0');
INSERT INTO `bro_user_assay_check` VALUES ('23', '31', '1', '1554817658', '1554817658', null, null, null, '17');

-- ----------------------------
-- Table structure for bro_user_assay_check_copy1
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_assay_check_copy1`;
CREATE TABLE `bro_user_assay_check_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '检查项',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='化验检查';

-- ----------------------------
-- Records of bro_user_assay_check_copy1
-- ----------------------------
INSERT INTO `bro_user_assay_check_copy1` VALUES ('5', '1', '1', '1548163692', null, null, null, null);
INSERT INTO `bro_user_assay_check_copy1` VALUES ('3', '1', '1', '1548087797', null, null, null, null);
INSERT INTO `bro_user_assay_check_copy1` VALUES ('6', '1', '1', '1548163702', null, null, null, null);

-- ----------------------------
-- Table structure for bro_user_assist_check
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_assist_check`;
CREATE TABLE `bro_user_assist_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `head` text COMMENT '头部',
  `sleep` text COMMENT '多导睡眠监测',
  `eeg` text COMMENT '脑电图',
  `cardiokymography` text COMMENT '心肌造影',
  `remark` text COMMENT '备注',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COMMENT='辅助检查';

-- ----------------------------
-- Records of bro_user_assist_check
-- ----------------------------
INSERT INTO `bro_user_assist_check` VALUES ('5', '1', '1', '1548163692', null, null, null, null, null, null, null, '0');
INSERT INTO `bro_user_assist_check` VALUES ('3', '1', '1', '1548087797', null, null, null, null, null, null, null, '0');
INSERT INTO `bro_user_assist_check` VALUES ('6', '1', '1', '1548163702', null, null, null, null, null, null, null, '0');
INSERT INTO `bro_user_assist_check` VALUES ('18', '30', '1', '1554777174', '1554777174', null, null, null, null, null, null, '0');
INSERT INTO `bro_user_assist_check` VALUES ('19', '30', '1', '1554777372', '1554777372', null, null, null, null, null, null, '15');
INSERT INTO `bro_user_assist_check` VALUES ('20', '30', '1', '1554777448', '1554777448', null, null, null, null, null, null, '16');
INSERT INTO `bro_user_assist_check` VALUES ('21', '31', '1', '1554792099', '1554792099', null, null, null, null, null, null, '0');
INSERT INTO `bro_user_assist_check` VALUES ('23', '31', '1', '1554817658', '1554817658', null, null, null, null, null, null, '17');
INSERT INTO `bro_user_assist_check` VALUES ('24', '33', '1', '1554859777', '1554859777', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for bro_user_body_check
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_body_check`;
CREATE TABLE `bro_user_body_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `sign` text COMMENT '体征',
  `nerve` text COMMENT '自主神经',
  `motion` varchar(255) DEFAULT NULL COMMENT '步态异常',
  `remark` text COMMENT '备注',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COMMENT='体格检查';

-- ----------------------------
-- Records of bro_user_body_check
-- ----------------------------
INSERT INTO `bro_user_body_check` VALUES ('5', '1', null, '1', '1548163692', null, null, null, null, null, '0');
INSERT INTO `bro_user_body_check` VALUES ('3', '1', null, '1', '1548087797', null, null, null, null, null, '0');
INSERT INTO `bro_user_body_check` VALUES ('6', '1', null, '1', '1548163702', null, null, null, null, null, '0');
INSERT INTO `bro_user_body_check` VALUES ('20', '30', '测试', '1', '1554777174', '1554875251', 'a:1:{s:6:\"sign10\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}}', 'a:4:{s:6:\"nerve3\";s:0:\"\";s:6:\"nerve4\";s:0:\"\";s:6:\"nerve5\";s:0:\"\";s:6:\"nerve6\";s:0:\"\";}', 'a:1:{s:7:\"motion5\";s:1:\"0\";}', '', '0');
INSERT INTO `bro_user_body_check` VALUES ('21', '30', null, '1', '1554777372', '1554777372', null, null, null, null, '15');
INSERT INTO `bro_user_body_check` VALUES ('22', '30', null, '1', '1554777448', '1554777448', null, null, null, null, '16');
INSERT INTO `bro_user_body_check` VALUES ('23', '31', null, '1', '1554792099', '1554792099', null, null, null, null, '0');
INSERT INTO `bro_user_body_check` VALUES ('25', '31', null, '1', '1554817658', '1554817658', null, null, null, null, '17');
INSERT INTO `bro_user_body_check` VALUES ('26', '33', '123', '1', '1554859777', '1554875095', 'a:1:{s:6:\"sign10\";a:4:{i:0;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";}}', 'a:4:{s:6:\"nerve3\";s:0:\"\";s:6:\"nerve4\";s:0:\"\";s:6:\"nerve5\";s:0:\"\";s:6:\"nerve6\";s:0:\"\";}', 'a:1:{s:7:\"motion5\";s:1:\"0\";}', '', '0');

-- ----------------------------
-- Table structure for bro_user_center_diagnose
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_center_diagnose`;
CREATE TABLE `bro_user_center_diagnose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `center_name` varchar(255) DEFAULT NULL COMMENT '中心名称',
  `old_diagnose` text COMMENT '初步诊断',
  `new_diagnose` text COMMENT '修正诊断',
  `remark` text COMMENT '备注',
  `pd_o` int(11) DEFAULT '0',
  `pds_o` int(11) DEFAULT '0',
  `hpds_o` int(11) DEFAULT '0',
  `msa_o` int(11) DEFAULT '0',
  `psp_o` int(11) DEFAULT '0',
  `cbd_cbs_o` int(11) DEFAULT '0',
  `dlb_o` int(11) DEFAULT '0',
  `n_pd_o` int(11) DEFAULT '0',
  `pd_n` int(11) DEFAULT '0',
  `pds_n` int(11) DEFAULT '0',
  `hpds_n` int(11) DEFAULT '0',
  `msa_n` int(11) DEFAULT '0',
  `psp_n` int(11) DEFAULT '0',
  `cbd_cbs_n` int(11) DEFAULT '0',
  `dlb_n` int(11) DEFAULT '0',
  `n_pd_n` int(11) DEFAULT '0',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='中心名称及诊断';

-- ----------------------------
-- Records of bro_user_center_diagnose
-- ----------------------------
INSERT INTO `bro_user_center_diagnose` VALUES ('5', '1', '1', '1548163692', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `bro_user_center_diagnose` VALUES ('3', '1', '1', '1548087797', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `bro_user_center_diagnose` VALUES ('6', '1', '1', '1548163702', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `bro_user_center_diagnose` VALUES ('22', '30', '1', '1554777174', '1554777174', null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `bro_user_center_diagnose` VALUES ('23', '30', '1', '1554777372', '1554777372', null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15');
INSERT INTO `bro_user_center_diagnose` VALUES ('24', '30', '1', '1554777448', '1554777448', null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16');
INSERT INTO `bro_user_center_diagnose` VALUES ('25', '31', '1', '1554792099', '1554792594', '标题4', '22', 'a:5:{s:3:\"o12\";s:0:\"\";s:3:\"o22\";s:0:\"\";s:3:\"o32\";s:0:\"\";s:3:\"o42\";s:0:\"\";s:3:\"o92\";s:0:\"\";}', 'a:5:{s:3:\"n12\";s:0:\"\";s:3:\"n22\";s:0:\"\";s:3:\"n32\";s:0:\"\";s:3:\"n42\";s:0:\"\";s:3:\"n92\";s:0:\"\";}', null, '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `bro_user_center_diagnose` VALUES ('27', '31', '1', '1554817658', '1554817658', null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '17');
INSERT INTO `bro_user_center_diagnose` VALUES ('28', '33', '1', '1554859777', '1554859777', null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for bro_user_drug_history
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_drug_history`;
CREATE TABLE `bro_user_drug_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL,
  `items` text,
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COMMENT='用药史';

-- ----------------------------
-- Records of bro_user_drug_history
-- ----------------------------
INSERT INTO `bro_user_drug_history` VALUES ('5', '1', '1', '1548163692', null, null, null, '0');
INSERT INTO `bro_user_drug_history` VALUES ('6', '1', '1', '1548163702', null, null, null, '0');
INSERT INTO `bro_user_drug_history` VALUES ('8', '1', '1', '1548918992', '1548919139', null, null, '0');
INSERT INTO `bro_user_drug_history` VALUES ('9', '1', '1', '1548919269', '1548919516', '111111', 'a:16:{i:1;a:8:{i:1;s:10:\"2019-01-01\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"1\";i:7;s:10:\"2019-01-02\";s:6:\"remark\";s:3:\"111\";}i:2;a:8:{i:1;s:10:\"2019-01-03\";i:2;s:1:\"2\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"2\";i:7;s:10:\"2019-01-04\";s:6:\"remark\";s:1:\"2\";}i:3;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:4;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:5;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:6;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:7;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:8;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:9;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:10;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:11;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:12;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:13;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:14;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:15;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:4:\"3333\";}s:5:\"other\";a:8:{i:0;s:5:\"23333\";i:1;s:10:\"2019-01-06\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"3\";i:7;s:10:\"2019-01-03\";}}', '0');
INSERT INTO `bro_user_drug_history` VALUES ('20', '30', '1', '1554777174', '1554777174', null, null, '0');
INSERT INTO `bro_user_drug_history` VALUES ('21', '30', '1', '1554777372', '1554777372', null, null, '15');
INSERT INTO `bro_user_drug_history` VALUES ('22', '30', '1', '1554777448', '1554777448', null, null, '16');
INSERT INTO `bro_user_drug_history` VALUES ('23', '31', '1', '1554792099', '1554792099', null, null, '0');
INSERT INTO `bro_user_drug_history` VALUES ('25', '31', '1', '1554817658', '1554817658', null, null, '17');
INSERT INTO `bro_user_drug_history` VALUES ('26', '33', '1', '1554859777', '1554859777', null, null, '0');
INSERT INTO `bro_user_drug_history` VALUES ('11', '1', '1', '1549857000', '1552703397', '111111', 'a:16:{i:1;a:8:{i:1;s:10:\"2019-02-11\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:2;a:8:{i:1;s:10:\"2019-02-11\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:3;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:4;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:5;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:6;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:7;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:8;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:9;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:10;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:11;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:12;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:13;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:14;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:0:\"\";}i:15;a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";s:6:\"remark\";s:3:\"123\";}s:5:\"other\";a:8:{i:0;s:6:\"123214\";i:1;s:10:\"2019-02-11\";i:2;s:0:\"\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:0:\"\";i:7;s:0:\"\";}}', '0');

-- ----------------------------
-- Table structure for bro_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_favorite`;
CREATE TABLE `bro_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
-- Records of bro_user_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for bro_user_image_check
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_image_check`;
CREATE TABLE `bro_user_image_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='影像学检查';

-- ----------------------------
-- Records of bro_user_image_check
-- ----------------------------
INSERT INTO `bro_user_image_check` VALUES ('5', '1', '1', '1548163692', null, '0');
INSERT INTO `bro_user_image_check` VALUES ('3', '1', '1', '1548087797', null, '0');
INSERT INTO `bro_user_image_check` VALUES ('6', '1', '1', '1548163702', null, '0');
INSERT INTO `bro_user_image_check` VALUES ('18', '31', '1', '1554792099', '1554792099', '0');
INSERT INTO `bro_user_image_check` VALUES ('17', '30', '1', '1554777448', '1554777448', '16');
INSERT INTO `bro_user_image_check` VALUES ('16', '30', '1', '1554777372', '1554777372', '15');
INSERT INTO `bro_user_image_check` VALUES ('15', '30', '1', '1554777174', '1554777174', '0');
INSERT INTO `bro_user_image_check` VALUES ('20', '31', '1', '1554817658', '1554817658', '17');
INSERT INTO `bro_user_image_check` VALUES ('21', '33', '1', '1554859777', '1554859777', '0');

-- ----------------------------
-- Table structure for bro_user_info
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_info`;
CREATE TABLE `bro_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `nation` varchar(50) DEFAULT NULL COMMENT '民族',
  `country` varchar(50) DEFAULT NULL COMMENT '国籍',
  `edu_degree` varchar(255) DEFAULT NULL,
  `edu_year` varchar(20) DEFAULT NULL COMMENT '受教育年限',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `contact_way` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `occupation` varchar(255) DEFAULT NULL COMMENT '职业',
  `marriage` varchar(255) DEFAULT NULL COMMENT '婚姻状况',
  `econom` varchar(255) DEFAULT NULL COMMENT '经济状况',
  `live_status` varchar(255) DEFAULT NULL COMMENT '居住状况',
  `smoking` varchar(255) DEFAULT NULL COMMENT '吸烟史',
  `drink_wine` varchar(255) DEFAULT NULL COMMENT '饮酒史',
  `drink_coffee` varchar(255) DEFAULT NULL COMMENT '饮咖啡史',
  `drink_tea` varchar(255) DEFAULT NULL COMMENT '饮茶特殊药物使用',
  `poison` varchar(500) DEFAULT NULL COMMENT '毒物接触史',
  `special_poison` text COMMENT '特殊药物使用',
  `vital_sign` text COMMENT '生命体征',
  `family` text COMMENT '家族史',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COMMENT='用户基本信息表';

-- ----------------------------
-- Records of bro_user_info
-- ----------------------------
INSERT INTO `bro_user_info` VALUES ('1', '11', '壮族', 'a:2:{s:5:\"radio\";s:1:\"1\";s:5:\"other\";s:1:\"8\";}', '1', null, '2', '3', '4354363', 'a:2:{s:5:\"radio\";s:1:\"1\";s:5:\"other\";s:0:\"\";}', '1', '1', 'a:2:{s:5:\"radio\";s:1:\"1\";s:5:\"other\";s:0:\"\";}', 'a:5:{s:5:\"radio\";s:1:\"2\";s:4:\"year\";s:1:\"1\";s:5:\"month\";s:1:\"1\";s:7:\"day_num\";s:1:\"1\";s:4:\"quit\";s:1:\"1\";}', 'a:5:{s:5:\"radio\";s:1:\"1\";s:4:\"year\";s:1:\"2\";s:5:\"month\";s:1:\"2\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:1:\"2\";}', 'a:4:{s:5:\"radio\";s:1:\"1\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('2', '12', '壮族', 'a:2:{s:5:\"radio\";s:1:\"1\";s:5:\"other\";s:1:\"8\";}', '1', null, '2', null, '4354363', 'a:2:{s:5:\"radio\";s:1:\"1\";s:5:\"other\";s:0:\"\";}', '1', '1', 'a:2:{s:5:\"radio\";s:1:\"1\";s:5:\"other\";s:0:\"\";}', 'a:5:{s:5:\"radio\";s:1:\"2\";s:4:\"year\";s:1:\"1\";s:5:\"month\";s:1:\"1\";s:7:\"day_num\";s:1:\"1\";s:4:\"quit\";s:0:\"\";}', 'a:5:{s:5:\"radio\";s:1:\"1\";s:4:\"year\";s:1:\"2\";s:5:\"month\";s:1:\"2\";s:8:\"type-num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:5:\"radio\";s:1:\"1\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type-num\";s:0:\"\";}', null, null, null, null, null);
INSERT INTO `bro_user_info` VALUES ('3', '13', '壮', 'a:2:{s:5:\"radio\";s:1:\"1\";s:5:\"other\";s:0:\"\";}', '5', null, '广西壮族自治区', null, '', 'a:2:{s:5:\"radio\";s:1:\"8\";s:5:\"other\";s:9:\"程序员\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:1:\"8\";s:5:\"month\";s:1:\"6\";s:7:\"day_num\";s:1:\"2\";s:4:\"quit\";s:10:\"2019-01-21\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type-num\";s:0:\"\";s:4:\"quit\";s:10:\"2018-10-21\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type-num\";s:0:\"\";}', null, null, null, null, null);
INSERT INTO `bro_user_info` VALUES ('4', '16', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('5', '18', '4', 'a:2:{s:5:\"radio\";s:1:\"2\";s:5:\"other\";s:1:\"5\";}', '1', null, '6', null, '8', 'a:2:{s:5:\"radio\";s:1:\"8\";s:5:\"other\";s:1:\"9\";}', '1', '1', 'a:2:{s:5:\"radio\";s:1:\"4\";s:5:\"other\";s:1:\"9\";}', 'a:5:{s:5:\"radio\";s:1:\"1\";s:4:\"year\";s:1:\"8\";s:5:\"month\";s:1:\"7\";s:7:\"day_num\";s:1:\"6\";s:4:\"quit\";s:10:\"2019-01-23\";}', 'a:5:{s:5:\"radio\";s:1:\"3\";s:4:\"year\";s:1:\"4\";s:5:\"month\";s:1:\"3\";s:8:\"type_num\";s:3:\"123\";s:4:\"quit\";s:10:\"2019-01-23\";}', 'a:4:{s:5:\"radio\";s:1:\"2\";s:4:\"year\";s:1:\"1\";s:5:\"month\";s:1:\"2\";s:8:\"type_num\";s:0:\"\";}', 'a:4:{s:5:\"radio\";s:1:\"2\";s:4:\"year\";s:1:\"4\";s:5:\"month\";s:1:\"5\";s:8:\"type_num\";s:0:\"\";}', 'a:4:{s:5:\"radio\";s:1:\"2\";s:4:\"year\";s:1:\"7\";s:5:\"month\";s:1:\"8\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:5:\"radio\";s:1:\"1\";s:4:\"date\";a:13:{s:7:\"poison0\";s:10:\"2019-01-23\";s:7:\"poison1\";s:10:\"2019-01-23\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:10:\"2019-01-26\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:2:\"12\";s:7:\"poison1\";s:2:\"34\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:2:\"43\";}}', 'a:9:{s:6:\"weight\";s:1:\"1\";s:6:\"height\";s:1:\"2\";s:6:\"breath\";s:1:\"3\";s:11:\"temperature\";s:1:\"4\";s:3:\"sp1\";s:1:\"5\";s:3:\"sp2\";s:1:\"6\";s:5:\"pulse\";s:1:\"7\";s:9:\"heartrate\";s:1:\"8\";s:11:\"heartrhythm\";s:1:\"1\";}', 'a:4:{s:5:\"radio\";s:1:\"3\";s:8:\"other_pd\";s:2:\"12\";s:12:\"other_pd_who\";s:3:\"123\";s:13:\"other_disease\";a:4:{s:7:\"poison0\";s:7:\"poison0\";s:7:\"poison1\";s:7:\"poison1\";s:8:\"poison11\";s:8:\"poison11\";s:5:\"other\";s:2:\"88\";}}');
INSERT INTO `bro_user_info` VALUES ('6', '19', null, 'a:1:{s:5:\"other\";s:0:\"\";}', '3', null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:4:{s:5:\"radio\";s:1:\"1\";s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('7', '20', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('8', '21', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('9', '22', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('10', '23', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('11', '24', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('12', '25', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('13', '26', '汉', 'a:2:{s:5:\"radio\";s:1:\"1\";s:5:\"other\";s:0:\"\";}', '5', null, '测试地址不知道', null, '1261001787@qq.com', 'a:2:{s:5:\"radio\";s:1:\"6\";s:5:\"other\";s:0:\"\";}', '2', '3', 'a:2:{s:5:\"other\";s:0:\"\";s:5:\"radio\";s:1:\"2\";}', 'a:5:{s:5:\"radio\";s:1:\"1\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:5:{s:5:\"radio\";s:1:\"1\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:4:{s:5:\"radio\";s:1:\"1\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:4:{s:5:\"radio\";s:1:\"2\";s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:5:\"radio\";s:1:\"2\";s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:9:{s:6:\"weight\";s:2:\"65\";s:6:\"height\";s:3:\"180\";s:6:\"breath\";s:2:\"88\";s:11:\"temperature\";s:2:\"37\";s:3:\"sp1\";s:3:\"115\";s:3:\"sp2\";s:3:\"105\";s:5:\"pulse\";s:2:\"88\";s:9:\"heartrate\";s:2:\"78\";s:11:\"heartrhythm\";s:1:\"1\";}', 'a:4:{s:5:\"radio\";s:1:\"1\";s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('14', '27', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('15', '28', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('16', '29', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('17', '30', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('18', '31', '汉族', 'a:1:{s:5:\"other\";s:0:\"\";}', '5', '12', '测试地址不知道', null, '1261001787@qq.com', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('19', '32', '汉族', 'a:1:{s:5:\"other\";s:0:\"\";}', '5', null, '测试地址不知道', null, '1261001787@qq.com', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');
INSERT INTO `bro_user_info` VALUES ('20', '33', '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, '', '', null, '', 'a:1:{s:5:\"other\";s:0:\"\";}', null, null, 'a:1:{s:5:\"other\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:7:\"day_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:4:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";s:4:\"quit\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:3:{s:4:\"year\";s:0:\"\";s:5:\"month\";s:0:\"\";s:8:\"type_num\";s:0:\"\";}', 'a:2:{s:4:\"date\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}s:8:\"type_num\";a:13:{s:7:\"poison0\";s:0:\"\";s:7:\"poison1\";s:0:\"\";s:7:\"poison2\";s:0:\"\";s:7:\"poison3\";s:0:\"\";s:7:\"poison4\";s:0:\"\";s:7:\"poison5\";s:0:\"\";s:7:\"poison6\";s:0:\"\";s:7:\"poison7\";s:0:\"\";s:7:\"poison8\";s:0:\"\";s:7:\"poison9\";s:0:\"\";s:8:\"poison10\";s:0:\"\";s:8:\"poison11\";s:0:\"\";s:8:\"sp_other\";s:0:\"\";}}', 'a:8:{s:6:\"weight\";s:0:\"\";s:6:\"height\";s:0:\"\";s:6:\"breath\";s:0:\"\";s:11:\"temperature\";s:0:\"\";s:3:\"sp1\";s:0:\"\";s:3:\"sp2\";s:0:\"\";s:5:\"pulse\";s:0:\"\";s:9:\"heartrate\";s:0:\"\";}', 'a:3:{s:8:\"other_pd\";s:0:\"\";s:12:\"other_pd_who\";s:0:\"\";s:13:\"other_disease\";a:1:{s:5:\"other\";s:0:\"\";}}');

-- ----------------------------
-- Table structure for bro_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_login_attempt`;
CREATE TABLE `bro_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户登录尝试表';

-- ----------------------------
-- Records of bro_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for bro_user_major_medical
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_major_medical`;
CREATE TABLE `bro_user_major_medical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `items` text COMMENT '检查项',
  `remark` text COMMENT '备注',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COMMENT='主要病史及症状';

-- ----------------------------
-- Records of bro_user_major_medical
-- ----------------------------
INSERT INTO `bro_user_major_medical` VALUES ('5', '1', '1', '1548163692', null, null, null, null, '0');
INSERT INTO `bro_user_major_medical` VALUES ('3', '1', '1', '1548087797', null, null, null, null, '0');
INSERT INTO `bro_user_major_medical` VALUES ('6', '1', '1', '1548163702', null, null, null, null, '0');
INSERT INTO `bro_user_major_medical` VALUES ('24', '30', '1', '1554777174', '1554777174', null, null, null, '0');
INSERT INTO `bro_user_major_medical` VALUES ('25', '30', '1', '1554777372', '1554777372', null, null, null, '15');
INSERT INTO `bro_user_major_medical` VALUES ('26', '30', '1', '1554777448', '1554777448', null, null, null, '16');
INSERT INTO `bro_user_major_medical` VALUES ('27', '31', '1', '1554792099', '1554792099', null, null, null, '0');
INSERT INTO `bro_user_major_medical` VALUES ('29', '31', '1', '1554817658', '1554817658', null, null, null, '17');
INSERT INTO `bro_user_major_medical` VALUES ('30', '33', '1', '1554859777', '1554859777', null, null, null, '0');

-- ----------------------------
-- Table structure for bro_user_medical_history
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_medical_history`;
CREATE TABLE `bro_user_medical_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `content` text COMMENT '病史内容',
  `remark` text COMMENT '备注',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='患者病史';

-- ----------------------------
-- Records of bro_user_medical_history
-- ----------------------------
INSERT INTO `bro_user_medical_history` VALUES ('30', '30', '1', '1554777174', '1554777174', null, null, '0');
INSERT INTO `bro_user_medical_history` VALUES ('31', '30', '1', '1554777372', '1554777372', null, null, '15');
INSERT INTO `bro_user_medical_history` VALUES ('32', '30', '1', '1554777448', '1554777448', null, null, '16');
INSERT INTO `bro_user_medical_history` VALUES ('33', '31', '1', '1554792099', '1554792099', null, null, '0');
INSERT INTO `bro_user_medical_history` VALUES ('35', '31', '1', '1554817658', '1554817658', null, null, '17');
INSERT INTO `bro_user_medical_history` VALUES ('36', '33', '1', '1554859777', '1554859777', null, null, '0');
INSERT INTO `bro_user_medical_history` VALUES ('18', '1', '1', '1549899075', '1549899075', 'a:9:{s:8:\"disease1\";a:5:{s:5:\"radio\";s:1:\"1\";s:5:\"s_age\";s:1:\"1\";s:9:\"drug_type\";s:1:\"1\";s:9:\"drug_year\";s:1:\"2\";s:5:\"blood\";s:1:\"1\";}s:8:\"disease2\";a:3:{s:5:\"s_age\";s:0:\"\";s:9:\"drug_type\";s:0:\"\";s:9:\"drug_year\";s:0:\"\";}s:8:\"disease3\";a:3:{s:5:\"s_age\";s:0:\"\";s:9:\"drug_type\";s:0:\"\";s:9:\"drug_year\";s:0:\"\";}s:8:\"disease4\";a:1:{s:5:\"s_age\";s:0:\"\";}s:8:\"disease5\";a:1:{s:5:\"s_age\";s:0:\"\";}s:8:\"disease6\";a:1:{s:5:\"s_age\";s:0:\"\";}s:8:\"disease7\";a:1:{s:5:\"s_age\";s:0:\"\";}s:8:\"disease8\";a:2:{s:5:\"s_age\";s:0:\"\";s:4:\"type\";s:0:\"\";}s:5:\"other\";s:1:\"1\";}', '2', '0');

-- ----------------------------
-- Table structure for bro_user_pd_disease
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_pd_disease`;
CREATE TABLE `bro_user_pd_disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '患者id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `visit_id` int(11) DEFAULT '0' COMMENT '随访ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='帕金森基本病情';

-- ----------------------------
-- Records of bro_user_pd_disease
-- ----------------------------
INSERT INTO `bro_user_pd_disease` VALUES ('5', '1', '1', '1548163692', null, '0');
INSERT INTO `bro_user_pd_disease` VALUES ('3', '1', '1', '1548087797', null, '0');
INSERT INTO `bro_user_pd_disease` VALUES ('6', '1', '1', '1548163702', null, '0');
INSERT INTO `bro_user_pd_disease` VALUES ('18', '31', '1', '1554792099', '1554792099', '0');
INSERT INTO `bro_user_pd_disease` VALUES ('17', '30', '1', '1554777448', '1554777448', '16');
INSERT INTO `bro_user_pd_disease` VALUES ('16', '30', '1', '1554777372', '1554777372', '15');
INSERT INTO `bro_user_pd_disease` VALUES ('15', '30', '1', '1554777174', '1554777174', '0');
INSERT INTO `bro_user_pd_disease` VALUES ('20', '31', '1', '1554817658', '1554817658', '17');
INSERT INTO `bro_user_pd_disease` VALUES ('21', '33', '1', '1554859778', '1554859778', '0');

-- ----------------------------
-- Table structure for bro_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_score_log`;
CREATE TABLE `bro_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

-- ----------------------------
-- Records of bro_user_score_log
-- ----------------------------
INSERT INTO `bro_user_score_log` VALUES ('1', '1', '1548165097', 'login', '1', '0');

-- ----------------------------
-- Table structure for bro_user_token
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_token`;
CREATE TABLE `bro_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of bro_user_token
-- ----------------------------
INSERT INTO `bro_user_token` VALUES ('3', '1', '1570539393', '1554987393', '93cbc64c4372ffbaafaaca3c03dd1fdf79517c6310fcbc558770bc62cc45127a', 'web');
INSERT INTO `bro_user_token` VALUES ('4', '15', '1565625912', '1550073912', '2846e1e0acf47eb31fe9e3c0f556a62605d8a6a9c66ae1db2326c723427bf75a', 'web');
INSERT INTO `bro_user_token` VALUES ('5', '14', '1565625869', '1550073869', '81874c362d9cc48cccf694c6e3d8399baaa0f8ff8d2091e65eb91ab019b9f5ab', 'web');
INSERT INTO `bro_user_token` VALUES ('6', '9', '1570328285', '1554776285', '4d91b3d487beeec93d173ed17eb08d1a97be2ff8abe58838f28628f0c23aedb5', 'web');

-- ----------------------------
-- Table structure for bro_user_visit
-- ----------------------------
DROP TABLE IF EXISTS `bro_user_visit`;
CREATE TABLE `bro_user_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  `title` varchar(255) DEFAULT NULL COMMENT '随访标题',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `visit_time` int(11) DEFAULT '0' COMMENT '随访时间',
  `visit_times` int(11) DEFAULT '0' COMMENT '第几次访问',
  `status` tinyint(4) DEFAULT '0' COMMENT '0-待处理，1-已完成,2-作废',
  `remark` text,
  `admin_id` int(11) DEFAULT '0' COMMENT '操作的管理员',
  `delete_time` int(11) DEFAULT '0' COMMENT '删除时间',
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of bro_user_visit
-- ----------------------------
INSERT INTO `bro_user_visit` VALUES ('6', '1', '123', '1548995107', '1548090180', '1', '0', '123', '1', '0', null);
INSERT INTO `bro_user_visit` VALUES ('15', '30', '111', '1554777372', '1554777370', '1', '0', '', '1', '0', '');
INSERT INTO `bro_user_visit` VALUES ('16', '30', '11', '1554777448', '1554739200', '11', '0', '1', '1', '0', '');
INSERT INTO `bro_user_visit` VALUES ('17', '31', '第一次随访', '1554817658', '1555516800', '1', '0', '123213', '1', '0', '<p>2142354</p>');

-- ----------------------------
-- Table structure for bro_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `bro_verification_code`;
CREATE TABLE `bro_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
-- Records of bro_verification_code
-- ----------------------------
