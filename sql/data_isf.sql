/*
Navicat MySQL Data Transfer

Source Server         : mr
Source Server Version : 50720
Source Host           : 47.100.7.81:3306
Source Database       : data_isf

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-15 19:45:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(10) DEFAULT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `is_hot` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '0', '北京市', '0');
INSERT INTO `area` VALUES ('2', '0', '上海市', '0');
INSERT INTO `area` VALUES ('3', '0', '天津市', '0');
INSERT INTO `area` VALUES ('4', '0', '重庆市', '0');
INSERT INTO `area` VALUES ('5', '0', '黑龙江省', '0');
INSERT INTO `area` VALUES ('6', '0', '吉林省', '0');
INSERT INTO `area` VALUES ('7', '0', '辽宁省', '0');
INSERT INTO `area` VALUES ('8', '0', '山东省', '0');
INSERT INTO `area` VALUES ('9', '0', '山西省', '0');
INSERT INTO `area` VALUES ('10', '0', '陕西省', '0');
INSERT INTO `area` VALUES ('11', '0', '河北省', '0');
INSERT INTO `area` VALUES ('12', '0', '河南省', '0');
INSERT INTO `area` VALUES ('13', '0', '湖北省', '0');
INSERT INTO `area` VALUES ('14', '0', '湖南省', '0');
INSERT INTO `area` VALUES ('15', '0', '海南省', '0');
INSERT INTO `area` VALUES ('16', '0', '江苏省', '0');
INSERT INTO `area` VALUES ('17', '0', '江西省', '0');
INSERT INTO `area` VALUES ('18', '0', '广东省', '0');
INSERT INTO `area` VALUES ('19', '0', '广西省', '0');
INSERT INTO `area` VALUES ('20', '0', '云南省', '0');
INSERT INTO `area` VALUES ('21', '0', '贵州省', '0');
INSERT INTO `area` VALUES ('22', '0', '四川省', '0');
INSERT INTO `area` VALUES ('23', '0', '内蒙古自治区', '0');
INSERT INTO `area` VALUES ('24', '0', '宁夏回族自治区', '0');
INSERT INTO `area` VALUES ('25', '0', '甘肃省', '0');
INSERT INTO `area` VALUES ('26', '0', '青海省', '0');
INSERT INTO `area` VALUES ('27', '0', '西藏自治区', '0');
INSERT INTO `area` VALUES ('28', '0', '新疆自治区', '0');
INSERT INTO `area` VALUES ('29', '0', '安徽省', '0');
INSERT INTO `area` VALUES ('30', '0', '浙江省', '0');
INSERT INTO `area` VALUES ('31', '0', '福建省', '0');
INSERT INTO `area` VALUES ('32', '0', '台湾省', '0');
INSERT INTO `area` VALUES ('33', '0', '香港', '0');
INSERT INTO `area` VALUES ('34', '0', '澳门', '0');
INSERT INTO `area` VALUES ('35', '1', '北京市', '1');
INSERT INTO `area` VALUES ('36', '2', '上海市', '1');
INSERT INTO `area` VALUES ('37', '3', '天津市', '0');
INSERT INTO `area` VALUES ('38', '4', '重庆市', '0');
INSERT INTO `area` VALUES ('39', '11', '石家庄市', '0');
INSERT INTO `area` VALUES ('40', '11', '张家口市', '0');
INSERT INTO `area` VALUES ('41', '11', '承德市', '0');
INSERT INTO `area` VALUES ('42', '11', '唐山市', '0');
INSERT INTO `area` VALUES ('43', '11', '秦皇岛市', '0');
INSERT INTO `area` VALUES ('44', '11', '廊坊市', '0');
INSERT INTO `area` VALUES ('45', '11', '保定市', '0');
INSERT INTO `area` VALUES ('46', '11', '沧州市', '0');
INSERT INTO `area` VALUES ('47', '11', '衡水市', '0');
INSERT INTO `area` VALUES ('48', '11', '邢台市', '0');
INSERT INTO `area` VALUES ('49', '11', '邯郸市', '0');
INSERT INTO `area` VALUES ('50', '9', '太原市', '0');
INSERT INTO `area` VALUES ('51', '9', '大同市', '0');
INSERT INTO `area` VALUES ('52', '9', '朔州市', '0');
INSERT INTO `area` VALUES ('53', '9', '忻州市', '0');
INSERT INTO `area` VALUES ('54', '9', '阳泉市', '0');
INSERT INTO `area` VALUES ('55', '9', '晋中市', '0');
INSERT INTO `area` VALUES ('56', '9', '吕梁市', '0');
INSERT INTO `area` VALUES ('57', '9', '长治市', '0');
INSERT INTO `area` VALUES ('58', '9', '临汾市', '0');
INSERT INTO `area` VALUES ('59', '9', '晋城市', '0');
INSERT INTO `area` VALUES ('60', '9', '运城市', '0');
INSERT INTO `area` VALUES ('61', '23', '呼和浩特市', '0');
INSERT INTO `area` VALUES ('62', '23', '呼伦贝尔市', '0');
INSERT INTO `area` VALUES ('63', '23', '通辽市', '0');
INSERT INTO `area` VALUES ('64', '23', '赤峰市', '0');
INSERT INTO `area` VALUES ('65', '23', '巴彦淖尔市', '0');
INSERT INTO `area` VALUES ('66', '23', '乌兰察布市', '0');
INSERT INTO `area` VALUES ('67', '23', '包头市', '0');
INSERT INTO `area` VALUES ('68', '23', '鄂尔多斯市', '0');
INSERT INTO `area` VALUES ('69', '23', '乌海市', '0');
INSERT INTO `area` VALUES ('70', '5', '哈尔滨市', '1');
INSERT INTO `area` VALUES ('71', '5', '黑河市', '0');
INSERT INTO `area` VALUES ('72', '5', '伊春市', '0');
INSERT INTO `area` VALUES ('73', '5', '齐齐哈尔市', '0');
INSERT INTO `area` VALUES ('74', '5', '鹤岗市', '0');
INSERT INTO `area` VALUES ('75', '5', '佳木斯市', '0');
INSERT INTO `area` VALUES ('76', '5', '双鸭山市', '0');
INSERT INTO `area` VALUES ('77', '5', '绥化市', '0');
INSERT INTO `area` VALUES ('78', '5', '大庆市', '0');
INSERT INTO `area` VALUES ('79', '5', '七台河市', '0');
INSERT INTO `area` VALUES ('80', '5', '鸡西市', '0');
INSERT INTO `area` VALUES ('81', '5', '牡丹江市', '0');
INSERT INTO `area` VALUES ('82', '6', '长春市', '0');
INSERT INTO `area` VALUES ('83', '6', '白城市', '0');
INSERT INTO `area` VALUES ('84', '6', '松原市', '0');
INSERT INTO `area` VALUES ('85', '6', '吉林市', '0');
INSERT INTO `area` VALUES ('86', '6', '四平市', '0');
INSERT INTO `area` VALUES ('87', '6', '辽源市', '0');
INSERT INTO `area` VALUES ('88', '6', '白山市', '0');
INSERT INTO `area` VALUES ('89', '6', '通化市', '0');
INSERT INTO `area` VALUES ('90', '6', '延吉市', '0');
INSERT INTO `area` VALUES ('91', '7', '沈阳市', '0');
INSERT INTO `area` VALUES ('92', '7', '铁岭市', '0');
INSERT INTO `area` VALUES ('93', '7', '阜新市', '0');
INSERT INTO `area` VALUES ('94', '7', '抚顺市', '0');
INSERT INTO `area` VALUES ('95', '7', '朝阳市', '0');
INSERT INTO `area` VALUES ('96', '7', '本溪市', '0');
INSERT INTO `area` VALUES ('97', '7', '辽阳市', '0');
INSERT INTO `area` VALUES ('98', '7', '鞍山市', '0');
INSERT INTO `area` VALUES ('99', '7', '盘锦市', '0');
INSERT INTO `area` VALUES ('100', '7', '锦州市', '0');
INSERT INTO `area` VALUES ('101', '7', '葫芦岛市', '0');
INSERT INTO `area` VALUES ('102', '7', '营口市', '0');
INSERT INTO `area` VALUES ('103', '7', '丹东市', '0');
INSERT INTO `area` VALUES ('104', '7', '大连市', '0');
INSERT INTO `area` VALUES ('105', '16', '南京市', '1');
INSERT INTO `area` VALUES ('106', '16', '连云港市', '0');
INSERT INTO `area` VALUES ('107', '16', '徐州市', '0');
INSERT INTO `area` VALUES ('108', '16', '宿迁市', '0');
INSERT INTO `area` VALUES ('109', '16', '淮安市', '0');
INSERT INTO `area` VALUES ('110', '16', '盐城市', '0');
INSERT INTO `area` VALUES ('111', '16', '泰州市', '0');
INSERT INTO `area` VALUES ('112', '16', '扬州市', '0');
INSERT INTO `area` VALUES ('113', '16', '镇江市', '0');
INSERT INTO `area` VALUES ('114', '16', '南通市', '0');
INSERT INTO `area` VALUES ('115', '16', '常州市', '0');
INSERT INTO `area` VALUES ('116', '16', '无锡市', '0');
INSERT INTO `area` VALUES ('117', '16', '苏州市', '0');
INSERT INTO `area` VALUES ('118', '30', '杭州市', '1');
INSERT INTO `area` VALUES ('119', '30', '湖州市', '0');
INSERT INTO `area` VALUES ('120', '30', '嘉兴市', '0');
INSERT INTO `area` VALUES ('121', '30', '绍兴市', '0');
INSERT INTO `area` VALUES ('122', '30', '舟山市', '0');
INSERT INTO `area` VALUES ('123', '30', '宁波市', '0');
INSERT INTO `area` VALUES ('124', '30', '金华市', '0');
INSERT INTO `area` VALUES ('125', '30', '衢州市', '0');
INSERT INTO `area` VALUES ('126', '30', '台州市', '0');
INSERT INTO `area` VALUES ('127', '30', '丽水市', '0');
INSERT INTO `area` VALUES ('128', '30', '温州市', '0');
INSERT INTO `area` VALUES ('129', '29', '合肥市', '0');
INSERT INTO `area` VALUES ('130', '29', '淮北市', '0');
INSERT INTO `area` VALUES ('131', '29', '亳州市', '0');
INSERT INTO `area` VALUES ('132', '29', '宿州市', '0');
INSERT INTO `area` VALUES ('133', '29', '蚌埠市', '0');
INSERT INTO `area` VALUES ('134', '29', '阜阳市', '0');
INSERT INTO `area` VALUES ('135', '29', '淮南市', '0');
INSERT INTO `area` VALUES ('136', '29', '滁州市', '0');
INSERT INTO `area` VALUES ('137', '29', '六安市', '0');
INSERT INTO `area` VALUES ('138', '29', '马鞍山市', '0');
INSERT INTO `area` VALUES ('139', '29', '芜湖市', '0');
INSERT INTO `area` VALUES ('140', '29', '宣城市', '0');
INSERT INTO `area` VALUES ('141', '29', '铜陵市', '0');
INSERT INTO `area` VALUES ('142', '29', '池州市', '0');
INSERT INTO `area` VALUES ('143', '29', '安庆市', '0');
INSERT INTO `area` VALUES ('144', '29', '黄山市', '0');
INSERT INTO `area` VALUES ('145', '31', '福州市', '0');
INSERT INTO `area` VALUES ('146', '31', '宁德市', '0');
INSERT INTO `area` VALUES ('147', '31', '南平市', '0');
INSERT INTO `area` VALUES ('148', '31', '三明市', '0');
INSERT INTO `area` VALUES ('149', '31', '莆田市', '0');
INSERT INTO `area` VALUES ('150', '31', '龙岩市', '0');
INSERT INTO `area` VALUES ('151', '31', '泉州市', '0');
INSERT INTO `area` VALUES ('152', '31', '漳州市', '0');
INSERT INTO `area` VALUES ('153', '31', '厦门市', '1');
INSERT INTO `area` VALUES ('154', '17', '南昌市', '0');
INSERT INTO `area` VALUES ('155', '17', '九江市', '0');
INSERT INTO `area` VALUES ('156', '17', '景德镇市', '0');
INSERT INTO `area` VALUES ('157', '17', '上饶市', '0');
INSERT INTO `area` VALUES ('158', '17', '鹰潭市', '0');
INSERT INTO `area` VALUES ('159', '17', '抚州市', '0');
INSERT INTO `area` VALUES ('160', '17', '新余市', '0');
INSERT INTO `area` VALUES ('161', '17', '宜春市', '0');
INSERT INTO `area` VALUES ('162', '17', '萍乡市', '0');
INSERT INTO `area` VALUES ('163', '17', '吉安市', '0');
INSERT INTO `area` VALUES ('164', '17', '赣州市', '0');
INSERT INTO `area` VALUES ('165', '8', '济南市', '0');
INSERT INTO `area` VALUES ('166', '8', '德州市', '0');
INSERT INTO `area` VALUES ('167', '8', '滨州市', '0');
INSERT INTO `area` VALUES ('168', '8', '东营市', '0');
INSERT INTO `area` VALUES ('169', '8', '烟台市', '0');
INSERT INTO `area` VALUES ('170', '8', '威海市', '0');
INSERT INTO `area` VALUES ('171', '8', '淄博市', '0');
INSERT INTO `area` VALUES ('172', '8', '潍坊市', '0');
INSERT INTO `area` VALUES ('173', '8', '聊城市', '0');
INSERT INTO `area` VALUES ('174', '8', '泰安市', '0');
INSERT INTO `area` VALUES ('175', '8', '莱芜市', '0');
INSERT INTO `area` VALUES ('176', '8', '青岛市', '0');
INSERT INTO `area` VALUES ('177', '8', '日照市', '0');
INSERT INTO `area` VALUES ('178', '8', '济宁市', '0');
INSERT INTO `area` VALUES ('179', '8', '菏泽市', '0');
INSERT INTO `area` VALUES ('180', '8', '临沂市', '0');
INSERT INTO `area` VALUES ('181', '8', '枣庄市', '0');
INSERT INTO `area` VALUES ('182', '12', '郑州市', '0');
INSERT INTO `area` VALUES ('183', '12', '安阳市', '0');
INSERT INTO `area` VALUES ('184', '12', '鹤壁市', '0');
INSERT INTO `area` VALUES ('185', '12', '濮阳市', '0');
INSERT INTO `area` VALUES ('186', '12', '新乡市', '0');
INSERT INTO `area` VALUES ('187', '12', '焦作市', '0');
INSERT INTO `area` VALUES ('188', '12', '三门峡市', '0');
INSERT INTO `area` VALUES ('189', '12', '开封市', '0');
INSERT INTO `area` VALUES ('190', '12', '洛阳市', '0');
INSERT INTO `area` VALUES ('191', '12', '商丘市', '0');
INSERT INTO `area` VALUES ('192', '12', '许昌市', '0');
INSERT INTO `area` VALUES ('193', '12', '平顶山市', '0');
INSERT INTO `area` VALUES ('194', '12', '周口市', '0');
INSERT INTO `area` VALUES ('195', '12', '漯河市', '0');
INSERT INTO `area` VALUES ('196', '12', '南阳市', '0');
INSERT INTO `area` VALUES ('197', '12', '驻马店市', '0');
INSERT INTO `area` VALUES ('198', '12', '信阳市', '0');
INSERT INTO `area` VALUES ('199', '12', '济源市', '0');
INSERT INTO `area` VALUES ('200', '13', '武汉市', '1');
INSERT INTO `area` VALUES ('201', '13', '十堰市', '0');
INSERT INTO `area` VALUES ('202', '13', '襄樊市', '0');
INSERT INTO `area` VALUES ('203', '13', '随州市', '0');
INSERT INTO `area` VALUES ('204', '13', '荆门市', '0');
INSERT INTO `area` VALUES ('205', '13', '孝感市', '0');
INSERT INTO `area` VALUES ('206', '13', '宜昌市', '0');
INSERT INTO `area` VALUES ('207', '13', '黄冈市', '0');
INSERT INTO `area` VALUES ('208', '13', '鄂州市', '0');
INSERT INTO `area` VALUES ('209', '13', '荆州市', '0');
INSERT INTO `area` VALUES ('210', '13', '黄石市', '0');
INSERT INTO `area` VALUES ('211', '13', '咸宁市', '0');
INSERT INTO `area` VALUES ('212', '13', '恩施市', '0');
INSERT INTO `area` VALUES ('213', '14', '长沙市', '0');
INSERT INTO `area` VALUES ('214', '14', '岳阳市', '0');
INSERT INTO `area` VALUES ('215', '14', '张家界市', '0');
INSERT INTO `area` VALUES ('216', '14', '常德市', '0');
INSERT INTO `area` VALUES ('217', '14', '益阳市', '0');
INSERT INTO `area` VALUES ('218', '14', '湘潭市', '0');
INSERT INTO `area` VALUES ('219', '14', '株洲市', '0');
INSERT INTO `area` VALUES ('220', '14', '娄底市', '0');
INSERT INTO `area` VALUES ('221', '14', '怀化市', '0');
INSERT INTO `area` VALUES ('222', '14', '邵阳市', '0');
INSERT INTO `area` VALUES ('223', '14', '衡阳市', '0');
INSERT INTO `area` VALUES ('224', '14', '永州市', '0');
INSERT INTO `area` VALUES ('225', '14', '郴州市', '0');
INSERT INTO `area` VALUES ('226', '18', '广州市', '1');
INSERT INTO `area` VALUES ('227', '18', '韶关市', '0');
INSERT INTO `area` VALUES ('228', '18', '梅州市', '0');
INSERT INTO `area` VALUES ('229', '18', '河源市', '0');
INSERT INTO `area` VALUES ('230', '18', '清远市', '0');
INSERT INTO `area` VALUES ('231', '18', '潮州市', '0');
INSERT INTO `area` VALUES ('232', '18', '揭阳市', '0');
INSERT INTO `area` VALUES ('233', '18', '汕头市', '0');
INSERT INTO `area` VALUES ('234', '18', '肇庆市', '0');
INSERT INTO `area` VALUES ('235', '18', '惠州市', '0');
INSERT INTO `area` VALUES ('236', '18', '佛山市', '0');
INSERT INTO `area` VALUES ('237', '18', '东莞市', '0');
INSERT INTO `area` VALUES ('238', '18', '云浮市', '0');
INSERT INTO `area` VALUES ('239', '18', '汕尾市', '0');
INSERT INTO `area` VALUES ('240', '18', '江门市', '0');
INSERT INTO `area` VALUES ('241', '18', '中山市', '0');
INSERT INTO `area` VALUES ('242', '18', '深圳市', '1');
INSERT INTO `area` VALUES ('243', '18', '珠海市', '0');
INSERT INTO `area` VALUES ('244', '18', '阳江市', '0');
INSERT INTO `area` VALUES ('245', '18', '茂名市', '0');
INSERT INTO `area` VALUES ('246', '18', '湛江市', '0');
INSERT INTO `area` VALUES ('247', '19', '南宁市', '0');
INSERT INTO `area` VALUES ('248', '19', '桂林市', '0');
INSERT INTO `area` VALUES ('249', '19', '河池市', '0');
INSERT INTO `area` VALUES ('250', '19', '贺州市', '0');
INSERT INTO `area` VALUES ('251', '19', '柳州市', '0');
INSERT INTO `area` VALUES ('252', '19', '百色市', '0');
INSERT INTO `area` VALUES ('253', '19', '来宾市', '0');
INSERT INTO `area` VALUES ('254', '19', '梧州市', '0');
INSERT INTO `area` VALUES ('255', '19', '贵港市', '0');
INSERT INTO `area` VALUES ('256', '19', '玉林市', '0');
INSERT INTO `area` VALUES ('257', '19', '崇左市', '0');
INSERT INTO `area` VALUES ('258', '19', '钦州市', '0');
INSERT INTO `area` VALUES ('259', '19', '防城港市', '0');
INSERT INTO `area` VALUES ('260', '19', '北海市', '0');
INSERT INTO `area` VALUES ('261', '15', '海口市', '0');
INSERT INTO `area` VALUES ('262', '15', '三沙市', '0');
INSERT INTO `area` VALUES ('263', '15', '三亚市', '0');
INSERT INTO `area` VALUES ('264', '22', '成都市', '1');
INSERT INTO `area` VALUES ('265', '22', '广元市', '0');
INSERT INTO `area` VALUES ('266', '22', '巴中市', '0');
INSERT INTO `area` VALUES ('267', '22', '绵阳市', '0');
INSERT INTO `area` VALUES ('268', '22', '德阳市', '0');
INSERT INTO `area` VALUES ('269', '22', '达州市', '0');
INSERT INTO `area` VALUES ('270', '22', '南充市', '0');
INSERT INTO `area` VALUES ('271', '22', '遂宁市', '0');
INSERT INTO `area` VALUES ('272', '22', '广安市', '0');
INSERT INTO `area` VALUES ('273', '22', '资阳市', '0');
INSERT INTO `area` VALUES ('274', '22', '眉山市', '0');
INSERT INTO `area` VALUES ('275', '22', '雅安市', '0');
INSERT INTO `area` VALUES ('276', '22', '内江市', '0');
INSERT INTO `area` VALUES ('277', '22', '乐山市', '0');
INSERT INTO `area` VALUES ('278', '22', '自贡市', '0');
INSERT INTO `area` VALUES ('279', '22', '泸州市', '0');
INSERT INTO `area` VALUES ('280', '22', '宜宾市', '0');
INSERT INTO `area` VALUES ('281', '22', '攀枝花市', '0');
INSERT INTO `area` VALUES ('282', '21', '贵阳市', '0');
INSERT INTO `area` VALUES ('283', '21', '遵义市', '0');
INSERT INTO `area` VALUES ('284', '21', '铜仁市', '0');
INSERT INTO `area` VALUES ('285', '21', '毕节市', '0');
INSERT INTO `area` VALUES ('286', '21', '六盘水市', '0');
INSERT INTO `area` VALUES ('287', '21', '安顺市', '0');
INSERT INTO `area` VALUES ('288', '20', '昆明市', '0');
INSERT INTO `area` VALUES ('289', '20', '昭通市', '0');
INSERT INTO `area` VALUES ('290', '20', '丽江市', '0');
INSERT INTO `area` VALUES ('291', '20', '曲靖市', '0');
INSERT INTO `area` VALUES ('292', '20', '保山市', '0');
INSERT INTO `area` VALUES ('293', '20', '玉溪市', '0');
INSERT INTO `area` VALUES ('294', '20', '临沧市', '0');
INSERT INTO `area` VALUES ('295', '20', '普洱市', '0');
INSERT INTO `area` VALUES ('296', '27', '拉萨市', '0');
INSERT INTO `area` VALUES ('297', '27', '昌都市', '0');
INSERT INTO `area` VALUES ('298', '27', '日喀则市', '0');
INSERT INTO `area` VALUES ('299', '10', '西安市', '1');
INSERT INTO `area` VALUES ('300', '10', '榆林市', '0');
INSERT INTO `area` VALUES ('301', '10', '延安市', '0');
INSERT INTO `area` VALUES ('302', '10', '铜川市', '0');
INSERT INTO `area` VALUES ('303', '10', '渭南市', '0');
INSERT INTO `area` VALUES ('304', '10', '宝鸡市', '0');
INSERT INTO `area` VALUES ('305', '10', '咸阳市', '0');
INSERT INTO `area` VALUES ('306', '10', '商洛市', '0');
INSERT INTO `area` VALUES ('307', '10', '汉中市', '0');
INSERT INTO `area` VALUES ('308', '10', '安康市', '0');
INSERT INTO `area` VALUES ('309', '25', '兰州市', '0');
INSERT INTO `area` VALUES ('310', '25', '嘉峪关市', '0');
INSERT INTO `area` VALUES ('311', '25', '酒泉市', '0');
INSERT INTO `area` VALUES ('312', '25', '张掖市', '0');
INSERT INTO `area` VALUES ('313', '25', '金昌市', '0');
INSERT INTO `area` VALUES ('314', '25', '武威市', '0');
INSERT INTO `area` VALUES ('315', '25', '白银市', '0');
INSERT INTO `area` VALUES ('316', '25', '庆阳市', '0');
INSERT INTO `area` VALUES ('317', '25', '平凉市', '0');
INSERT INTO `area` VALUES ('318', '25', '定西市', '0');
INSERT INTO `area` VALUES ('319', '25', '天水市', '0');
INSERT INTO `area` VALUES ('320', '25', '陇南市', '0');
INSERT INTO `area` VALUES ('321', '26', '海东市', '0');
INSERT INTO `area` VALUES ('322', '26', '西宁市', '0');
INSERT INTO `area` VALUES ('323', '24', '银川市', '0');
INSERT INTO `area` VALUES ('324', '24', '石嘴山市', '0');
INSERT INTO `area` VALUES ('325', '24', '吴忠市', '0');
INSERT INTO `area` VALUES ('326', '24', '中卫市', '0');
INSERT INTO `area` VALUES ('327', '24', '固原市', '0');
INSERT INTO `area` VALUES ('328', '28', '乌鲁木齐市', '0');
INSERT INTO `area` VALUES ('329', '28', '克拉玛依市', '0');
INSERT INTO `area` VALUES ('330', '28', '阿克苏市', '0');
INSERT INTO `area` VALUES ('331', '28', '阿图什市', '0');
INSERT INTO `area` VALUES ('332', '28', '阿勒泰', '0');
INSERT INTO `area` VALUES ('333', '28', '阿拉尔市', '0');
INSERT INTO `area` VALUES ('334', '28', '博乐市', '0');
INSERT INTO `area` VALUES ('335', '28', '昌吉市', '0');
INSERT INTO `area` VALUES ('336', '28', '哈密市', '0');
INSERT INTO `area` VALUES ('337', '28', '和田市', '0');
INSERT INTO `area` VALUES ('338', '28', '喀什市', '0');
INSERT INTO `area` VALUES ('339', '28', '库尔勒市', '0');
INSERT INTO `area` VALUES ('340', '28', '石河子市', '0');
INSERT INTO `area` VALUES ('341', '28', '吐鲁番', '0');
INSERT INTO `area` VALUES ('342', '28', '伊宁市', '0');
INSERT INTO `area` VALUES ('343', '32', '台湾省', '0');
INSERT INTO `area` VALUES ('344', '33', '香港', '0');
INSERT INTO `area` VALUES ('345', '34', '澳门', '0');

-- ----------------------------
-- Table structure for `biz_config`
-- ----------------------------
DROP TABLE IF EXISTS `biz_config`;
CREATE TABLE `biz_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_name` char(50) DEFAULT 'MR' COMMENT '所属应用',
  `app_name_desp` char(200) DEFAULT 'MR' COMMENT '所属应用描述',
  `URL` char(200) NOT NULL COMMENT '目标URL',
  `is_lock` bit(1) DEFAULT NULL COMMENT '配置是否锁定，1：锁定，0未锁定',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='调用配置表';

-- ----------------------------
-- Records of biz_config
-- ----------------------------

-- ----------------------------
-- Table structure for `biz_record`
-- ----------------------------
DROP TABLE IF EXISTS `biz_record`;
CREATE TABLE `biz_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `app_name` char(36) DEFAULT 'MR' COMMENT '所属应用',
  `call_type` int(11) DEFAULT NULL COMMENT '协议类型，0为rest，1为dubbo',
  `method_name` varchar(100) DEFAULT NULL COMMENT '请求方法名称(全路径)',
  `request_method` varchar(20) DEFAULT NULL COMMENT '请求方式(GET,POST)',
  `request_params` varchar(500) DEFAULT NULL COMMENT '请求参数',
  `request_ip` varchar(50) DEFAULT NULL COMMENT '访问者IP',
  `request_uri` varchar(200) DEFAULT NULL COMMENT '请求URI',
  `time_consuming` bigint(20) DEFAULT NULL COMMENT '请求耗时',
  `call_result` int(11) DEFAULT NULL COMMENT '调用结果，0为success，1为fail',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='调用结果表';

-- ----------------------------
-- Records of biz_record
-- ----------------------------

-- ----------------------------
-- Table structure for `content`
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content_cat_id` bigint(20) DEFAULT NULL COMMENT '内容分类ID',
  `img` varchar(300) DEFAULT NULL COMMENT '图片地址',
  `title` varchar(200) DEFAULT NULL COMMENT '内容标题',
  `sub_title` varchar(200) DEFAULT NULL COMMENT '子标题',
  `title_desc` varchar(2000) DEFAULT NULL COMMENT '标题描述',
  `content` text COMMENT '内容',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------

-- ----------------------------
-- Table structure for `content_cat`
-- ----------------------------
DROP TABLE IF EXISTS `content_cat`;
CREATE TABLE `content_cat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `name` varchar(168) DEFAULT NULL COMMENT '分类名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父分类ID,ID=0时，代表的是一级的类目',
  `parent_name` varchar(168) DEFAULT NULL COMMENT '父分类的名称',
  `sort` int(11) DEFAULT NULL COMMENT '排列序号,表示同级分类的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数',
  `is_parent` bit(1) DEFAULT NULL COMMENT '该分类是否为父类目，1为true，0为false',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_cat
-- ----------------------------
INSERT INTO `content_cat` VALUES ('1', '内容管理', '0', null, '1', '', '2017-04-20 09:17:49', '2017-04-20 09:17:51');
INSERT INTO `content_cat` VALUES ('2', '新闻中心', '1', '内容管理', '1', '', '2017-04-20 09:19:51', '2017-04-20 09:19:53');
INSERT INTO `content_cat` VALUES ('3', '最新资讯', '2', '新闻中心', '1', '', '2017-04-20 09:20:58', '2017-04-20 09:21:01');
INSERT INTO `content_cat` VALUES ('4', '媒体报道', '2', '新闻中心', '2', '', '2017-04-20 09:21:22', '2017-04-20 09:21:24');
INSERT INTO `content_cat` VALUES ('5', '新闻专题', '2', '新闻中心', '3', '', '2017-04-20 09:21:43', '2017-04-20 09:21:45');

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `simple_name` varchar(50) DEFAULT NULL COMMENT '简称',
  `full_name` varchar(255) DEFAULT NULL COMMENT '全称',
  `is_parent` bit(1) DEFAULT NULL COMMENT '是否是父节点',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '金恪集团', '金恪投资控股集团', '', '0', '1', null, '2018-01-31 15:28:20', '2018-01-31 15:28:23');
INSERT INTO `dept` VALUES ('2', '研发部', '技术研发中心', '', '1', '1', null, '2018-01-31 15:29:16', '2018-01-31 15:29:18');
INSERT INTO `dept` VALUES ('3', '研发一组', '研发一组', '', '2', '1', null, '2018-01-31 15:29:45', '2018-01-31 15:29:48');
INSERT INTO `dept` VALUES ('4', '研发二组', '研发二组', '', '2', '2', null, '2018-01-31 15:30:08', '2018-01-31 15:30:11');
INSERT INTO `dept` VALUES ('5', '研发三组', '研发三组', '', '2', '3', null, '2018-01-31 15:30:32', '2018-01-31 15:30:34');
INSERT INTO `dept` VALUES ('6', '采购部', '采购部', '', '1', '2', null, '2018-01-31 15:31:00', '2018-01-31 15:31:03');
INSERT INTO `dept` VALUES ('7', '采购一组', '采购一组', '', '6', '1', null, '2018-01-31 15:31:54', '2018-01-31 15:31:56');
INSERT INTO `dept` VALUES ('8', '采购二组', '采购二组', '', '6', '2', null, '2018-01-31 15:32:19', '2018-01-31 15:32:21');
INSERT INTO `dept` VALUES ('9', '采购三组', '采购三组', '', '6', '3', null, '2018-01-31 15:32:37', '2018-01-31 15:32:39');
INSERT INTO `dept` VALUES ('10', '行政部', '行政部', '', '1', '3', null, '2018-01-31 15:33:25', '2018-01-31 15:33:27');
INSERT INTO `dept` VALUES ('11', '行政一组', '行政一组', '', '10', '1', null, '2018-01-31 15:34:22', '2018-01-31 15:34:24');
INSERT INTO `dept` VALUES ('12', '行政二组', '行政二组', '', '10', '2', null, '2018-01-31 15:34:43', '2018-01-31 15:34:46');
INSERT INTO `dept` VALUES ('13', '行政三组', '行政三组', '', '10', '3', null, '2018-01-31 15:35:08', '2018-01-31 15:35:11');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `app_name` char(36) NOT NULL COMMENT '所属应用',
  `log_type` int(11) DEFAULT NULL COMMENT '日志类型，0为操作日志，1为异常日志',
  `username` varchar(100) DEFAULT NULL COMMENT '访问者/请求者',
  `operation` varchar(100) DEFAULT NULL COMMENT '方法描述',
  `method_name` varchar(100) DEFAULT NULL COMMENT '请求方法名称(全路径)',
  `request_method` varchar(20) DEFAULT NULL COMMENT '请求方式(GET,POST,DELETE,PUT)',
  `request_params` varchar(500) DEFAULT NULL COMMENT '请求参数',
  `request_ip` varchar(50) DEFAULT NULL COMMENT '访问者IP',
  `request_uri` varchar(200) DEFAULT NULL COMMENT '请求URI',
  `exception_code` varchar(100) DEFAULT NULL COMMENT '异常码',
  `exception_detail` varchar(2000) DEFAULT NULL COMMENT '异常描述',
  `time_consuming` bigint(20) DEFAULT NULL COMMENT '请求耗时',
  `user_agent` varchar(500) DEFAULT NULL COMMENT '客户端信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8 COMMENT='系统日志表';

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('361', '', '0', 'admin', '删除调度任务', 'com.jk.controller.admin.JobController.delete()', 'DELETE', '', '0:0:0:0:0:0:0:1', '/admin/job/17', null, null, '63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:00:50', '2017-05-20 20:00:50');
INSERT INTO `log` VALUES ('362', '', '0', 'admin', '删除调度任务', 'com.jk.controller.admin.JobController.delete()', 'DELETE', '', '0:0:0:0:0:0:0:1', '/admin/job/18', null, null, '188', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:00:53', '2017-05-20 20:00:53');
INSERT INTO `log` VALUES ('363', '', '0', 'admin', '删除调度任务', 'com.jk.controller.admin.JobController.delete()', 'DELETE', '', '0:0:0:0:0:0:0:1', '/admin/job/19', null, null, '42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:00:55', '2017-05-20 20:00:55');
INSERT INTO `log` VALUES ('364', '', '0', 'admin', '添加调度任务', 'com.jk.controller.admin.JobController.saveJob()', 'POST', 'jobGroup=测试组&jobName=测试无参数的本地调度任务&cron=0/8 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run1&remoteUrl=&params=&isAsync=1&remarks=测试无参数的本地调度任务', '0:0:0:0:0:0:0:1', '/admin/job', null, null, '194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:01:45', '2017-05-20 20:01:45');
INSERT INTO `log` VALUES ('365', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495281713829', '0:0:0:0:0:0:0:1', '/admin/job/run/20', null, null, '92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:01:54', '2017-05-20 20:01:54');
INSERT INTO `log` VALUES ('366', '', '0', 'admin', '添加调度任务', 'com.jk.controller.admin.JobController.saveJob()', 'POST', 'jobGroup=测试组&jobName=测试带参数的本地调度任务&cron=0/8 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run2&remoteUrl=&params=我是参数&isAsync=1&remarks=测试带参数的本地调度任务', '0:0:0:0:0:0:0:1', '/admin/job', null, null, '64', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:02:52', '2017-05-20 20:02:52');
INSERT INTO `log` VALUES ('367', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495281775328', '0:0:0:0:0:0:0:1', '/admin/job/run/20', null, null, '56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:02:55', '2017-05-20 20:02:55');
INSERT INTO `log` VALUES ('368', '', '0', 'admin', '添加调度任务', 'com.jk.controller.admin.JobController.saveJob()', 'POST', 'jobGroup=测试组&jobName=测试同步异步有效性本地调度&cron=0/8 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run3&remoteUrl=&params=&isAsync=1&remarks=测试同步异步有效性本地调度', '0:0:0:0:0:0:0:1', '/admin/job', null, null, '109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:04:38', '2017-05-20 20:04:38');
INSERT INTO `log` VALUES ('369', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/8 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run2&remoteUrl=&params=我是参数&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:06:26', '2017-05-20 20:06:26');
INSERT INTO `log` VALUES ('370', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试无参数的本地调度&cron=0/8 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run1&remoteUrl=&params=&isAsync=1&remarks=测试无参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/20', null, null, '108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:06:40', '2017-05-20 20:06:40');
INSERT INTO `log` VALUES ('371', '', '0', 'admin', '暂停调度任务', 'com.jk.controller.admin.JobController.pauseJob()', 'PUT', 'timestamp=1495284305329', '0:0:0:0:0:0:0:1', '/admin/job/pause/22', null, null, '97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:45:05', '2017-05-20 20:45:05');
INSERT INTO `log` VALUES ('372', '', '0', 'admin', '暂停调度任务', 'com.jk.controller.admin.JobController.pauseJob()', 'PUT', 'timestamp=1495284307471', '0:0:0:0:0:0:0:1', '/admin/job/pause/21', null, null, '37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:45:08', '2017-05-20 20:45:08');
INSERT INTO `log` VALUES ('373', '', '0', 'admin', '暂停调度任务', 'com.jk.controller.admin.JobController.pauseJob()', 'PUT', 'timestamp=1495284309605', '0:0:0:0:0:0:0:1', '/admin/job/pause/20', null, null, '40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:45:10', '2017-05-20 20:45:10');
INSERT INTO `log` VALUES ('374', '', '0', 'admin', '添加调度任务', 'com.jk.controller.admin.JobController.saveJob()', 'POST', 'jobGroup=测试组&jobName=测试远程调度&cron=0/8 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.baidu.com&params=&isAsync=1&remarks=测试远程调度', '0:0:0:0:0:0:0:1', '/admin/job', null, null, '155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:45:42', '2017-05-20 20:45:42');
INSERT INTO `log` VALUES ('375', '', '1', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495284445351', '0:0:0:0:0:0:0:1', '/admin/job/run/23', 'java.lang.IllegalArgumentException', 'Name cannot be null.', '4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:47:25', '2017-05-20 20:47:25');
INSERT INTO `log` VALUES ('376', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495284669270', '0:0:0:0:0:0:0:1', '/admin/job/run/23', null, null, '110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:51:09', '2017-05-20 20:51:09');
INSERT INTO `log` VALUES ('377', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试远程调度&cron=0/8 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.baidu.com&params=&isAsync=1&remarks=测试远程调度', '0:0:0:0:0:0:0:1', '/admin/job/23', null, null, '48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 20:51:30', '2017-05-20 20:51:30');
INSERT INTO `log` VALUES ('378', '', '0', 'admin', '暂停调度任务', 'com.jk.controller.admin.JobController.pauseJob()', 'PUT', 'timestamp=1495286199936', '0:0:0:0:0:0:0:1', '/admin/job/pause/23', null, null, '52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:16:40', '2017-05-20 21:16:40');
INSERT INTO `log` VALUES ('379', '', '0', 'admin', '删除调度任务', 'com.jk.controller.admin.JobController.delete()', 'DELETE', '', '0:0:0:0:0:0:0:1', '/admin/job/23', null, null, '115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:16:48', '2017-05-20 21:16:48');
INSERT INTO `log` VALUES ('380', '', '0', 'admin', '添加调度任务', 'com.jk.controller.admin.JobController.saveJob()', 'POST', 'jobGroup=测试组&jobName=测试远程调度&cron=0/8 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=&isAsync=1&remarks=', '0:0:0:0:0:0:0:1', '/admin/job', null, null, '103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:17:48', '2017-05-20 21:17:48');
INSERT INTO `log` VALUES ('381', '', '1', 'admin', '删除调度任务', 'com.jk.controller.admin.JobController.delete()', 'DELETE', '', '0:0:0:0:0:0:0:1', '/admin/job/24', 'java.lang.IllegalArgumentException', 'Name cannot be null.', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:18:46', '2017-05-20 21:18:46');
INSERT INTO `log` VALUES ('382', '', '0', 'admin', '删除调度任务', 'com.jk.controller.admin.JobController.delete()', 'DELETE', '', '0:0:0:0:0:0:0:1', '/admin/job/24', null, null, '82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:32:35', '2017-05-20 21:32:35');
INSERT INTO `log` VALUES ('383', '', '0', 'admin', '添加调度任务', 'com.jk.controller.admin.JobController.saveJob()', 'POST', 'jobGroup=测试组&jobName=测试远程调度&cron=0/8 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=&isAsync=1&remarks=', '0:0:0:0:0:0:0:1', '/admin/job', null, null, '106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:33:01', '2017-05-20 21:33:01');
INSERT INTO `log` VALUES ('384', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试远程调度&cron=0/8 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试远程调度', '0:0:0:0:0:0:0:1', '/admin/job/25', null, null, '127', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:33:09', '2017-05-20 21:33:09');
INSERT INTO `log` VALUES ('385', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试远程调度&cron=0/8 * * * * ?&isLocal=1&beanClass=com.jk.tak.TaskTest&methodName=run1&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试远程调度', '0:0:0:0:0:0:0:1', '/admin/job/25', null, null, '90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:34:04', '2017-05-20 21:34:04');
INSERT INTO `log` VALUES ('386', '', '0', 'admin', '暂停调度任务', 'com.jk.controller.admin.JobController.pauseJob()', 'PUT', 'timestamp=1495287286552', '0:0:0:0:0:0:0:1', '/admin/job/pause/25', null, null, '88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:34:47', '2017-05-20 21:34:47');
INSERT INTO `log` VALUES ('387', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495287293523', '0:0:0:0:0:0:0:1', '/admin/job/run/25', null, null, '59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:34:54', '2017-05-20 21:34:54');
INSERT INTO `log` VALUES ('388', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495287335496', '0:0:0:0:0:0:0:1', '/admin/job/run/25', null, null, '82', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:35:36', '2017-05-20 21:35:36');
INSERT INTO `log` VALUES ('389', '', '0', 'admin', '恢复调度任务', 'com.jk.controller.admin.JobController.resumeJob()', 'PUT', 'timestamp=1495288024361', '0:0:0:0:0:0:0:1', '/admin/job/resume/21', null, null, '92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:47:04', '2017-05-20 21:47:04');
INSERT INTO `log` VALUES ('390', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/8 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run1&remoteUrl=&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:47:47', '2017-05-20 21:47:47');
INSERT INTO `log` VALUES ('391', '', '0', 'admin', '暂停调度任务', 'com.jk.controller.admin.JobController.pauseJob()', 'PUT', 'timestamp=1495288099619', '0:0:0:0:0:0:0:1', '/admin/job/pause/21', null, null, '85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:48:20', '2017-05-20 21:48:20');
INSERT INTO `log` VALUES ('392', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495288112344', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:48:32', '2017-05-20 21:48:32');
INSERT INTO `log` VALUES ('393', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495288376255', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:52:56', '2017-05-20 21:52:56');
INSERT INTO `log` VALUES ('394', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/10 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run1&remoteUrl=&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:55:56', '2017-05-20 21:55:56');
INSERT INTO `log` VALUES ('395', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495288559633', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:56:00', '2017-05-20 21:56:00');
INSERT INTO `log` VALUES ('396', '', '0', 'admin', '恢复调度任务', 'com.jk.controller.admin.JobController.resumeJob()', 'PUT', 'timestamp=1495288596038', '0:0:0:0:0:0:0:1', '/admin/job/resume/21', null, null, '98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:56:36', '2017-05-20 21:56:36');
INSERT INTO `log` VALUES ('397', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/30 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run1&remoteUrl=&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '92', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 21:57:54', '2017-05-20 21:57:54');
INSERT INTO `log` VALUES ('398', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/30 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run1&remoteUrl=&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 23:11:50', '2017-05-20 23:11:50');
INSERT INTO `log` VALUES ('399', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/30 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run2&remoteUrl=&remoteRequestMethod=GET&params=我是参数&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-20 23:13:15', '2017-05-20 23:13:15');
INSERT INTO `log` VALUES ('400', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/30 * * * * ?&isLocal=0&beanClass=com.jk.task.TaskTest&methodName=run2&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=我是参数&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 12:34:17', '2017-05-21 12:34:17');
INSERT INTO `log` VALUES ('401', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495341269841', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 12:34:30', '2017-05-21 12:34:30');
INSERT INTO `log` VALUES ('402', '', '0', 'admin', '暂停调度任务', 'com.jk.controller.admin.JobController.pauseJob()', 'PUT', 'timestamp=1495341331701', '0:0:0:0:0:0:0:1', '/admin/job/pause/21', null, null, '45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 12:35:32', '2017-05-21 12:35:32');
INSERT INTO `log` VALUES ('403', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495343146106', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 13:05:46', '2017-05-21 13:05:46');
INSERT INTO `log` VALUES ('404', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/30 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run2&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=我是参数&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '67921', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 13:07:46', '2017-05-21 13:07:46');
INSERT INTO `log` VALUES ('405', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495343275117', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 13:07:55', '2017-05-21 13:07:55');
INSERT INTO `log` VALUES ('406', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/30 * * * * ?&isLocal=0&beanClass=com.jk.task.TaskTest&methodName=run2&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '25133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 13:08:44', '2017-05-21 13:08:44');
INSERT INTO `log` VALUES ('407', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495343340691', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 13:09:01', '2017-05-21 13:09:01');
INSERT INTO `log` VALUES ('408', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/20 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '26098', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 13:09:43', '2017-05-21 13:09:43');
INSERT INTO `log` VALUES ('409', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/20 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.baidu.com&remoteRequestMethod=GET&params=&isAsync=1&remarks=测试带参数的本地调度', '0:0:0:0:0:0:0:1', '/admin/job/21', null, null, '11714', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 13:10:09', '2017-05-21 13:10:09');
INSERT INTO `log` VALUES ('410', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495353017603', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 15:50:18', '2017-05-21 15:50:18');
INSERT INTO `log` VALUES ('411', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495353122731', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 15:52:03', '2017-05-21 15:52:03');
INSERT INTO `log` VALUES ('412', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495353373855', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 15:56:14', '2017-05-21 15:56:14');
INSERT INTO `log` VALUES ('413', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495353652159', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 16:00:52', '2017-05-21 16:00:52');
INSERT INTO `log` VALUES ('414', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495353667334', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 16:01:07', '2017-05-21 16:01:07');
INSERT INTO `log` VALUES ('415', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495359040108', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 17:30:40', '2017-05-21 17:30:40');
INSERT INTO `log` VALUES ('416', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495359515754', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 17:38:36', '2017-05-21 17:38:36');
INSERT INTO `log` VALUES ('417', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495359605392', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 17:40:06', '2017-05-21 17:40:06');
INSERT INTO `log` VALUES ('418', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495364175246', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '193', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 18:56:15', '2017-05-21 18:56:15');
INSERT INTO `log` VALUES ('419', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495364200933', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '90', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 18:56:41', '2017-05-21 18:56:41');
INSERT INTO `log` VALUES ('420', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495364334690', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 18:58:55', '2017-05-21 18:58:55');
INSERT INTO `log` VALUES ('421', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495364465294', '0:0:0:0:0:0:0:1', '/admin/job/run/21', null, null, '162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:01:05', '2017-05-21 19:01:05');
INSERT INTO `log` VALUES ('422', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/20 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.good.com/admin/test&params=&isAsync=1&remarks=测试带参数的本地调度', '127.0.0.1', '/admin/job/21', null, null, '223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:07:28', '2017-05-21 19:07:28');
INSERT INTO `log` VALUES ('423', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495364857861', '127.0.0.1', '/admin/job/run/21', null, null, '33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:07:38', '2017-05-21 19:07:38');
INSERT INTO `log` VALUES ('424', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495364960939', '127.0.0.1', '/admin/job/run/21', null, null, '86', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:09:21', '2017-05-21 19:09:21');
INSERT INTO `log` VALUES ('425', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495365114548', '127.0.0.1', '/admin/job/run/21', null, null, '122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:11:55', '2017-05-21 19:11:55');
INSERT INTO `log` VALUES ('426', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/20 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.good.com/test&params=&isAsync=1&remarks=测试带参数的本地调度', '127.0.0.1', '/admin/job/21', null, null, '169', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:12:22', '2017-05-21 19:12:22');
INSERT INTO `log` VALUES ('427', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495365145099', '127.0.0.1', '/admin/job/run/21', null, null, '52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:12:25', '2017-05-21 19:12:25');
INSERT INTO `log` VALUES ('428', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495365275082', '127.0.0.1', '/admin/job/run/21', null, null, '150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:14:35', '2017-05-21 19:14:35');
INSERT INTO `log` VALUES ('429', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495365458787', '127.0.0.1', '/admin/job/run/21', null, null, '172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:17:39', '2017-05-21 19:17:39');
INSERT INTO `log` VALUES ('430', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495365526395', '127.0.0.1', '/admin/job/run/21', null, null, '99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:18:47', '2017-05-21 19:18:47');
INSERT INTO `log` VALUES ('431', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495365585125', '127.0.0.1', '/admin/job/run/21', null, null, '54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:19:45', '2017-05-21 19:19:45');
INSERT INTO `log` VALUES ('432', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367338666', '127.0.0.1', '/admin/job/run/21', null, null, '125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:48:59', '2017-05-21 19:48:59');
INSERT INTO `log` VALUES ('433', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/20 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.good.com/test/{key1}/{key2}&params=key1=100,key2=200&isAsync=1&remarks=测试带参数的本地调度', '127.0.0.1', '/admin/job/21', null, null, '237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:50:07', '2017-05-21 19:50:07');
INSERT INTO `log` VALUES ('434', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367412351', '127.0.0.1', '/admin/job/run/21', null, null, '93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:50:12', '2017-05-21 19:50:12');
INSERT INTO `log` VALUES ('435', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367429534', '127.0.0.1', '/admin/job/run/21', null, null, '40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:50:30', '2017-05-21 19:50:30');
INSERT INTO `log` VALUES ('436', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367475784', '127.0.0.1', '/admin/job/run/21', null, null, '93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:51:16', '2017-05-21 19:51:16');
INSERT INTO `log` VALUES ('437', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367604143', '127.0.0.1', '/admin/job/run/21', null, null, '191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:53:24', '2017-05-21 19:53:24');
INSERT INTO `log` VALUES ('438', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/20 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.good.com/test/{key1}/{key2}&params=key1=100,key2=200,key3=300&isAsync=1&remarks=测试带参数的本地调度', '127.0.0.1', '/admin/job/21', null, null, '240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:56:06', '2017-05-21 19:56:06');
INSERT INTO `log` VALUES ('439', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367771677', '127.0.0.1', '/admin/job/run/21', null, null, '42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:56:12', '2017-05-21 19:56:12');
INSERT INTO `log` VALUES ('440', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/20 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.good.com/test/{key1}/{key2}?key3={key3}&params=key1=100,key2=200,key3=300&isAsync=1&remarks=测试带参数的本地调度', '127.0.0.1', '/admin/job/21', null, null, '225', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:56:59', '2017-05-21 19:56:59');
INSERT INTO `log` VALUES ('441', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367822604', '127.0.0.1', '/admin/job/run/21', null, null, '31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:57:03', '2017-05-21 19:57:03');
INSERT INTO `log` VALUES ('442', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367832690', '127.0.0.1', '/admin/job/run/21', null, null, '31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:57:13', '2017-05-21 19:57:13');
INSERT INTO `log` VALUES ('443', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/20 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run2&remoteUrl=http://www.good.com/test/{key1}/{key2}?key3={key3}&params=我是参数&isAsync=1&remarks=测试带参数的本地调度', '127.0.0.1', '/admin/job/21', null, null, '109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:58:43', '2017-05-21 19:58:43');
INSERT INTO `log` VALUES ('444', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367934028', '127.0.0.1', '/admin/job/run/21', null, null, '74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:58:54', '2017-05-21 19:58:54');
INSERT INTO `log` VALUES ('445', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试远程调度&cron=0/8 * * * * ?&isLocal=0&beanClass=com.jk.tak.TaskTest&methodName=run1&remoteUrl=http://www.good.com/test/{key1}/{key2}?key3={key3}&params=key1=100,key2=200,key3=300&isAsync=1&remarks=测试远程调度', '127.0.0.1', '/admin/job/25', null, null, '93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:59:17', '2017-05-21 19:59:17');
INSERT INTO `log` VALUES ('446', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495367975635', '127.0.0.1', '/admin/job/run/25', null, null, '77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 19:59:36', '2017-05-21 19:59:36');
INSERT INTO `log` VALUES ('447', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数远程调度&cron=0/8 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.good.com/test/{key1}/{key2}?key3={key3}&params=key1=100,key2=200,key3=300&isAsync=1&remarks=测试带参数远程调度', '127.0.0.1', '/admin/job/25', null, null, '139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 20:03:55', '2017-05-21 20:03:55');
INSERT INTO `log` VALUES ('448', '', '0', 'admin', '运行一次调度任务', 'com.jk.controller.admin.JobController.runOnce()', 'PUT', 'timestamp=1495368258039', '127.0.0.1', '/admin/job/run/25', null, null, '133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 20:04:18', '2017-05-21 20:04:18');
INSERT INTO `log` VALUES ('449', '', '0', 'admin', '添加调度任务', 'com.jk.controller.admin.JobController.saveJob()', 'POST', 'jobGroup=测试组&jobName=测试无参数远程调度&cron=0/10 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.good.com/test&params=&isAsync=1&remarks=测试无参数远程调度', '127.0.0.1', '/admin/job', null, null, '99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 20:04:54', '2017-05-21 20:04:54');
INSERT INTO `log` VALUES ('450', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数远程调度&cron=0/10 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://www.good.com/test/{key1}/{key2}?key3={key3}&params=key1=100,key2=200,key3=300&isAsync=1&remarks=测试带参数远程调度', '127.0.0.1', '/admin/job/25', null, null, '54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 20:05:39', '2017-05-21 20:05:39');
INSERT INTO `log` VALUES ('451', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试同步异步有效性本地调度&cron=0/10 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run3&remoteUrl=&params=&isAsync=1&remarks=测试同步异步有效性本地调度', '127.0.0.1', '/admin/job/22', null, null, '91', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 20:05:46', '2017-05-21 20:05:46');
INSERT INTO `log` VALUES ('452', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/10 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run2&remoteUrl=&params=我是参数&isAsync=1&remarks=测试带参数的本地调度', '127.0.0.1', '/admin/job/21', null, null, '48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 20:05:53', '2017-05-21 20:05:53');
INSERT INTO `log` VALUES ('453', '', '0', 'admin', '编辑调度任务', 'com.jk.controller.admin.JobController.updateJob()', 'PUT', 'jobGroup=测试组&jobName=测试无参数的本地调度&cron=0/10 * * * * ?&isLocal=1&beanClass=com.jk.task.TaskTest&methodName=run1&remoteUrl=&params=&isAsync=1&remarks=测试无参数的本地调度', '127.0.0.1', '/admin/job/20', null, null, '64', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-21 20:06:04', '2017-05-21 20:06:04');
INSERT INTO `log` VALUES ('465', '', '0', 'admin', '编辑调度任务', 'com.jk.modules.job.controller.JobController.updateJob()', 'PUT', 'tokenForm=273b3f2d-3aeb-4adc-9eb1-ac00e63d6c61&jobGroup=测试组&jobName=测试远程调度request接收参数&cron=0/10 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://manage.good.com/test3?key1={key1}&amp;key2={key2}&amp;key3={key3}&params=key1=100,key2=200,key3=300&isAsync=1&remarks=测试远程调度request接收参数', '127.0.0.1', '/admin/job/27', null, null, '244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:36:22', '2017-08-05 18:36:22');
INSERT INTO `log` VALUES ('466', '', '0', 'admin', '编辑调度任务', 'com.jk.modules.job.controller.JobController.updateJob()', 'PUT', 'tokenForm=8a97738e-940c-43b4-840d-f3706b2a6007&jobGroup=测试组&jobName=测试无参数远程调度&cron=0/10 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://manage.good.com/test&params=&isAsync=1&remarks=测试无参数远程调度', '127.0.0.1', '/admin/job/26', null, null, '100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:36:35', '2017-08-05 18:36:35');
INSERT INTO `log` VALUES ('467', '', '0', 'admin', '编辑调度任务', 'com.jk.modules.job.controller.JobController.updateJob()', 'PUT', 'tokenForm=8086bb72-8d73-4cfe-9030-a5804bcb03bc&jobGroup=测试组&jobName=测试带参数远程调度&cron=0/10 * * * * ?&isLocal=0&beanClass=&methodName=&remoteUrl=http://manage.good.com/test/{key1}/{key2}?key3={key3}&params=key1=100,key2=200,key3=300&isAsync=1&remarks=测试带参数远程调度', '127.0.0.1', '/admin/job/25', null, null, '138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:36:45', '2017-08-05 18:36:45');
INSERT INTO `log` VALUES ('468', '', '0', 'admin', '编辑调度任务', 'com.jk.modules.job.controller.JobController.updateJob()', 'PUT', 'tokenForm=aa48b7da-5463-4fe4-a8ae-0e50d84be4ab&jobGroup=测试组&jobName=测试同步异步有效性本地调度&cron=0/10 * * * * ?&isLocal=1&beanClass=com.jk.modules.job.task.JobTest&methodName=run3&remoteUrl=&params=&isAsync=1&remarks=测试同步异步有效性本地调度', '127.0.0.1', '/admin/job/22', null, null, '236', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:38:53', '2017-08-05 18:38:53');
INSERT INTO `log` VALUES ('469', '', '0', 'admin', '编辑调度任务', 'com.jk.modules.job.controller.JobController.updateJob()', 'PUT', 'tokenForm=b2ac9f46-371c-4aa3-8fdd-6131cbd167e6&jobGroup=测试组&jobName=测试带参数的本地调度&cron=0/10 * * * * ?&isLocal=1&beanClass=com.jk.modules.job.task.JobTest&methodName=run2&remoteUrl=&params=我是参数&isAsync=1&remarks=测试带参数的本地调度', '127.0.0.1', '/admin/job/21', null, null, '216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:39:08', '2017-08-05 18:39:08');
INSERT INTO `log` VALUES ('470', '', '0', 'admin', '编辑调度任务', 'com.jk.modules.job.controller.JobController.updateJob()', 'PUT', 'tokenForm=ed6f4a50-881b-48c6-824d-87f73d87fc9f&jobGroup=测试组&jobName=测试无参数的本地调度&cron=0/10 * * * * ?&isLocal=1&beanClass=com.jk.modules.job.task.JobTest&methodName=run1&remoteUrl=&params=&isAsync=1&remarks=测试无参数的本地调度', '127.0.0.1', '/admin/job/20', null, null, '106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:39:16', '2017-08-05 18:39:16');
INSERT INTO `log` VALUES ('471', '', '0', 'admin', '运行一次调度任务', 'com.jk.modules.job.controller.JobController.runOnce()', 'PUT', 'timestamp=1501929560853', '127.0.0.1', '/admin/job/run/20', null, null, '85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:39:21', '2017-08-05 18:39:21');
INSERT INTO `log` VALUES ('472', '', '0', 'admin', '运行一次调度任务', 'com.jk.modules.job.controller.JobController.runOnce()', 'PUT', 'timestamp=1501929572957', '127.0.0.1', '/admin/job/run/20', null, null, '46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:39:33', '2017-08-05 18:39:33');
INSERT INTO `log` VALUES ('473', '', '0', 'admin', '运行一次调度任务', 'com.jk.modules.job.controller.JobController.runOnce()', 'PUT', 'timestamp=1501929584365', '127.0.0.1', '/admin/job/run/27', null, null, '100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:39:44', '2017-08-05 18:39:44');
INSERT INTO `log` VALUES ('474', '', '0', 'admin', '添加管理员', 'com.jk.modules.sys.controller.UserController.saveUser()', 'POST', 'tokenForm=bb849dec-3b49-489e-84e4-bcf447e28c27&username=test&password=&password2=test&sex=1&mobilePhone=15001338253&email=228727120@qq.com&roleId=8', '127.0.0.1', '/admin/manager/user', null, null, '154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:54:22', '2017-08-05 18:54:22');
INSERT INTO `log` VALUES ('475', '', '0', 'admin', '角色授权', 'com.jk.modules.sys.controller.RoleController.rolePermission()', 'PUT', 'tokenForm=605890a6-98f3-4901-b290-d4ffd1520813&permissionIds=1,3,11,12,13,14,32,9,15,18,10,19,22,64,66,67,68,75,76,77,78,79,51,52,57,58,59,53,55,56,54,69,70,71,7', '127.0.0.1', '/admin/role/8/permission', null, null, '58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:57:29', '2017-08-05 18:57:29');
INSERT INTO `log` VALUES ('476', '', '0', 'test', '禁用|启用管理员', 'com.jk.modules.sys.controller.UserController.updateStatus()', 'PUT', 'timestamp=1501930778852', '127.0.0.1', '/admin/manager/user/status/83', null, null, '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 18:59:39', '2017-08-05 18:59:39');
INSERT INTO `log` VALUES ('477', '', '0', 'admin', '角色授权', 'com.jk.modules.sys.controller.RoleController.rolePermission()', 'PUT', 'tokenForm=7881de87-ecf6-494d-886d-7965fdb35df8&permissionIds=1,3,14,9,15,18,10,19,22,64,66,67,68,75,76,77,78,79,51,52,57,58,59,53,55,56,54,69,70,71,72', '127.0.0.1', '/admin/role/8/permission', null, null, '97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `log` VALUES ('478', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=b27a3f41-a226-4037-98cb-231a3d1f47f6&parentName=&type=0&name=检索管理&parentId=&url=&perms=&sort=5&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '93', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 18:51:22', '2018-05-15 18:51:22');
INSERT INTO `log` VALUES ('479', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=44803b54-7042-4ad6-81f0-302d68a81c42&parentName=检索管理&type=1&name=全量检索&parentId=81&url=/admin/search/full&perms=search-full:list&sort=1&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '77', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 18:55:07', '2018-05-15 18:55:07');
INSERT INTO `log` VALUES ('480', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=0fb971b7-7e06-4504-9c68-ee5342c2a61e&parentName=检索管理&type=1&name=增量检索&parentId=81&url=/admin/search/incre&perms=search-incre:list&sort=2&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '93', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 18:56:20', '2018-05-15 18:56:20');
INSERT INTO `log` VALUES ('481', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=3e7fd0ea-6c70-4426-82d7-6bb62bce97b4&parentName=检索管理&type=1&name=精确检索&parentId=81&url=/admin/search/exact&perms=search-exact:list&sort=3&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '78', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:18:22', '2018-05-15 19:18:22');
INSERT INTO `log` VALUES ('482', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=ec753c1e-9d3c-4882-9e80-02f468b360f6&parentName=检索管理&type=1&name=模糊检索&parentId=81&url=/admin/search/blur&perms=search-blur:list&sort=4&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '78', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:19:27', '2018-05-15 19:19:27');
INSERT INTO `log` VALUES ('483', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=16ce4f8f-8923-45e8-9ced-b09037f8c760&parentName=调度管理&type=1&name=全量任务&parentId=66&url=/admin/log/full&perms=log-full:list&sort=2&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '73', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:21:06', '2018-05-15 19:21:06');
INSERT INTO `log` VALUES ('484', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=37abc96d-1384-4411-98e1-74258944effe&parentName=调度管理&type=1&name=增量任务&parentId=66&url=/admin/log/incre&perms=log-incre:list&sort=3&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '87', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:21:52', '2018-05-15 19:21:52');
INSERT INTO `log` VALUES ('485', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=2352dbe5-553f-424f-a9ed-56f2f393b1ce&parentName=调度管理&type=1&name=精确任务&parentId=66&url=/admin/log/exact&perms=log-exact:list&sort=4&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:22:38', '2018-05-15 19:22:38');
INSERT INTO `log` VALUES ('486', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=625c916d-9c2d-4934-a2c2-bfd5a7c3caa7&parentName=&type=0&name=数据管理&parentId=&url=&perms=&sort=6&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '80', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:23:21', '2018-05-15 19:23:21');
INSERT INTO `log` VALUES ('487', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=c0fc32fa-2f55-4456-a1e7-cc397dc2e5f1&parentName=数据管理&type=1&name=分类信息&parentId=89&url=/admin/data/info&perms=data-info:list&sort=1&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '81', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:25:01', '2018-05-15 19:25:01');
INSERT INTO `log` VALUES ('488', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=8e7c4364-441b-4215-86a8-b6848d30be93&parentName=数据管理&type=1&name=数据API&parentId=89&url=/admin/data/api&perms=data-api:list&sort=2&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '64', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:25:56', '2018-05-15 19:25:56');
INSERT INTO `log` VALUES ('489', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=1b621695-b729-4964-b4f9-8bbcff1f6275&parentName=&type=0&name=需求管理&parentId=&url=&perms=&sort=7&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '76', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:26:20', '2018-05-15 19:26:20');
INSERT INTO `log` VALUES ('490', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=38e7477a-13cf-4010-9aa4-33a227120a31&parentName=需求管理&type=1&name=历史需求&parentId=92&url=/admin/require/history&perms=require-history:list&sort=1&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '86', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:28:20', '2018-05-15 19:28:20');
INSERT INTO `log` VALUES ('491', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=c26888ef-e775-4551-827e-79aca22a4980&parentName=需求管理&type=1&name=最新需求&parentId=92&url=/admin/require/new&perms=require-new:list&sort=2&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '79', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:29:33', '2018-05-15 19:29:33');
INSERT INTO `log` VALUES ('492', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=7362c5c2-f6b9-4da2-bb0d-430e9a51e03c&parentName=&type=0&name=风险爆点&parentId=&url=&perms=&sort=8&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '80', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:30:35', '2018-05-15 19:30:35');
INSERT INTO `log` VALUES ('493', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=37de2356-a5c3-4e7a-a03d-d235754d473d&parentName=风险爆点&type=1&name=爆点管理&parentId=95&url=/admin/point/manage&perms=point-manage:list&sort=1&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:32:17', '2018-05-15 19:32:17');
INSERT INTO `log` VALUES ('494', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=e62c74a7-31b9-4d13-a81b-55f9978f37b4&parentName=风险爆点&type=1&name=推送设置&parentId=95&url=/admin/point/config&perms=point-config:list&sort=2&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:33:18', '2018-05-15 19:33:18');
INSERT INTO `log` VALUES ('495', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=03baba42-6678-4bb2-8f8c-bf1d111896f9&parentName=&type=0&name=在线工具&parentId=&url=&perms=&sort=9&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '76', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:34:31', '2018-05-15 19:34:31');
INSERT INTO `log` VALUES ('496', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=087b84ba-9455-4302-82d8-aa1b86a39c99&parentName=在线工具&type=1&name=OCR在线&parentId=98&url=/admin/tool/ocr&perms=tool-ocr:list&sort=1&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '83', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:35:14', '2018-05-15 19:35:14');
INSERT INTO `log` VALUES ('497', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=ee5b2511-def7-4365-8f08-d03fbf6e7c77&parentName=在线工具&type=1&name=NLP在线&parentId=98&url=/admin/tool/nlp&perms=tool-nlp:list&sort=2&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '85', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:36:07', '2018-05-15 19:36:07');
INSERT INTO `log` VALUES ('498', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=b468e749-7ce9-44a0-a563-d8cfd8c2edaa&parentName=在线工具&type=1&name=PDF在线&parentId=98&url=/admin/tool/pdf&perms=tool-pdf:list&sort=3&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '78', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:37:15', '2018-05-15 19:37:15');
INSERT INTO `log` VALUES ('499', '', '0', 'admin', '添加权限', 'com.mr.modules.sys.controller.PermissionController.savePermission()', 'POST', 'tokenForm=f9ac9f3e-fa54-4570-9d33-b69e5b016643&parentName=在线工具&type=1&name=WORD在线&parentId=98&url=/admin/tool/doc&perms=tool-doc:list&sort=4&icon=', '0:0:0:0:0:0:0:1', '/admin/permission', null, null, '123', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:38:14', '2018-05-15 19:38:14');
INSERT INTO `log` VALUES ('500', '', '0', 'admin', '角色授权', 'com.mr.modules.sys.controller.RoleController.rolePermission()', 'PUT', 'tokenForm=f1f84bbe-704a-49c7-af8d-a07473dae916&permissionIds=1,3,11,12,13,14,32,9,15,31,17,18,80,10,19,20,21,22,64,66,67,68,73,74,75,76,77,78,79,86,87,88,51,52,5', '0:0:0:0:0:0:0:1', '/admin/role/1/permission', null, null, '103', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '2018-05-15 19:39:12', '2018-05-15 19:39:12');

-- ----------------------------
-- Table structure for `oti_config`
-- ----------------------------
DROP TABLE IF EXISTS `oti_config`;
CREATE TABLE `oti_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `msg_id` char(50) NOT NULL COMMENT '传输消息ID',
  `msg_name_desp` char(200) DEFAULT '' COMMENT '传输消息描述',
  `charset` char(20) DEFAULT 'utf-8' COMMENT '消息编码',
  `status` int(1) DEFAULT '1' COMMENT '任务状态 0禁用 1启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='报文基本定义';

-- ----------------------------
-- Records of oti_config
-- ----------------------------

-- ----------------------------
-- Table structure for `oti_field_library`
-- ----------------------------
DROP TABLE IF EXISTS `oti_field_library`;
CREATE TABLE `oti_field_library` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `msg_id` char(50) NOT NULL COMMENT '传输消息ID',
  `field_tag` char(50) NOT NULL COMMENT '字段名',
  `field_desp` char(200) DEFAULT '' COMMENT '字段描述',
  `data_type` int(1) DEFAULT '1' COMMENT '1: string  2:int  3:double  4:object  5:array',
  `field_length` char(20) DEFAULT '' COMMENT '基本类型使用， string：超过长度直接截断   int:超过长度抛错  double(如:18,2)：按照要求格式化',
  `field_default` char(200) DEFAULT '' COMMENT '基本类型的默认值，根据不同类自动转化',
  `table_field` char(200) DEFAULT '' COMMENT '针对data_type=5,从数据库映射字段, 这里写出查询的SQL',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `is_require` bit(1) DEFAULT b'0' COMMENT '配置是否必填，1：必填，0非必填',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='报文字段详细配置';

-- ----------------------------
-- Records of oti_field_library
-- ----------------------------

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `type` varchar(32) DEFAULT NULL COMMENT '资源类型：0,1,2(目录,菜单or按钮)',
  `url` varchar(255) DEFAULT NULL COMMENT '访问url地址',
  `perms` varchar(128) DEFAULT NULL COMMENT '权限代码字符串',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `parent_name` varchar(168) DEFAULT NULL COMMENT '父节点名称',
  `parent_ids` varchar(128) DEFAULT NULL COMMENT '父节点id列表串，用/分割',
  `icon` varchar(168) DEFAULT NULL COMMENT '图标',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序号',
  `is_lock` bit(1) DEFAULT NULL COMMENT '账号是否锁定，1：锁定，0未锁定',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '系统管理', '0', null, '', '0', null, '0/', '&#xe62d;', '1', '', '2017-02-09 10:34:50', '2017-05-16 23:10:48');
INSERT INTO `permission` VALUES ('3', '管理员管理', '1', '/admin/manager/user', 'user:list', '1', '系统管理', '1/', null, '1', '', '2017-02-13 12:08:50', '2017-02-15 15:23:54');
INSERT INTO `permission` VALUES ('9', '角色管理', '1', '/admin/role', 'role:list', '1', '系统管理', null, '', '2', '', '2017-02-15 14:07:21', '2017-05-16 23:10:17');
INSERT INTO `permission` VALUES ('10', '权限管理', '1', '/admin/permission', 'permission:list', '1', '系统管理', null, '', '3', '', '2017-02-15 14:08:24', '2017-05-16 23:10:23');
INSERT INTO `permission` VALUES ('11', '新增', '2', null, 'user:create', '3', '管理员管理', null, '', '1', '', '2017-02-15 14:25:22', '2017-05-16 23:11:10');
INSERT INTO `permission` VALUES ('12', '修改', '2', null, 'user:update', '3', '管理员管理', null, '', '2', '', '2017-02-15 14:26:03', '2017-05-16 23:11:19');
INSERT INTO `permission` VALUES ('13', '删除', '2', null, 'user:delete', '3', '管理员管理', null, '', '3', '', '2017-02-15 14:27:29', '2017-05-16 23:11:25');
INSERT INTO `permission` VALUES ('14', '查看', '2', null, 'user:view', '3', '管理员管理', null, '', '4', '', '2017-02-15 15:22:47', '2017-05-16 23:11:30');
INSERT INTO `permission` VALUES ('15', '新增', '2', null, 'role:create', '9', '角色管理', null, '', '1', '', '2017-02-15 15:23:21', '2017-05-16 23:11:46');
INSERT INTO `permission` VALUES ('17', '删除', '2', null, 'role:delete', '9', '角色管理', null, '', '3', '', '2017-02-15 15:25:48', '2017-05-16 23:12:09');
INSERT INTO `permission` VALUES ('18', '查看', '2', null, 'role:view', '9', '角色管理', null, '', '4', '', '2017-02-15 15:26:24', '2017-05-16 23:12:16');
INSERT INTO `permission` VALUES ('19', '新增', '2', null, 'permission:create', '10', '权限管理', null, '', '1', '', '2017-02-15 15:27:53', '2017-05-16 23:12:28');
INSERT INTO `permission` VALUES ('20', '修改', '2', null, 'permission:update', '10', '权限管理', null, '', '2', '', '2017-02-15 15:28:24', '2017-05-16 23:12:32');
INSERT INTO `permission` VALUES ('21', '删除', '2', null, 'permission:delete', '10', '权限管理', null, '', '3', '', '2017-02-15 15:28:51', '2017-05-16 23:12:37');
INSERT INTO `permission` VALUES ('22', '查看', '2', null, 'permission:view', '10', '权限管理', null, '', '4', '', '2017-02-15 15:29:10', '2017-05-16 23:12:42');
INSERT INTO `permission` VALUES ('31', '修改', '2', null, 'role:update', '9', '角色管理', null, '', '2', '', '2017-02-17 13:39:20', '2017-05-16 23:12:01');
INSERT INTO `permission` VALUES ('32', '禁用|启用', '2', null, 'user:status', '3', '管理员管理', null, '', '5', '', '2017-02-17 15:57:15', '2017-05-16 23:13:00');
INSERT INTO `permission` VALUES ('51', '内容管理', '0', null, null, '0', null, null, '&#xe616;', '3', '', '2017-04-19 11:16:42', '2017-05-16 23:13:30');
INSERT INTO `permission` VALUES ('52', '内容分类', '1', '/admin/content/cat', 'content-cat:list', '51', '内容管理', null, '', '1', '', '2017-04-19 11:17:50', '2017-05-16 23:16:17');
INSERT INTO `permission` VALUES ('53', '内容列表', '1', '/admin/content', 'content:list', '51', '内容管理', null, '', '2', '', '2017-04-19 11:21:28', '2017-05-16 23:16:33');
INSERT INTO `permission` VALUES ('54', '删除', '2', null, 'content:delete', '53', '内容列表', null, '', '3', '', '2017-04-20 17:14:31', '2017-05-16 23:17:51');
INSERT INTO `permission` VALUES ('55', '添加', '2', null, 'content:create', '53', '内容列表', null, '', '1', '', '2017-04-20 17:14:52', '2017-05-16 23:17:12');
INSERT INTO `permission` VALUES ('56', '修改', '2', null, 'content:update', '53', '内容列表', null, '', '2', '', '2017-04-20 17:15:18', '2017-05-16 23:18:02');
INSERT INTO `permission` VALUES ('57', '添加', '2', null, 'content-cat:create', '52', '内容分类', null, null, '1', '', '2017-04-24 11:04:12', '2017-04-24 11:04:12');
INSERT INTO `permission` VALUES ('58', '修改', '2', null, 'content-cat:update', '52', '内容分类', null, null, '2', '', '2017-04-24 11:04:40', '2017-04-24 11:04:40');
INSERT INTO `permission` VALUES ('59', '删除', '2', null, 'content-cat:delete', '52', '内容分类', null, null, '3', '', '2017-04-24 11:05:01', '2017-04-24 11:05:01');
INSERT INTO `permission` VALUES ('64', 'SQL监控', '1', '/admin/monitor/druid', 'druid:list', '1', '系统管理', null, '', '5', '', '2017-05-05 15:31:41', '2017-07-27 23:28:30');
INSERT INTO `permission` VALUES ('66', '调度管理', '0', null, null, '0', null, null, '&#xe637;', '2', '', '2017-05-09 15:22:11', '2017-05-16 23:13:42');
INSERT INTO `permission` VALUES ('67', '调度列表', '1', '/admin/job', 'job:list', '66', '调度管理', null, '', '1', '', '2017-05-09 15:22:37', '2017-05-16 23:19:40');
INSERT INTO `permission` VALUES ('68', '添加', '2', null, 'job:create', '67', '调度列表', null, '', '1', '', '2017-05-09 15:23:22', '2017-05-16 23:19:43');
INSERT INTO `permission` VALUES ('69', '日志管理', '0', null, null, '0', null, null, '&#xe623;', '4', '', '2017-05-16 23:22:15', '2017-05-16 23:26:13');
INSERT INTO `permission` VALUES ('70', '操作日志', '1', '/admin/log', 'log:list', '69', '日志管理', null, '', '1', '', '2017-05-16 23:23:57', '2017-05-16 23:23:57');
INSERT INTO `permission` VALUES ('71', '删除', '2', null, 'log:delete', '70', '操作日志', null, '', '1', '', '2017-05-16 23:24:26', '2017-05-16 23:24:26');
INSERT INTO `permission` VALUES ('72', '查看', '2', null, 'log:view', '70', '操作日志', null, '', '2', '', '2017-05-16 23:24:39', '2017-05-16 23:24:39');
INSERT INTO `permission` VALUES ('73', '修改', '2', null, 'job:update', '67', '调度列表', null, '', '2', '', '2017-05-17 15:40:42', '2017-05-17 15:40:42');
INSERT INTO `permission` VALUES ('74', '删除', '2', null, 'job:delete', '67', '调度列表', null, '', '3', '', '2017-05-17 16:04:48', '2017-05-17 16:04:48');
INSERT INTO `permission` VALUES ('75', '暂停', '2', null, 'job:pause', '67', '调度列表', null, '', '4', '', '2017-05-19 12:43:12', '2017-05-19 12:43:12');
INSERT INTO `permission` VALUES ('76', '恢复', '2', null, 'job:resume', '67', '调度列表', null, '', '5', '', '2017-05-19 12:46:22', '2017-05-19 12:46:22');
INSERT INTO `permission` VALUES ('77', '运行一次', '2', null, 'job:run', '67', '调度列表', null, '', '6', '', '2017-05-19 12:48:10', '2017-05-19 12:48:10');
INSERT INTO `permission` VALUES ('78', '查看详情', '2', null, 'job:view', '67', '调度列表', null, '', '7', '', '2017-05-22 16:28:28', '2017-05-22 16:28:28');
INSERT INTO `permission` VALUES ('79', '调度日志', '2', null, 'job:log', '67', '调度列表', null, '', '8', '', '2017-05-22 16:28:54', '2017-05-22 16:28:54');
INSERT INTO `permission` VALUES ('80', '授权', '2', null, 'role:permission', '9', '角色管理', null, '', '5', '', '2017-07-20 14:17:54', '2017-07-20 14:18:37');
INSERT INTO `permission` VALUES ('81', '检索管理', '0', '', '', '0', '', null, '', '5', '', '2018-05-15 18:51:22', '2018-05-15 18:51:22');
INSERT INTO `permission` VALUES ('82', '全量检索', '1', '/admin/search/full', 'search-full:list', '81', '检索管理', null, '', '1', '', '2018-05-15 18:55:07', '2018-05-15 18:55:07');
INSERT INTO `permission` VALUES ('83', '增量检索', '1', '/admin/search/incre', 'search-incre:list', '81', '检索管理', null, '', '2', '', '2018-05-15 18:56:20', '2018-05-15 18:56:20');
INSERT INTO `permission` VALUES ('84', '精确检索', '1', '/admin/search/exact', 'search-exact:list', '81', '检索管理', null, '', '3', '', '2018-05-15 19:18:22', '2018-05-15 19:18:22');
INSERT INTO `permission` VALUES ('85', '模糊检索', '1', '/admin/search/blur', 'search-blur:list', '81', '检索管理', null, '', '4', '', '2018-05-15 19:19:27', '2018-05-15 19:19:27');
INSERT INTO `permission` VALUES ('86', '全量任务', '1', '/admin/log/full', 'log-full:list', '66', '调度管理', null, '', '2', '', '2018-05-15 19:21:06', '2018-05-15 19:21:06');
INSERT INTO `permission` VALUES ('87', '增量任务', '1', '/admin/log/incre', 'log-incre:list', '66', '调度管理', null, '', '3', '', '2018-05-15 19:21:52', '2018-05-15 19:21:52');
INSERT INTO `permission` VALUES ('88', '精确任务', '1', '/admin/log/exact', 'log-exact:list', '66', '调度管理', null, '', '4', '', '2018-05-15 19:22:38', '2018-05-15 19:22:38');
INSERT INTO `permission` VALUES ('89', '数据管理', '0', '', '', '0', '', null, '', '6', '', '2018-05-15 19:23:21', '2018-05-15 19:23:21');
INSERT INTO `permission` VALUES ('90', '分类信息', '1', '/admin/data/info', 'data-info:list', '89', '数据管理', null, '', '1', '', '2018-05-15 19:25:01', '2018-05-15 19:25:01');
INSERT INTO `permission` VALUES ('91', '数据API', '1', '/admin/data/api', 'data-api:list', '89', '数据管理', null, '', '2', '', '2018-05-15 19:25:56', '2018-05-15 19:25:56');
INSERT INTO `permission` VALUES ('92', '需求管理', '0', '', '', '0', '', null, '', '7', '', '2018-05-15 19:26:20', '2018-05-15 19:26:20');
INSERT INTO `permission` VALUES ('93', '历史需求', '1', '/admin/require/history', 'require-history:list', '92', '需求管理', null, '', '1', '', '2018-05-15 19:28:20', '2018-05-15 19:28:20');
INSERT INTO `permission` VALUES ('94', '最新需求', '1', '/admin/require/new', 'require-new:list', '92', '需求管理', null, '', '2', '', '2018-05-15 19:29:33', '2018-05-15 19:29:33');
INSERT INTO `permission` VALUES ('95', '风险爆点', '0', '', '', '0', '', null, '', '8', '', '2018-05-15 19:30:35', '2018-05-15 19:30:35');
INSERT INTO `permission` VALUES ('96', '爆点管理', '1', '/admin/point/manage', 'point-manage:list', '95', '风险爆点', null, '', '1', '', '2018-05-15 19:32:17', '2018-05-15 19:32:17');
INSERT INTO `permission` VALUES ('97', '推送设置', '1', '/admin/point/config', 'point-config:list', '95', '风险爆点', null, '', '2', '', '2018-05-15 19:33:18', '2018-05-15 19:33:18');
INSERT INTO `permission` VALUES ('98', '在线工具', '0', '', '', '0', '', null, '', '9', '', '2018-05-15 19:34:31', '2018-05-15 19:34:31');
INSERT INTO `permission` VALUES ('99', 'OCR在线', '1', '/admin/tool/ocr', 'tool-ocr:list', '98', '在线工具', null, '', '1', '', '2018-05-15 19:35:14', '2018-05-15 19:35:14');
INSERT INTO `permission` VALUES ('100', 'NLP在线', '1', '/admin/tool/nlp', 'tool-nlp:list', '98', '在线工具', null, '', '2', '', '2018-05-15 19:36:07', '2018-05-15 19:36:07');
INSERT INTO `permission` VALUES ('101', 'PDF在线', '1', '/admin/tool/pdf', 'tool-pdf:list', '98', '在线工具', null, '', '3', '', '2018-05-15 19:37:15', '2018-05-15 19:37:15');
INSERT INTO `permission` VALUES ('102', 'WORD在线', '1', '/admin/tool/doc', 'tool-doc:list', '98', '在线工具', null, '', '4', '', '2018-05-15 19:38:14', '2018-05-15 19:38:14');

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(140) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(19) NOT NULL,
  `SCHED_TIME` bigint(19) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(1) NOT NULL,
  `IS_NONCONCURRENT` tinyint(1) NOT NULL,
  `IS_UPDATE_DATA` tinyint(1) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(19) NOT NULL,
  `CHECKIN_INTERVAL` bigint(19) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('GoodClusterScheduler', 'fengjiang-XPS-13-93601526380617068', '1526384762570', '15000');

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(1) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(19) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(19) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(19) NOT NULL,
  `END_TIME` bigint(19) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '注解',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `perms` varchar(168) DEFAULT NULL COMMENT '角色标识',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '我是超级管理员', 'ROEL_ADMIN', '2017-02-08 16:03:57', '2017-05-16 23:24:48');
INSERT INTO `role` VALUES ('3', '管理员', '我是管理员', 'ROLE_GLY', '2017-02-08 17:13:50', '2017-05-05 15:26:19');
INSERT INTO `role` VALUES ('8', '普通用户', '我是普通用户', 'ROLE_SIMPLE', '2017-02-17 10:39:35', '2017-02-21 12:08:11');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `permission_id` bigint(20) NOT NULL COMMENT '权限id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2555 DEFAULT CHARSET=utf8 COMMENT='角色和权限中间表';

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('2460', '8', '1', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2461', '8', '3', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2462', '8', '14', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2463', '8', '9', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2464', '8', '15', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2465', '8', '18', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2466', '8', '10', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2467', '8', '19', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2468', '8', '22', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2469', '8', '64', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2470', '8', '66', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2471', '8', '67', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2472', '8', '68', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2473', '8', '75', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2474', '8', '76', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2475', '8', '77', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2476', '8', '78', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2477', '8', '79', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2478', '8', '51', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2479', '8', '52', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2480', '8', '57', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2481', '8', '58', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2482', '8', '59', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2483', '8', '53', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2484', '8', '55', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2485', '8', '56', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2486', '8', '54', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2487', '8', '69', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2488', '8', '70', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2489', '8', '71', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2490', '8', '72', '2017-08-05 19:02:22', '2017-08-05 19:02:22');
INSERT INTO `role_permission` VALUES ('2491', '1', '1', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2492', '1', '3', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2493', '1', '11', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2494', '1', '12', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2495', '1', '13', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2496', '1', '14', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2497', '1', '32', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2498', '1', '9', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2499', '1', '15', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2500', '1', '31', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2501', '1', '17', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2502', '1', '18', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2503', '1', '80', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2504', '1', '10', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2505', '1', '19', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2506', '1', '20', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2507', '1', '21', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2508', '1', '22', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2509', '1', '64', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2510', '1', '66', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2511', '1', '67', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2512', '1', '68', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2513', '1', '73', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2514', '1', '74', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2515', '1', '75', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2516', '1', '76', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2517', '1', '77', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2518', '1', '78', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2519', '1', '79', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2520', '1', '86', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2521', '1', '87', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2522', '1', '88', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2523', '1', '51', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2524', '1', '52', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2525', '1', '57', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2526', '1', '58', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2527', '1', '59', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2528', '1', '53', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2529', '1', '55', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2530', '1', '56', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2531', '1', '54', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2532', '1', '69', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2533', '1', '70', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2534', '1', '71', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2535', '1', '72', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2536', '1', '81', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2537', '1', '82', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2538', '1', '83', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2539', '1', '84', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2540', '1', '85', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2541', '1', '89', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2542', '1', '90', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2543', '1', '91', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2544', '1', '92', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2545', '1', '93', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2546', '1', '94', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2547', '1', '95', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2548', '1', '96', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2549', '1', '97', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2550', '1', '98', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2551', '1', '99', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2552', '1', '100', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2553', '1', '101', '2018-05-15 19:39:12', '2018-05-15 19:39:12');
INSERT INTO `role_permission` VALUES ('2554', '1', '102', '2018-05-15 19:39:12', '2018-05-15 19:39:12');

-- ----------------------------
-- Table structure for `schedule_job`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务分组',
  `cron` varchar(200) DEFAULT NULL COMMENT '执行计划',
  `is_local` bit(1) DEFAULT NULL COMMENT '调度方式 false 远程 true 本地',
  `remote_request_method` varchar(10) DEFAULT NULL COMMENT '远程请求方式 只支持POST',
  `remote_url` varchar(200) DEFAULT NULL COMMENT '远程执行url',
  `bean_class` varchar(500) DEFAULT NULL COMMENT '执行类名称 包名+类名',
  `method_name` varchar(200) DEFAULT NULL COMMENT '执行方法名称',
  `params` varchar(500) DEFAULT NULL COMMENT '参数',
  `is_async` bit(1) DEFAULT NULL COMMENT '是否异步  0否 1是',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `modify_by` bigint(20) DEFAULT NULL COMMENT '修改者',
  `remarks` varchar(200) DEFAULT NULL COMMENT '描述',
  `status` int(11) DEFAULT NULL COMMENT '任务状态 0禁用 1启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='任务调度';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('20', '测试无参数的本地调度', '测试组', '0 0 1 * * ?	', '', null, null, 'com.jk.modules.job.task.JobTest', 'run1', '', '', '83', '83', '测试无参数的本地调度', '0', '2017-05-20 20:01:45', '2017-09-20 16:46:32');
INSERT INTO `schedule_job` VALUES ('21', '测试带参数的本地调度', '测试组', '0 0 1 * * ?	', '', null, null, 'com.jk.modules.job.task.JobTest', 'run2', '我是参数', '', '83', '83', '测试带参数的本地调度', '0', '2017-05-20 20:02:52', '2017-09-20 16:46:39');
INSERT INTO `schedule_job` VALUES ('22', '测试同步异步有效性本地调度', '测试组', '0 0 1 * * ?	', '', null, null, 'com.jk.modules.job.task.JobTest', 'run3', '', '', '83', '83', '测试同步异步有效性本地调度', '0', '2017-05-20 20:04:38', '2017-09-20 16:46:45');
INSERT INTO `schedule_job` VALUES ('25', '测试带参数远程调度', '测试组', '0 0 1 * * ?	', '', 'POST', 'http://www.good.com/test/{key1}/{key2}?key3={key3}', null, null, 'key1=100,key2=200,key3=300', '', '83', '83', '测试带参数远程调度', '0', '2017-05-20 21:33:00', '2017-05-21 20:05:39');
INSERT INTO `schedule_job` VALUES ('26', '测试无参数远程调度', '测试组', '0 0 1 * * ?	', '', 'POST', 'http://www.good.com/test', null, null, null, '', '83', null, '测试无参数远程调度', '0', '2017-05-21 20:04:54', '2017-05-21 20:06:17');
INSERT INTO `schedule_job` VALUES ('27', '测试远程调度request接收参数', '测试组', '0 0 1 * * ?	', '', 'POST', 'http://www.good.com/test3?key1={key1}&key2={key2}&key3={key3}', null, null, 'key1=100,key2=200,key3=300', '', '83', '83', '测试远程调度request接收参数', '0', '2017-05-21 20:13:15', '2017-05-21 20:36:34');

-- ----------------------------
-- Table structure for `schedule_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `job_id` bigint(20) DEFAULT NULL COMMENT '任务ID',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务分组',
  `cron` varchar(200) DEFAULT NULL COMMENT '执行计划',
  `is_local` bit(1) DEFAULT NULL COMMENT '调度方式 false 远程 true 本地',
  `remote_request_method` varchar(10) DEFAULT NULL COMMENT '远程请求方式 只支持POST',
  `remote_url` varchar(200) DEFAULT NULL COMMENT '远程执行url',
  `bean_class` varchar(500) DEFAULT NULL COMMENT '执行类名称 包名+类名',
  `method_name` varchar(200) DEFAULT NULL COMMENT '执行方法名称',
  `job_trigger` varchar(255) DEFAULT NULL COMMENT '触发器',
  `params` varchar(500) DEFAULT NULL COMMENT '参数',
  `is_async` bit(1) DEFAULT NULL COMMENT '是否异步  0否 1是',
  `remarks` varchar(200) DEFAULT NULL COMMENT '描述',
  `status` int(11) DEFAULT NULL COMMENT '执行状态 0失败 1成功',
  `error` varchar(500) DEFAULT NULL COMMENT '失败信息',
  `times` bigint(20) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1689 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='任务调度执行日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(64) DEFAULT NULL COMMENT '盐',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `sex` bit(1) DEFAULT NULL COMMENT '性别  1 男  0 女',
  `mobile_phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `is_lock` bit(1) DEFAULT NULL COMMENT '账号是否锁定，1：锁定，0未锁定',
  `is_del` bit(1) DEFAULT NULL COMMENT '账号是否删除，1：删除，0未删除',
  `is_admin` bit(1) DEFAULT NULL COMMENT '是否是超级管理员',
  `login_time` datetime DEFAULT NULL COMMENT '最近一次登录时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('83', 'admin', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', '崔朋', '', '18568820939', '3', '228727120@qq.com', '', '', '', null, '2017-02-07 11:45:57', '2017-02-20 16:45:07');
INSERT INTO `user` VALUES ('84', 'test', '098f6bcd4621d373cade4e832627b4f6', null, null, '', '15001338253', '4', '228727120@qq.com', '', '', '', null, '2017-08-05 18:54:22', '2017-08-05 18:54:22');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户和角色中间表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '83', '1', '2017-02-13 11:02:06', '2017-02-13 11:02:08');
INSERT INTO `user_role` VALUES ('3', '84', '8', '2017-08-05 18:54:22', '2017-08-05 18:54:22');