/*
Navicat MariaDB Data Transfer

Source Server         : WEB
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : motto

Target Server Type    : MariaDB
Target Server Version : 100137
File Encoding         : 65001

Date: 2019-09-14 13:29:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cabang
-- ----------------------------
DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang` (
  `id_cabang` int(11) NOT NULL AUTO_INCREMENT,
  `nm_cabang` varchar(255) DEFAULT NULL,
  `loc_cabang` varchar(255) DEFAULT NULL,
  `st_cabang` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_cabang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cabang
-- ----------------------------
INSERT INTO `cabang` VALUES ('1', 'utama', 'Jakarta', '1');
INSERT INTO `cabang` VALUES ('2', 'Jatim', 'Surabaya', '1');
INSERT INTO `cabang` VALUES ('3', 'Jateng', 'apsdapskdaspd', '1');

-- ----------------------------
-- Table structure for detail_invoice
-- ----------------------------
DROP TABLE IF EXISTS `detail_invoice`;
CREATE TABLE `detail_invoice` (
  `id_di` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) DEFAULT NULL,
  `id_produk` int(255) DEFAULT NULL,
  `qty_di` int(11) DEFAULT NULL,
  `total_di` varchar(255) DEFAULT NULL,
  `st_di` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_di`),
  KEY `fk_di_produk` (`id_produk`),
  KEY `fk_di_invo` (`id_invoice`),
  CONSTRAINT `fk_di_invo` FOREIGN KEY (`id_invoice`) REFERENCES `invoice` (`id_invoice`),
  CONSTRAINT `fk_di_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_invoice
-- ----------------------------
INSERT INTO `detail_invoice` VALUES ('1', '19', '1', '5', '125000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('2', '19', '2', '4', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('3', '20', '2', '6', '900000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('4', '21', '2', '4', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('5', '22', '1', '9', '225000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('6', '23', '2', '6', '900000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('7', '23', '1', '5', '125000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('8', '24', '3', '30', '5700000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('9', '24', '2', '7', '1050000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('10', '24', '1', '4', '100000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('11', '25', '4', '12', '900000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('12', '25', '3', '7', '1330000', 'gudang');
INSERT INTO `detail_invoice` VALUES ('13', '26', '4', '12', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('14', '26', '2', '21', '3360000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('15', '27', '2', '10', '1600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('16', '27', '6', '22', '1100000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('17', '28', '3', '8', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('18', '28', '2', '9', '1440000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('19', '29', '4', '3', '150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('20', '29', '1', '25', '625000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('21', '30', '2', '3', '480000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('22', '30', '6', '14', '700000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('23', '31', '5', '5', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('24', '31', '2', '3', '480000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('25', '32', '4', '8', '400000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('26', '32', '6', '23', '1150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('27', '33', '4', '3', '150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('28', '33', '2', '13', '2080000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('29', '34', '5', '24', '21360000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('30', '34', '5', '22', '19580000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('31', '35', '6', '24', '1200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('32', '35', '6', '25', '1250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('33', '36', '1', '20', '500000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('34', '36', '2', '21', '3360000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('35', '37', '3', '4', '160000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('36', '37', '3', '16', '640000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('37', '38', '2', '16', '2560000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('38', '38', '2', '13', '2080000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('39', '39', '4', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('40', '39', '3', '21', '840000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('41', '40', '3', '6', '240000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('42', '40', '1', '16', '400000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('43', '41', '3', '21', '840000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('44', '41', '2', '23', '3680000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('45', '42', '1', '18', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('46', '42', '6', '16', '800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('47', '43', '4', '12', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('48', '43', '1', '23', '575000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('49', '44', '5', '8', '7120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('50', '44', '6', '15', '750000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('51', '45', '1', '7', '175000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('52', '45', '3', '20', '800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('53', '46', '1', '5', '125000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('54', '46', '6', '14', '700000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('55', '47', '5', '13', '11570000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('56', '47', '1', '11', '275000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('57', '48', '3', '23', '920000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('58', '48', '3', '7', '280000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('59', '49', '4', '25', '1250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('60', '49', '5', '3', '2670000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('61', '50', '5', '20', '17800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('62', '50', '4', '23', '1150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('63', '51', '6', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('64', '51', '2', '23', '3680000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('65', '52', '4', '11', '550000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('66', '52', '6', '25', '1250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('67', '53', '5', '10', '8900000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('68', '53', '1', '18', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('69', '54', '5', '22', '19580000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('70', '54', '6', '14', '700000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('71', '55', '4', '7', '350000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('72', '55', '6', '6', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('73', '56', '2', '5', '800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('74', '56', '3', '15', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('75', '57', '6', '18', '900000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('76', '57', '4', '15', '750000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('77', '58', '3', '23', '920000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('78', '58', '2', '16', '2560000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('79', '59', '3', '3', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('80', '59', '5', '25', '22250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('81', '60', '4', '22', '1100000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('82', '60', '1', '6', '150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('83', '61', '6', '14', '700000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('84', '61', '4', '12', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('85', '62', '6', '5', '250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('86', '62', '6', '3', '150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('87', '63', '3', '6', '240000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('88', '63', '6', '23', '1150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('89', '64', '3', '7', '280000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('90', '64', '6', '25', '1250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('91', '65', '2', '4', '640000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('92', '65', '4', '24', '1200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('93', '66', '4', '5', '250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('94', '66', '5', '13', '11570000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('95', '67', '5', '25', '22250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('96', '67', '1', '18', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('97', '68', '5', '6', '5340000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('98', '68', '6', '13', '650000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('99', '69', '2', '24', '3840000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('100', '69', '5', '17', '15130000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('101', '70', '3', '16', '640000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('102', '70', '4', '7', '350000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('103', '71', '4', '13', '650000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('104', '71', '5', '17', '15130000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('105', '72', '5', '20', '17800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('106', '72', '3', '13', '520000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('107', '73', '5', '8', '7120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('108', '73', '4', '11', '550000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('109', '74', '6', '12', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('110', '74', '3', '14', '560000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('111', '75', '6', '5', '250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('112', '75', '3', '20', '800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('113', '76', '1', '23', '575000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('114', '76', '2', '22', '3520000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('115', '77', '2', '8', '1280000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('116', '77', '1', '6', '150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('117', '78', '1', '3', '75000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('118', '78', '4', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('119', '79', '1', '15', '375000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('120', '79', '5', '6', '5340000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('121', '80', '6', '20', '1000000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('122', '80', '3', '11', '440000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('123', '81', '6', '9', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('124', '81', '6', '6', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('125', '82', '4', '8', '400000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('126', '82', '4', '22', '1100000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('127', '83', '6', '17', '850000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('128', '83', '3', '8', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('129', '84', '5', '21', '18690000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('130', '84', '1', '5', '125000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('131', '85', '5', '6', '5340000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('132', '85', '6', '3', '150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('133', '86', '2', '25', '4000000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('134', '86', '5', '12', '10680000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('135', '87', '5', '23', '20470000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('136', '87', '1', '3', '75000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('137', '88', '3', '13', '520000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('138', '88', '4', '18', '900000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('139', '89', '1', '25', '625000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('140', '89', '2', '7', '1120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('141', '90', '6', '15', '750000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('142', '90', '3', '6', '240000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('143', '91', '3', '17', '680000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('144', '91', '1', '11', '275000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('145', '92', '2', '7', '1120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('146', '92', '6', '22', '1100000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('147', '93', '5', '9', '8010000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('148', '93', '3', '13', '520000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('149', '94', '1', '25', '625000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('150', '94', '2', '19', '3040000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('151', '95', '2', '11', '1760000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('152', '95', '5', '15', '13350000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('153', '96', '3', '14', '560000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('154', '96', '2', '13', '2080000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('155', '97', '5', '16', '14240000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('156', '97', '1', '10', '250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('157', '98', '5', '16', '14240000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('158', '98', '3', '7', '280000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('159', '99', '4', '5', '250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('160', '99', '6', '24', '1200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('161', '100', '5', '21', '18690000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('162', '100', '4', '25', '1250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('163', '101', '1', '8', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('164', '101', '2', '10', '1600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('165', '102', '3', '17', '680000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('166', '102', '2', '22', '3520000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('167', '103', '5', '15', '13350000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('168', '103', '6', '7', '350000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('169', '104', '2', '3', '480000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('170', '104', '4', '24', '1200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('171', '105', '5', '6', '5340000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('172', '105', '6', '11', '550000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('173', '106', '1', '7', '175000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('174', '106', '5', '18', '16020000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('175', '107', '5', '18', '16020000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('176', '107', '4', '12', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('177', '108', '5', '24', '21360000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('178', '108', '6', '24', '1200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('179', '109', '5', '11', '9790000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('180', '109', '1', '3', '75000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('181', '110', '3', '17', '680000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('182', '110', '5', '21', '18690000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('183', '111', '6', '6', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('184', '111', '1', '18', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('185', '112', '4', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('186', '112', '5', '11', '9790000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('187', '113', '4', '8', '400000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('188', '113', '2', '3', '480000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('189', '114', '2', '3', '480000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('190', '114', '6', '8', '400000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('191', '115', '5', '21', '18690000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('192', '115', '4', '17', '850000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('193', '116', '1', '23', '575000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('194', '116', '2', '18', '2880000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('195', '117', '1', '18', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('196', '117', '2', '13', '2080000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('197', '118', '2', '10', '1600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('198', '118', '3', '18', '720000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('199', '119', '6', '21', '1050000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('200', '119', '2', '11', '1760000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('201', '120', '1', '9', '225000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('202', '120', '3', '10', '400000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('203', '121', '2', '8', '1280000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('204', '121', '5', '6', '5340000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('205', '122', '6', '3', '150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('206', '123', '3', '7', '280000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('207', '123', '1', '4', '100000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('208', '124', '2', '11', '1760000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('209', '124', '3', '15', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('210', '125', '6', '10', '500000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('211', '125', '6', '19', '950000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('212', '126', '4', '5', '250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('213', '126', '4', '21', '1050000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('214', '127', '5', '25', '22250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('215', '127', '3', '11', '440000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('216', '128', '5', '13', '11570000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('217', '128', '2', '19', '3040000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('218', '129', '6', '9', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('219', '129', '5', '12', '10680000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('220', '130', '4', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('221', '130', '5', '3', '2670000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('222', '131', '4', '12', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('223', '131', '2', '4', '640000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('224', '132', '1', '12', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('225', '132', '5', '10', '8900000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('226', '133', '4', '23', '1150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('227', '133', '4', '23', '1150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('228', '134', '4', '5', '250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('229', '134', '5', '25', '22250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('230', '135', '5', '14', '12460000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('231', '135', '4', '9', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('232', '136', '2', '16', '2560000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('233', '136', '3', '23', '920000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('234', '137', '4', '8', '400000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('235', '137', '1', '3', '75000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('236', '138', '4', '17', '850000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('237', '138', '5', '6', '5340000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('238', '139', '5', '14', '12460000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('239', '139', '5', '5', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('240', '140', '6', '7', '350000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('241', '140', '2', '5', '800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('242', '141', '3', '13', '520000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('243', '141', '4', '19', '950000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('244', '142', '5', '11', '9790000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('245', '142', '6', '5', '250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('246', '143', '2', '15', '2400000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('247', '143', '1', '20', '500000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('248', '144', '4', '12', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('249', '144', '2', '8', '1280000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('250', '145', '2', '16', '2560000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('251', '145', '5', '9', '8010000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('252', '146', '1', '8', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('253', '146', '6', '9', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('254', '147', '3', '15', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('255', '147', '2', '3', '480000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('256', '148', '4', '12', '600000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('257', '148', '4', '9', '450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('258', '149', '6', '25', '1250000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('259', '149', '1', '20', '500000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('260', '150', '3', '20', '800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('261', '150', '1', '9', '225000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('262', '151', '5', '18', '16020000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('263', '151', '5', '7', '6230000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('264', '152', '6', '3', '150000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('265', '152', '2', '5', '800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('266', '153', '6', '15', '750000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('267', '153', '1', '17', '425000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('268', '154', '4', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('269', '154', '2', '19', '3040000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('270', '155', '6', '24', '1200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('271', '155', '5', '20', '17800000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('272', '156', '5', '13', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('273', '156', '2', '13', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('274', '157', '4', '5', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('275', '157', '2', '6', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('276', '158', '2', '14', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('277', '158', '4', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('278', '159', '1', '24', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('279', '159', '5', '24', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('280', '160', '3', '13', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('281', '160', '1', '24', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('282', '161', '1', '24', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('283', '161', '1', '16', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('284', '162', '6', '21', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('285', '162', '6', '24', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('286', '163', '6', '13', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('287', '163', '2', '7', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('288', '164', '1', '17', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('289', '164', '6', '12', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('290', '165', '5', '17', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('291', '165', '6', '4', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('292', '166', '1', '7', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('293', '166', '4', '7', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('294', '167', '6', '14', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('295', '167', '5', '19', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('296', '168', '6', '16', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('297', '168', '4', '8', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('298', '169', '4', '24', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('299', '169', '4', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('300', '170', '4', '23', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('301', '170', '2', '17', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('302', '171', '5', '4', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('303', '171', '1', '17', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('304', '172', '3', '7', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('305', '172', '4', '13', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('306', '173', '4', '14', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('307', '173', '1', '19', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('308', '174', '3', '13', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('309', '174', '4', '15', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('310', '175', '1', '18', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('311', '175', '3', '4', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('312', '176', '1', '25', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('313', '176', '3', '3', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('314', '176', '6', '16', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('315', '177', '5', '16', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('316', '177', '6', '24', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('317', '178', '4', '18', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('318', '178', '4', '11', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('319', '179', '3', '3', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('320', '180', '4', '4', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('321', '180', '2', '25', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('322', '181', '5', '8', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('323', '181', '5', '14', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('324', '182', '4', '16', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('325', '182', '4', '20', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('326', '183', '3', '6', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('327', '183', '2', '11', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('328', '184', '1', '22', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('329', '185', '5', '4', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('330', '186', '3', '8', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('331', '186', '5', '23', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('332', '187', '5', '5', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('333', '187', '1', '16', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('334', '188', '4', '17', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('335', '188', '1', '3', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('336', '189', '3', '24', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('337', '189', '1', '13', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('338', '190', '3', '14', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('339', '190', '5', '11', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('340', '191', '6', '13', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('341', '191', '6', '7', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('342', '192', '4', '16', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('343', '192', '5', '18', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('344', '193', '6', '10', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('345', '193', '3', '23', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('346', '194', '3', '24', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('347', '194', '2', '17', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('348', '195', '4', '17', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('349', '195', '2', '4', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('350', '196', '6', '4', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('351', '196', '6', '18', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('352', '197', '3', '20', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('353', '197', '4', '10', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('354', '198', '2', '12', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('355', '198', '2', '23', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('356', '199', '5', '13', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('357', '199', '3', '6', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('358', '200', '3', '20', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('359', '200', '4', '6', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('360', '201', '4', '17', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('361', '201', '6', '21', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('362', '202', '5', '4', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('363', '202', '4', '18', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('364', '203', '2', '16', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('365', '203', '3', '6', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('366', '204', '4', '24', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('367', '204', '3', '11', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('368', '205', '2', '17', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('369', '205', '2', '21', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('370', '206', '6', '25', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('371', '206', '2', '17', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('372', '207', '2', '18', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('373', '207', '4', '12', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('374', '208', '3', '15', '120000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('375', '208', '4', '3', '200000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('376', '209', '6', '6', '300000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('377', '209', '2', '22', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('378', '210', '1', '14', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('379', '210', '2', '21', '320000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('380', '211', '5', '3', '4450000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('381', '211', '1', '18', '25000', 'kirim');
INSERT INTO `detail_invoice` VALUES ('382', '212', '6', '4', '200000', 'gudang');
INSERT INTO `detail_invoice` VALUES ('383', '213', '3', '3', '120000', 'gudang');
INSERT INTO `detail_invoice` VALUES ('384', '213', '5', '1', '890000', 'gudang');
INSERT INTO `detail_invoice` VALUES ('385', '214', '1', '2', '54000', 'gudang');
INSERT INTO `detail_invoice` VALUES ('386', '214', '2', '1', '170000', 'gudang');

-- ----------------------------
-- Table structure for detail_invoice_tmp
-- ----------------------------
DROP TABLE IF EXISTS `detail_invoice_tmp`;
CREATE TABLE `detail_invoice_tmp` (
  `id_di` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) DEFAULT NULL,
  `id_produk` int(255) DEFAULT NULL,
  `qty_di` int(11) DEFAULT NULL,
  `total_di` varchar(255) DEFAULT NULL,
  `st_di` smallint(255) DEFAULT NULL,
  PRIMARY KEY (`id_di`),
  KEY `fk_di_produk` (`id_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_invoice_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for gudang
-- ----------------------------
DROP TABLE IF EXISTS `gudang`;
CREATE TABLE `gudang` (
  `id_gudang` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `no_invoice` varchar(255) DEFAULT NULL,
  `jumlah_stok` int(11) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `up_gudang` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_gudang`),
  KEY `FK_RELATIONSHIP_7` (`id_user`),
  KEY `FK_RELATIONSHIP_8` (`id_produk`),
  CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gudang
-- ----------------------------
INSERT INTO `gudang` VALUES ('2', '1', '1', null, '10', 'Barang masuk', '2019-05-31 00:11:10');
INSERT INTO `gudang` VALUES ('3', '1', '2', null, '50', 'Barang masuk', '2019-05-31 00:19:05');
INSERT INTO `gudang` VALUES ('4', '1', '2', '', '4', 'Barang keluar', '2019-06-24 22:58:23');
INSERT INTO `gudang` VALUES ('5', '1', '2', '19/06/20/0010', '4', 'Barang keluar', '2019-06-24 23:00:04');
INSERT INTO `gudang` VALUES ('6', '1', '2', '19/06/20/0010', '4', 'Barang keluar', '2019-06-24 23:00:32');
INSERT INTO `gudang` VALUES ('7', '1', '2', '19/06/20/0010', '4', 'Barang keluar', '2019-06-24 23:00:56');
INSERT INTO `gudang` VALUES ('8', '1', '1', '19/06/20/0010', '5', 'Barang keluar', '2019-06-24 23:02:46');
INSERT INTO `gudang` VALUES ('9', '1', '2', '19/06/24/001', '6', 'Barang keluar', '2019-06-24 23:04:38');
INSERT INTO `gudang` VALUES ('10', '1', '2', '19/06/24/001', '6', 'Barang keluar', '2019-06-24 23:09:24');
INSERT INTO `gudang` VALUES ('11', '1', '2', '19/06/24/001', '6', 'Barang keluar', '2019-06-24 23:11:02');
INSERT INTO `gudang` VALUES ('12', '1', '2', '19/06/20/0010', '6', 'Barang keluar', '2019-06-24 23:11:43');
INSERT INTO `gudang` VALUES ('13', '1', '2', '19/06/20/0010', '6', 'Barang keluar', '2019-06-24 23:11:47');
INSERT INTO `gudang` VALUES ('14', '1', '2', '19/06/20/0010', '6', 'Barang keluar', '2019-06-24 23:12:10');
INSERT INTO `gudang` VALUES ('15', '1', '2', '19/06/24/001', '6', 'Barang keluar', '2019-06-24 23:14:02');
INSERT INTO `gudang` VALUES ('16', '1', '2', '19/06/20/0010', '4', 'Barang keluar', '2019-06-24 23:14:37');
INSERT INTO `gudang` VALUES ('17', '1', '1', '19/06/20/0010', '5', 'Barang keluar', '2019-06-24 23:14:43');
INSERT INTO `gudang` VALUES ('18', '1', '2', '19/07/11/001', '6', 'Barang keluar', '2019-07-11 22:19:03');
INSERT INTO `gudang` VALUES ('19', '1', '1', '19/07/11/001', '5', 'Barang keluar', '2019-07-11 22:19:05');
INSERT INTO `gudang` VALUES ('20', '1', '3', null, '100', 'Barang masuk', '2019-07-12 17:38:23');
INSERT INTO `gudang` VALUES ('21', '1', '3', '19/07/12/001', '30', 'Barang keluar', '2019-07-12 17:39:17');
INSERT INTO `gudang` VALUES ('22', '1', '2', '19/07/12/001', '7', 'Barang keluar', '2019-07-12 17:39:19');
INSERT INTO `gudang` VALUES ('23', '1', '1', '19/07/12/001', '4', 'Barang keluar', '2019-07-12 17:39:20');
INSERT INTO `gudang` VALUES ('24', '1', '4', null, '62', 'Barang masuk', '2019-07-24 20:37:40');
INSERT INTO `gudang` VALUES ('25', '1', '4', '19/07/24/001', '12', 'Barang keluar', '2019-07-24 20:38:29');
INSERT INTO `gudang` VALUES ('26', '1', '3', '19/07/24/001', '7', 'Barang keluar', '2019-07-24 20:38:32');
INSERT INTO `gudang` VALUES ('27', '1', '1', '19/06/25/002', '9', 'Barang keluar', '2019-07-24 20:40:36');
INSERT INTO `gudang` VALUES ('28', '1', '2', '19/06/25/001', '4', 'Barang keluar', '2019-07-24 20:40:38');

-- ----------------------------
-- Table structure for hargajual
-- ----------------------------
DROP TABLE IF EXISTS `hargajual`;
CREATE TABLE `hargajual` (
  `id_hargajual` int(11) NOT NULL AUTO_INCREMENT,
  `nm_hargajual` varchar(255) DEFAULT NULL,
  `st_hargajual` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_hargajual`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hargajual
-- ----------------------------
INSERT INTO `hargajual` VALUES ('1', 'Umum', '1');
INSERT INTO `hargajual` VALUES ('2', 'Partai', '1');
INSERT INTO `hargajual` VALUES ('3', 'Freelance', '1');

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id_invoice` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `no_invoice` varchar(255) DEFAULT NULL,
  `nm_invoice` varchar(255) DEFAULT NULL,
  `alm_invoice` varchar(255) DEFAULT NULL,
  `kota_invoice` varchar(255) DEFAULT NULL,
  `byr_invoice` varchar(255) DEFAULT NULL,
  `harga_invoice` varchar(255) DEFAULT NULL,
  `tgl_invoice` timestamp NULL DEFAULT NULL,
  `status_bayar` varchar(255) DEFAULT NULL,
  `st_invoice` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_invoice`),
  KEY `fk_relationship_3` (`id_user`),
  CONSTRAINT `fk_relationship_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES ('19', '1', '19/06/20/010', 'diana nur wulandari', 'Pandegeling', 'surabaya', '750000', '725000', '2019-06-20 12:29:59', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('20', '1', '19/06/24/001', 'sarah', 'jemur', 'Jakarta', '900000', '900000', '2019-06-24 22:19:47', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('21', '1', '19/06/25/001', 'Toko ABC', 'JL. jemur', 'Surabaya', '600000', '600000', '2019-06-25 09:18:38', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('22', '1', '19/06/25/002', 'Toko ABC', 'JL. jemur', 'Surabaya', '230000', '225000', '2019-06-25 09:19:05', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('23', '1', '19/07/11/001', 'putri dewi', 'kenjeran baru no 1', 'Surabaya', '110000', '1025000', '2019-07-11 22:18:36', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('24', '1', '19/07/12/001', 'Toko ABC', 'JL. jemur', 'Surabaya', '7000000', '6850000', '2019-07-12 17:39:11', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('25', '1', '19/07/24/001', 'kevin nur cahyadi', 'jemur', 'Batam', '2500000', '2230000', '2019-07-24 20:38:19', 'Lunas', 'Proses Gudang', null);
INSERT INTO `invoice` VALUES ('26', '3', '19/04/01/001', 'ayu', null, 'surabaya', '4000000', '3960000', '2019-04-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('27', '3', '19/04/01/002', 'adi', null, 'surabaya', '2700000', '2700000', '2019-04-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('28', '3', '19/04/01/003', 'budi', null, 'surabaya', '1800000', '1760000', '2019-04-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('29', '3', '19/04/01/004', 'arjun', null, 'surabaya', '800000', '775000', '2019-04-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('30', '3', '19/04/01/005', 'kevin', null, 'surabaya', '1200000', '1180000', '2019-04-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('31', '3', '19/04/03/001', 'yolanda', null, 'surabaya', '5000000', '4930000', '2019-04-03 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('32', '3', '19/04/03/002', 'made', null, 'surabaya', '1600000', '1550000', '2019-04-03 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('33', '3', '19/04/03/003', 'dewi', null, 'surabaya', '2500000', '2230000', '2019-04-03 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('34', '3', '19/04/04/001', 'adi', null, 'surabaya', '41000000', '40940000', '2019-04-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('35', '3', '19/04/05/001', 'ce tika', null, 'surabaya', '24500000', '2450000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('36', '3', '19/04/05/002', 'teguh', null, 'surabaya', '40000000', '3860000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('37', '3', '19/04/05/003', 'priska', null, 'surabaya', '8000000', '800000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('38', '3', '19/04/05/004', 'cintia', null, 'surabaya', '47000000', '4640000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('39', '3', '19/04/05/005', 'agnes', null, 'surabaya', '11000000', '1040000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('40', '3', '19/04/05/006', 'ayu', null, 'surabaya', '6500000', '640000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('41', '3', '19/04/05/007', 'adi', null, 'surabaya', '45500000', '4520000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('42', '3', '19/04/05/008', 'budi', null, 'surabaya', '13000000', '1250000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('43', '3', '19/04/05/009', 'arjun', null, 'surabaya', '12000000', '1175000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('44', '3', '19/04/05/010', 'kevin', null, 'surabaya', '79000000', '7870000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('45', '3', '19/04/05/011', 'yolanda', null, 'surabaya', '1000000', '975000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('46', '3', '19/04/05/012', 'made', null, 'surabaya', '850000', '825000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('47', '3', '19/04/05/013', 'dewi', null, 'surabaya', '11900000', '11845000', '2019-04-05 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('48', '3', '19/04/08/001', 'adi', null, 'surabaya', '1200000', '1200000', '2019-04-08 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('49', '3', '19/04/08/002', 'ce tika', null, 'surabaya', '4000000', '3920000', '2019-04-08 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('50', '3', '19/04/08/003', 'teguh', null, 'surabaya', '19000000', '18950000', '2019-04-08 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('51', '3', '19/04/08/004', 'priska', null, 'surabaya', '4000000', '3880000', '2019-04-08 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('52', '3', '19/04/08/005', 'cintia', null, 'surabaya', '1800000', '1800000', '2019-04-08 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('53', '3', '19/04/08/006', 'agnes', null, 'surabaya', '9500000', '9350000', '2019-04-08 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('54', '3', '19/04/09/001', 'ayu', null, 'surabaya', '20300000', '20280000', '2019-04-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('55', '3', '19/04/09/002', 'adi', null, 'mataram', '650000', '650000', '2019-04-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('56', '3', '19/04/13/001', 'budi', null, 'mataram', '1400000', '1400000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('57', '3', '19/04/13/002', 'arjun', null, 'mataram', '1650000', '1650000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('58', '3', '19/04/13/003', 'kevin', null, 'mataram', '3480000', '3480000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('59', '3', '19/04/13/004', 'yolanda', null, 'mataram', '22370000', '22370000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('60', '3', '19/04/13/005', 'made', null, 'mataram', '1250000', '1250000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('61', '3', '19/04/13/006', 'dewi', null, 'mataram', '1300000', '1300000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('62', '3', '19/04/13/007', 'adi', null, 'mataram', '400000', '400000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('63', '3', '19/04/13/008', 'ce tika', null, 'mataram', '1390000', '1390000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('64', '3', '19/04/13/009', 'teguh', null, 'mataram', '1530000', '1530000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('65', '3', '19/04/13/010', 'priska', null, 'mataram', '1840000', '1840000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('66', '3', '19/04/13/011', 'cintia', null, 'mataram', '11820000', '11820000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('67', '3', '19/04/13/012', 'agnes', null, 'mataram', '22700000', '22700000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('68', '3', '19/04/13/013', 'ayu', null, 'mataram', '5990000', '5990000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('69', '3', '19/04/13/014', 'adi', null, 'mataram', '18970000', '18970000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('70', '3', '19/04/13/015', 'budi', null, 'mataram', '990000', '990000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('71', '3', '19/04/13/016', 'arjun', null, 'mataram', '15780000', '15780000', '2019-04-13 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('72', '3', '19/04/20/001', 'kevin', null, 'mataram', '18320000', '18320000', '2019-04-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('73', '3', '19/04/20/002', 'yolanda', null, 'mataram', '7670000', '7670000', '2019-04-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('74', '3', '19/04/20/003', 'made', null, 'mataram', '1160000', '1160000', '2019-04-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('75', '3', '19/04/20/004', 'dewi', null, 'mataram', '1050000', '1050000', '2019-04-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('76', '3', '19/04/20/005', 'adi', null, 'mataram', '4095000', '4095000', '2019-04-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('77', '3', '19/04/25/001', 'ce tika', null, 'mataram', '1430000', '1430000', '2019-04-25 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('78', '3', '19/04/25/002', 'teguh', null, 'mataram', '275000', '275000', '2019-04-25 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('79', '3', '19/04/25/003', 'priska', null, 'mataram', '5715000', '5715000', '2019-04-25 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('80', '3', '19/04/25/004', 'cintia', null, 'mataram', '1440000', '1440000', '2019-04-25 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('81', '3', '19/04/25/005', 'agnes', null, 'mataram', '750000', '750000', '2019-04-25 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('82', '3', '19/04/25/006', 'ayu', null, 'mataram', '1500000', '1500000', '2019-04-25 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('83', '3', '19/04/25/007', 'adi', null, 'mataram', '1170000', '1170000', '2019-04-25 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('84', '3', '19/04/25/008', 'budi', null, 'mataram', '18815000', '18815000', '2019-04-25 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('85', '3', '19/04/30/001', 'arjun', null, 'mataram', '5490000', '5490000', '2019-04-30 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('86', '3', '19/04/30/002', 'kevin', null, 'mataram', '14680000', '14680000', '2019-04-30 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('87', '3', '19/04/30/003', 'yolanda', null, 'mataram', '20545000', '20545000', '2019-04-30 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('88', '3', '19/04/30/004', 'made', null, 'mataram', '1420000', '1420000', '2019-04-30 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('89', '3', '19/04/30/005', 'dewi', null, 'mataram', '1745000', '1745000', '2019-04-30 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('90', '3', '19/04/30/006', 'adi', null, 'mataram', '990000', '990000', '2019-04-30 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('91', '3', '19/05/01/001', 'ce tika', null, 'mataram', '955000', '955000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('92', '3', '19/05/01/002', 'teguh', null, 'mataram', '2220000', '2220000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('93', '3', '19/05/01/003', 'priska', null, 'mataram', '8530000', '8530000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('94', '3', '19/05/01/004', 'cintia', null, 'mataram', '3665000', '3665000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('95', '3', '19/05/01/005', 'agnes', null, 'mataram', '15110000', '15110000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('96', '3', '19/05/01/006', 'ayu', null, 'mataram', '2640000', '2640000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('97', '3', '19/05/01/007', 'adi', null, 'mataram', '14490000', '14490000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('98', '3', '19/05/01/008', 'budi', null, 'mataram', '14520000', '14520000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('99', '3', '19/05/01/009', 'arjun', null, 'mataram', '1450000', '1450000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('100', '3', '19/05/01/010', 'kevin', null, 'mataram', '19940000', '19940000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('101', '3', '19/05/01/011', 'yolanda', null, 'mataram', '1800000', '1800000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('102', '3', '19/05/01/012', 'made', null, 'mataram', '4200000', '4200000', '2019-05-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('103', '3', '19/05/04/001', 'dewi', null, 'mataram', '13700000', '13700000', '2019-05-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('104', '3', '19/05/04/002', 'adi', null, 'mataram', '1680000', '1680000', '2019-05-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('105', '3', '19/05/04/003', 'ce tika', null, 'mataram', '5890000', '5890000', '2019-05-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('106', '3', '19/05/04/004', 'teguh', null, 'mataram', '16195000', '16195000', '2019-05-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('107', '3', '19/05/04/005', 'priska', null, 'mataram', '16620000', '16620000', '2019-05-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('108', '3', '19/05/04/006', 'cintia', null, 'mataram', '22560000', '22560000', '2019-05-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('109', '3', '19/05/04/007', 'agnes', null, 'mataram', '9865000', '9865000', '2019-05-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('110', '3', '19/05/04/008', 'ayu', null, 'mataram', '19370000', '19370000', '2019-05-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('111', '3', '19/05/06/001', 'adi', null, 'mataram', '750000', '750000', '2019-05-06 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('112', '3', '19/05/06/002', 'budi', null, 'mataram', '9990000', '9990000', '2019-05-06 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('113', '3', '19/05/06/003', 'arjun', null, 'mataram', '880000', '880000', '2019-05-06 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('114', '3', '19/05/09/001', 'kevin', null, 'mataram', '880000', '880000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('115', '3', '19/05/09/002', 'yolanda', null, 'mataram', '19540000', '19540000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('116', '3', '19/05/09/003', 'made', null, 'mataram', '3455000', '3455000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('117', '3', '19/05/09/004', 'dewi', null, 'mataram', '2530000', '2530000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('118', '3', '19/05/09/005', 'adi', null, 'mataram', '2320000', '2320000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('119', '3', '19/05/09/006', 'ce tika', null, 'mataram', '2810000', '2810000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('120', '3', '19/05/09/007', 'teguh', null, 'mataram', '625000', '625000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('121', '3', '19/05/09/008', 'priska', null, 'mataram', '6620000', '6620000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('122', '3', '19/05/09/009', 'cintia', null, 'mataram', '150000', '150000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('123', '3', '19/05/09/010', 'agnes', null, 'mataram', '380000', '380000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('124', '3', '19/05/09/011', 'ayu', null, 'mataram', '2360000', '2360000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('125', '3', '19/05/09/012', 'adi', null, 'mataram', '1450000', '1450000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('126', '3', '19/05/09/013', 'budi', null, 'mataram', '1300000', '1300000', '2019-05-09 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('127', '3', '19/05/14/001', 'arjun', null, 'mataram', '22690000', '22690000', '2019-05-14 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('128', '3', '19/05/14/002', 'kevin', null, 'mataram', '14610000', '14610000', '2019-05-14 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('129', '3', '19/05/16/001', 'yolanda', null, 'semarang', '11130000', '11130000', '2019-05-16 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('130', '3', '19/05/16/002', 'made', null, 'semarang', '2870000', '2870000', '2019-05-16 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('131', '3', '19/05/16/003', 'dewi', null, 'semarang', '1240000', '1240000', '2019-05-16 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('132', '3', '19/05/16/004', 'adi', null, 'semarang', '9200000', '9200000', '2019-05-16 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('133', '3', '19/05/16/005', 'ce tika', null, 'semarang', '2300000', '2300000', '2019-05-16 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('134', '3', '19/05/16/006', 'teguh', null, 'semarang', '22500000', '22500000', '2019-05-16 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('135', '3', '19/05/16/007', 'priska', null, 'semarang', '12910000', '12910000', '2019-05-16 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('136', '3', '19/05/20/001', 'cintia', null, 'semarang', '3480000', '3480000', '2019-05-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('137', '3', '19/05/20/002', 'agnes', null, 'semarang', '475000', '475000', '2019-05-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('138', '3', '19/05/20/003', 'ayu', null, 'semarang', '6190000', '6190000', '2019-05-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('139', '3', '19/05/20/004', 'adi', null, 'semarang', '16910000', '16910000', '2019-05-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('140', '3', '19/05/20/005', 'budi', null, 'semarang', '1150000', '1150000', '2019-05-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('141', '3', '19/05/24/001', 'arjun', null, 'semarang', '1470000', '1470000', '2019-05-24 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('142', '3', '19/05/24/002', 'kevin', null, 'semarang', '10040000', '10040000', '2019-05-24 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('143', '3', '19/05/24/003', 'yolanda', null, 'semarang', '2900000', '2900000', '2019-05-24 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('144', '3', '19/05/24/004', 'made', null, 'solo', '1880000', '1880000', '2019-05-24 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('145', '3', '19/05/24/005', 'dewi', null, 'solo', '10570000', '10570000', '2019-05-24 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('146', '3', '19/05/24/006', 'adi', null, 'solo', '650000', '650000', '2019-05-24 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('147', '3', '19/05/26/001', 'ce tika', null, 'solo', '1080000', '1080000', '2019-05-26 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('148', '3', '19/05/26/002', 'teguh', null, 'solo', '1050000', '1050000', '2019-05-26 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('149', '3', '19/05/26/003', 'priska', null, 'solo', '1750000', '1750000', '2019-05-26 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('150', '3', '19/05/26/004', 'cintia', null, 'solo', '1025000', '1025000', '2019-05-26 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('151', '3', '19/05/26/005', 'agnes', null, 'solo', '22250000', '22250000', '2019-05-26 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('152', '3', '19/05/26/006', 'ayu', null, 'solo', '950000', '950000', '2019-05-26 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('153', '3', '19/05/26/007', 'adi', null, 'solo', '1175000', '1175000', '2019-05-26 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('154', '3', '19/05/27/001', 'budi', null, 'solo', '3240000', '3240000', '2019-05-27 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('155', '3', '19/05/27/002', 'arjun', null, 'solo', '19000000', '19000000', '2019-05-27 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('156', '3', '19/06/10/001', 'ayu', null, 'surabaya', '4800000', '4770000', '2019-06-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('157', '3', '19/06/10/002', 'adi', null, 'surabaya', '550000', '520000', '2019-06-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('158', '3', '19/06/10/003', 'budi', null, 'surabaya', '530000', '520000', '2019-06-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('159', '3', '19/06/10/004', 'arjun', null, 'surabaya', '4500000', '4475000', '2019-06-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('160', '3', '19/06/12/001', 'kevin', null, 'surabaya', '1500000', '145000', '2019-06-12 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('161', '3', '19/06/12/002', 'yolanda', null, 'surabaya', '50000', '50000', '2019-06-12 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('162', '3', '19/06/12/003', 'made', null, 'surabaya', '600000', '600000', '2019-06-12 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('163', '3', '19/06/15/001', 'dewi', null, 'surabaya', '650000', '620000', '2019-06-15 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('164', '3', '19/06/15/002', 'adi', null, 'surabaya', '330000', '325000', '2019-06-15 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('165', '3', '19/06/15/003', 'ce tika', null, 'surabaya', '4750000', '4750000', '2019-06-15 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('166', '3', '19/06/15/004', 'teguh', null, 'surabaya', '225000', '225000', '2019-06-15 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('167', '3', '19/06/15/005', 'priska', null, 'surabaya', '4750000', '4750000', '2019-06-15 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('168', '3', '19/06/15/006', 'cintia', null, 'surabaya', '500000', '500000', '2019-06-15 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('169', '3', '19/06/19/001', 'agnes', null, 'surabaya', '400000', '400000', '2019-06-19 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('170', '3', '19/06/19/002', 'ayu', null, 'surabaya', '550000', '520000', '2019-06-19 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('171', '3', '19/06/19/003', 'adi', null, 'surabaya', '4475000', '4475000', '2019-06-19 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('172', '3', '19/06/19/004', 'budi', null, 'surabaya', '350000', '320000', '2019-06-19 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('173', '3', '19/06/19/005', 'arjun', null, 'surabaya', '230000', '225000', '2019-06-19 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('174', '3', '19/06/19/006', 'kevin', null, 'surabaya', '320000', '320000', '2019-06-19 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('175', '3', '19/06/19/007', 'yolanda', null, 'surabaya', '150000', '145000', '2019-06-19 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('176', '3', '19/06/29/001', 'made', null, 'surabaya', '450000', '445000', '2019-06-29 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('177', '3', '19/07/01/001', 'dewi', null, 'surabaya', '4750000', '4750000', '2019-07-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('178', '3', '19/07/01/002', 'adi', null, 'denpasar', '400000', '400000', '2019-07-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('179', '3', '19/07/01/003', 'ce tika', null, 'denpasar', '120000', '120000', '2019-07-01 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('180', '3', '19/07/04/001', 'teguh', null, 'denpasar', '520000', '520000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('181', '3', '19/07/04/002', 'priska', null, 'denpasar', '8900000', '8900000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('182', '3', '19/07/04/003', 'cintia', null, 'denpasar', '400000', '400000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('183', '3', '19/07/04/004', 'agnes', null, 'denpasar', '440000', '440000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('184', '3', '19/07/04/005', 'ayu', null, 'denpasar', '25000', '25000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('185', '3', '19/07/04/006', 'adi', null, 'bogor', '4450000', '4450000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('186', '3', '19/07/04/007', 'budi', null, 'bogor', '4570000', '4570000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('187', '3', '19/07/04/008', 'arjun', null, 'bogor', '4475000', '4475000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('188', '3', '19/07/04/009', 'kevin', null, 'bogor', '225000', '225000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('189', '3', '19/07/04/010', 'yolanda', null, 'bogor', '145000', '145000', '2019-07-04 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('190', '3', '19/07/10/001', 'made', null, 'bogor', '4570000', '4570000', '2019-07-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('191', '3', '19/07/10/002', 'dewi', null, 'bogor', '600000', '600000', '2019-07-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('192', '3', '19/07/10/003', 'adi', null, 'bogor', '4650000', '4650000', '2019-07-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('193', '3', '19/07/10/004', 'ce tika', null, 'bogor', '420000', '420000', '2019-07-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('194', '3', '19/07/10/005', 'teguh', null, 'bogor', '440000', '440000', '2019-07-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('195', '3', '19/07/10/006', 'priska', null, 'bogor', '520000', '520000', '2019-07-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('196', '3', '19/07/10/007', 'cintia', null, 'bekasi', '600000', '600000', '2019-07-10 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('197', '3', '19/07/14/001', 'agnes', null, 'bekasi', '320000', '320000', '2019-07-14 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('198', '3', '19/07/14/002', 'ayu', null, 'bekasi', '640000', '640000', '2019-07-14 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('199', '3', '19/07/14/003', 'adi', null, 'bekasi', '4570000', '4570000', '2019-07-14 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('200', '3', '19/07/17/001', 'budi', null, 'bekasi', '320000', '320000', '2019-07-17 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('201', '3', '19/07/17/002', 'arjun', null, 'bekasi', '500000', '500000', '2019-07-17 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('202', '3', '19/07/17/003', 'kevin', null, 'bekasi', '4650000', '4650000', '2019-07-17 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('203', '3', '19/07/17/004', 'yolanda', null, 'bekasi', '440000', '440000', '2019-07-17 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('204', '3', '19/07/17/005', 'made', null, 'bekasi', '320000', '320000', '2019-07-17 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('205', '3', '19/07/17/006', 'dewi', null, 'bekasi', '640000', '640000', '2019-07-17 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('206', '3', '19/07/20/001', 'adi', null, 'Klaten', '620000', '620000', '2019-07-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('207', '3', '19/07/20/002', 'ce tika', null, 'Klaten', '520000', '520000', '2019-07-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('208', '3', '19/07/20/003', 'teguh', null, 'Klaten', '320000', '320000', '2019-07-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('209', '3', '19/07/20/004', 'priska', null, 'Klaten', '620000', '620000', '2019-07-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('210', '3', '19/07/20/005', 'cintia', null, 'Klaten', '345000', '345000', '2019-07-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('211', '3', '19/07/20/006', 'agnes', null, 'Klaten', '4475000', '4475000', '2019-07-20 10:58:00', 'Lunas', 'Proses kirim', null);
INSERT INTO `invoice` VALUES ('212', '3', '19/07/28/001', 'Toko ABC', 'JL. jemur', 'Surabaya', '450000', '440000', '2019-07-28 17:26:03', 'Lunas', 'Proses Gudang', null);
INSERT INTO `invoice` VALUES ('213', '3', '19/07/28/002', 'Apin', 'Jl. Bulevard no 14', 'Surabaya', '1050000', '1010000', '2019-07-28 17:28:35', 'Lunas', 'Proses Gudang', null);
INSERT INTO `invoice` VALUES ('214', '1', '19/09/13/001', 'Motto Race', 'Jl, Kapas Krampung', 'Surabaya', '225000', '224000', '2019-09-13 22:59:50', 'Lunas', 'Proses Gudang', 'partai');

-- ----------------------------
-- Table structure for kategori_produk
-- ----------------------------
DROP TABLE IF EXISTS `kategori_produk`;
CREATE TABLE `kategori_produk` (
  `id_cat` int(11) NOT NULL AUTO_INCREMENT,
  `nm_cat` varchar(100) DEFAULT NULL,
  `st_cat` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_produk
-- ----------------------------
INSERT INTO `kategori_produk` VALUES ('1', 'Ban', '1');
INSERT INTO `kategori_produk` VALUES ('2', 'Fairing', '1');
INSERT INTO `kategori_produk` VALUES ('3', 'ARM', '1');
INSERT INTO `kategori_produk` VALUES ('4', 'BOX', '1');
INSERT INTO `kategori_produk` VALUES ('5', 'SHOCK', '1');
INSERT INTO `kategori_produk` VALUES ('6', 'Cover tank', '1');

-- ----------------------------
-- Table structure for kriteria
-- ----------------------------
DROP TABLE IF EXISTS `kriteria`;
CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nm_kriteria` varchar(255) DEFAULT NULL,
  `st_kriteria` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kriteria
-- ----------------------------

-- ----------------------------
-- Table structure for kriteria_produk
-- ----------------------------
DROP TABLE IF EXISTS `kriteria_produk`;
CREATE TABLE `kriteria_produk` (
  `id_kriteria_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_kriteria` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `harga_kriteria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kriteria_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kriteria_produk
-- ----------------------------

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id_plg` int(11) NOT NULL AUTO_INCREMENT,
  `nm_plg` varchar(255) DEFAULT NULL,
  `alm_plg` varchar(255) DEFAULT NULL,
  `kota_plg` varchar(255) DEFAULT NULL,
  `id_hargajual` varchar(100) DEFAULT NULL,
  `st_plg` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_plg`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES ('1', 'guest', '', '', 'umum', '1');
INSERT INTO `pelanggan` VALUES ('2', 'Toko ABC', 'Jl, Jemur', 'Surabaya', 'freelance', '1');
INSERT INTO `pelanggan` VALUES ('3', 'Motto Race', 'Jl, Kapas Krampung', 'Surabaya', 'partai', '1');

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `nm_produk` varchar(255) DEFAULT NULL,
  `stok_produk` int(11) DEFAULT NULL,
  `beli_produk` varchar(255) DEFAULT NULL,
  `ft_produk` varchar(255) DEFAULT NULL,
  `up_produk` timestamp NULL DEFAULT NULL,
  `st_produk` smallint(6) DEFAULT NULL,
  `harga_umum` varchar(255) DEFAULT NULL,
  `harga_partai` varchar(255) DEFAULT NULL,
  `harga_freelance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_produk`),
  KEY `fk_relationship_1` (`id_cat`),
  KEY `fk_relationship_6` (`id_user`),
  CONSTRAINT `fk_relationship_1` FOREIGN KEY (`id_cat`) REFERENCES `kategori_produk` (`id_cat`),
  CONSTRAINT `fk_relationship_6` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES ('1', '1', '3', 'COVER ARM HAGER CBR 150R new', '27', '25000', 'Cover_arm.PNG', '2019-09-13 22:49:22', '1', '30000', '27000', '29000');
INSERT INTO `produk` VALUES ('2', '1', '5', 'Front bottom shock', '23', '160000', 'front_botton_shock.PNG', '2019-09-13 22:49:45', '1', '180000', '170000', '175000');
INSERT INTO `produk` VALUES ('3', '1', '1', 'Cover tank cbr 150', '63', '40000', 'cover_tank_cbr.PNG', '2019-07-25 10:40:08', '1', null, null, null);
INSERT INTO `produk` VALUES ('4', '1', '6', 'cover tank abs vixion', '50', '50000', 'cover_tank_vixion.PNG', '2019-07-25 10:40:30', '1', null, null, null);
INSERT INTO `produk` VALUES ('5', '1', '3', 'SWING ARM R6 MEGAPRO', '14', '890000', 'swing arm.PNG', '2019-07-25 10:37:28', '1', null, null, null);
INSERT INTO `produk` VALUES ('6', '1', '4', 'BOX NMAX', '37', '50000', 'box_nmax.PNG', '2019-07-25 10:38:15', '1', null, null, null);
INSERT INTO `produk` VALUES ('7', '1', '2', 'Spakbor KSr cyber led+sen', '0', '67000', 'user.png', '2019-07-30 23:09:52', '1', null, null, null);
INSERT INTO `produk` VALUES ('8', '1', '3', 'Cover head CBR 150', '0', '80000', 'user.png', '2019-07-30 23:11:21', '1', null, null, null);

-- ----------------------------
-- Table structure for pro_alternatives
-- ----------------------------
DROP TABLE IF EXISTS `pro_alternatives`;
CREATE TABLE `pro_alternatives` (
  `id_alternative` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` char(1) NOT NULL,
  PRIMARY KEY (`id_alternative`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pro_alternatives
-- ----------------------------

-- ----------------------------
-- Table structure for pro_criterias
-- ----------------------------
DROP TABLE IF EXISTS `pro_criterias`;
CREATE TABLE `pro_criterias` (
  `id_criteria` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `criteria` varchar(30) NOT NULL,
  PRIMARY KEY (`id_criteria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pro_criterias
-- ----------------------------
INSERT INTO `pro_criterias` VALUES ('1', 'Jumlah Barang');
INSERT INTO `pro_criterias` VALUES ('2', 'Stok Barang');
INSERT INTO `pro_criterias` VALUES ('3', 'Harga');

-- ----------------------------
-- Table structure for pro_evaluations
-- ----------------------------
DROP TABLE IF EXISTS `pro_evaluations`;
CREATE TABLE `pro_evaluations` (
  `id_alternative` smallint(5) unsigned NOT NULL,
  `id_sub_criteria` smallint(5) unsigned NOT NULL,
  `value` double(4,2) NOT NULL,
  PRIMARY KEY (`id_alternative`,`id_sub_criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pro_evaluations
-- ----------------------------

-- ----------------------------
-- Table structure for pro_sub_criterias
-- ----------------------------
DROP TABLE IF EXISTS `pro_sub_criterias`;
CREATE TABLE `pro_sub_criterias` (
  `id_sub_criteria` smallint(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_criteria` smallint(5) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `id_type` tinyint(2) NOT NULL,
  `min_max` set('min','max') DEFAULT 'max',
  `p` double DEFAULT NULL,
  `q` double DEFAULT NULL,
  `s` double DEFAULT NULL,
  PRIMARY KEY (`id_sub_criteria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pro_sub_criterias
-- ----------------------------
INSERT INTO `pro_sub_criterias` VALUES ('1', '1', 'Jumlah Barang', '2', 'max', '8', '2', '0');
INSERT INTO `pro_sub_criterias` VALUES ('2', '2', 'Stok Barang', '2', 'max', '3', '1', '0');
INSERT INTO `pro_sub_criterias` VALUES ('3', '3', 'Harga', '4', 'min', '6', '3', '0');

-- ----------------------------
-- Table structure for pro_types
-- ----------------------------
DROP TABLE IF EXISTS `pro_types`;
CREATE TABLE `pro_types` (
  `id_type` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pro_types
-- ----------------------------
INSERT INTO `pro_types` VALUES ('1', 'Usual');
INSERT INTO `pro_types` VALUES ('2', 'Linear');
INSERT INTO `pro_types` VALUES ('3', 'Quasi');
INSERT INTO `pro_types` VALUES ('4', 'Linear Quasi');
INSERT INTO `pro_types` VALUES ('5', 'Level');
INSERT INTO `pro_types` VALUES ('6', 'Gaussian');

-- ----------------------------
-- Table structure for suplier
-- ----------------------------
DROP TABLE IF EXISTS `suplier`;
CREATE TABLE `suplier` (
  `id_sup` int(11) NOT NULL AUTO_INCREMENT,
  `nm_sup` varchar(255) DEFAULT NULL,
  `alm_sup` varchar(255) DEFAULT NULL,
  `st_sup` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_sup`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suplier
-- ----------------------------
INSERT INTO `suplier` VALUES ('1', 'Coba suplier', 'Surabaya', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `id_lvl` int(11) DEFAULT NULL,
  `id_cabang` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ft_user` varchar(255) DEFAULT NULL,
  `last_user` timestamp NULL DEFAULT NULL,
  `st_user` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `fk_relationship_4` (`id_cabang`),
  KEY `fk_relationship_5` (`id_lvl`),
  CONSTRAINT `fk_relationship_4` FOREIGN KEY (`id_cabang`) REFERENCES `cabang` (`id_cabang`),
  CONSTRAINT `fk_relationship_5` FOREIGN KEY (`id_lvl`) REFERENCES `user_level` (`id_lvl`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', 'pimpinan', '202cb962ac59075b964b07152d234b70', null, 'user.png', '2019-09-13 23:40:03', '1');
INSERT INTO `user` VALUES ('2', '3', '2', 'gudang_jatim', '202446dd1d6028084426867365b0c7a1', null, 'user.png', '2019-07-27 11:15:42', '1');
INSERT INTO `user` VALUES ('3', '4', '2', 'kasir_jatim', 'c7911af3adbd12a035b289556d96470a', 'kasir@motto.co.id', 'user.png', '2019-07-28 17:29:45', '1');

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `id_lvl` int(11) NOT NULL AUTO_INCREMENT,
  `nm_lvl` varchar(50) DEFAULT NULL,
  `st_lvl` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_lvl`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES ('1', 'admin', '1');
INSERT INTO `user_level` VALUES ('2', 'pimpinan', '1');
INSERT INTO `user_level` VALUES ('3', 'gudang', '1');
INSERT INTO `user_level` VALUES ('4', 'kasir', '1');
INSERT INTO `user_level` VALUES ('5', 'a', '2');
