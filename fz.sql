SET NAMES UTF8;
DROP DATABASE IF EXISTS fz;
CREATE DATABASE fz CHARSET=UTF8;
USE fz;
-- ----------------------------
-- Table structure for `fz_index_carousel`
-- ----------------------------

CREATE TABLE `fz_index_carousel` (
  `cid` int(11) NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_index_carousel
-- ----------------------------
INSERT INTO `fz_index_carousel` VALUES ('9', 'img/index/banner1.png', '轮播广告商品1', 'product_details.html?lid=12');
INSERT INTO `fz_index_carousel` VALUES ('10', 'img/index/banner2.png', '轮播广告商品2', 'product_details.html?lid=14');
INSERT INTO `fz_index_carousel` VALUES ('11', 'img/index/banner3.png', '轮播广告商品3', 'lookforward.html');
INSERT INTO `fz_index_carousel` VALUES ('12', 'img/index/banner4.png', '轮播广告商品4', 'lookforward.html');
INSERT INTO `fz_index_carousel` VALUES ('13', 'img/index/banner5.png', '轮播广告商品4', 'lookforward.html');

-- ----------------------------
-- Table structure for `fz_index_product`
-- ----------------------------
DROP TABLE IF EXISTS `fz_index_product`;
CREATE TABLE `fz_index_product` (
  `pid` int(11) NOT NULL auto_increment,
  `pic` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  `href` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_index_product
-- ----------------------------
INSERT INTO `fz_index_product` VALUES ('8','img/index/1F-one.jpg', '449.50', 'product_details.html?lid=1');
INSERT INTO `fz_index_product` VALUES ('9','img/index/1F-two.jpg', '249.50', 'product_details.html?lid=5');
INSERT INTO `fz_index_product` VALUES ('10','img/index/1F-three.jpg', '199.00', 'product_details.html?lid=9');
INSERT INTO `fz_index_product` VALUES ('11','img/index/1F-four.jpg', '174.50', 'product_details.html?lid=13');
INSERT INTO `fz_index_product` VALUES ('12','img/index/1F-five.jpg', '249.50', 'product_details.html?lid=17');

-- ----------------------------
-- Table structure for `fz_laptop`
-- ----------------------------
DROP TABLE IF EXISTS `fz_laptop`;
CREATE TABLE `fz_laptop` (
  `lid` int(11) NOT NULL auto_increment,
  `fid` int(11) default NULL,
  `title` varchar(128) default NULL,
  `subtitle` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_laptop
-- ----------------------------
INSERT INTO `fz_laptop` VALUES ('1', '1', 'ONLY秋季新款连帽假两件中长款外套女|117336559', '抽绳连帽假两件 字母刺绣 7天降退差价', '449.50');
INSERT INTO `fz_laptop` VALUES ('2', '1', 'ONLY2018冬季新款假两件情侣牛仔外套女|118354533', '帽子可拆卸 简约百搭 7天降退差价', '349.00');
INSERT INTO `fz_laptop` VALUES ('3', '1', 'ONLY冬季新款粉色宽松风衣外套中长款女|117336516', '斜插口袋 双排按扣门襟 7天降退差价', '449.50');
INSERT INTO `fz_laptop` VALUES ('4', '1', 'ONLY2018冬季新款系带中长风衣外套女|118336511', '可调节袖 系带收腰设计 7天降退差价', '324.50');
INSERT INTO `fz_laptop` VALUES ('5', '2', 'ONLY2018冬季新款粉红豹九分牛仔裤女|118132550', '粉红豹印花 裤线前移 7天降退差价', '249.50');
INSERT INTO `fz_laptop` VALUES ('6', '2', 'ONLY2018冬季新款迪士尼高腰牛仔裤女|118149661', '绑带开叉脚口 米奇金属门襟扣 7天降退差价', '299.50');
INSERT INTO `fz_laptop` VALUES ('7', '2', 'ONLY秋季新款破洞修身九分牛仔裤女|117349571', '磨破毛边 7天降退差价', '224.50');
INSERT INTO `fz_laptop` VALUES ('8', '2', 'ONLY2018秋季新款高腰喇叭九分牛仔裤女|118349617', '宽边设计 简约百搭 7天降退差价', '249.00');
INSERT INTO `fz_laptop` VALUES ('9', '3', '[预售]ONLY2018冬季新款蕾丝拼接刺绣卫衣女|11839S540', '本款为预售商品，12月09日发货', '199.00');
INSERT INTO `fz_laptop` VALUES ('10', '3', '[预售]ONLY2018秋季新款宽松猫咪字母加绒卫衣女|11839S541', '本款为预售商品,11月14日发货', '179.00');
INSERT INTO `fz_laptop` VALUES ('11', '3', 'ONLY秋季新款落肩丝绒字母宽松卫衣女|11739S573', '字母亮片 宽袖设计 7天降退差价', '149.50');
INSERT INTO `fz_laptop` VALUES ('12', '3', 'ONLY2018冬季新款宽松字母印花情侣连帽卫衣女|11839S559', '撞色线设计 帽里异色 7天降退差价', '199.00');
INSERT INTO `fz_laptop` VALUES ('13', '4', 'ONLY秋季新款修身V领绑带套头针织衫女|117324544', '交叉系带领口 拼接喇叭袖 7天降退差价', '174.50');
INSERT INTO `fz_laptop` VALUES ('14', '4', 'ONLY冬季新款一字领喇叭袖针织衫女|117324515', '特殊花边一字领 喇叭袖 7天降退差价', '149.50');
INSERT INTO `fz_laptop` VALUES ('15', '4', 'ONLY冬季新款宽松假两件套头针织衫女|117313512', '可拆卸衬衫拼接 螺纹设计 7天降退差价', '249.50');
INSERT INTO `fz_laptop` VALUES ('16', '4', 'ONLY2018秋季新款开叉网纱袖针织衫女|118313558', '双层系带设计 金属丝网纱 7天降退差价', '229.00');
INSERT INTO `fz_laptop` VALUES ('17', '5', 'ONLY2018夏季新款雪纺露肩A字连衣裙女|118107651', '荷叶边装饰 背部隐形拉链7天降退差价', '249.50');
INSERT INTO `fz_laptop` VALUES ('18', '5', '[预售]ONLY2018冬季新款拼接丝绒连衣裙女|118361534', '本款为预售商品，11月11日发货 7天降退差价', '299.00');
INSERT INTO `fz_laptop` VALUES ('19', '6', 'ONLY冬季新款毛领收腰宽松连帽羽绒服女|117312510', '可拆卸羽绒内胆 可拆卸毛领 7天降退差价', '1249.50');
INSERT INTO `fz_laptop` VALUES ('20', '6', 'ONLY冬季新款毛领羽绒服白鸭绒中长款女|117312565', '可拆卸毛领 罗纹拼接底摆 7天降退差价', '949.50');
INSERT INTO `fz_laptop` VALUES ('21', '6', 'ONLY冬季新款貉子毛领连帽羽绒服女|117412504', '可拆卸毛领 加绒内衬 7天降退差价', '999.50');
INSERT INTO `fz_laptop` VALUES ('22', '7', 'ONLY2018秋季新款蕾丝珠饰半身裙女|11831G515', '珠饰装饰 多层次设计 7天降退差价', '229.00');
INSERT INTO `fz_laptop` VALUES ('23', '7', 'ONLY2018秋季新款PU包臀修身半身裙女|11816S506', 'LOGO内衬 圆环拉链 7天降退差价', '149.50');
INSERT INTO `fz_laptop` VALUES ('24', '7', 'ONLY2018秋季新款荷叶边半身裙短裙女|118316527', '荷叶边设计 侧拉链 7天降退差价', '199.00');
INSERT INTO `fz_laptop` VALUES ('25', '7', 'ONLY2018冬季新款荷叶边格纹半身裙女|118316529', '侧系带门襟 荷叶边设计 7天降退差价', '249.00');
INSERT INTO `fz_laptop` VALUES ('26', '7', 'ONLY2018秋季新款网纱印花半身裙女|11831G511', '松紧腰 星星印花设计 7天降退差价', '249.00');
INSERT INTO `fz_laptop` VALUES ('27', '7', 'ONLY2018冬季新款荷叶边雪纺半身裙女|118216502', '纯色内衬 腰部拉链门襟 7天降退差价', '174.50');
INSERT INTO `fz_laptop` VALUES ('28', '8', 'ONLY2018冬季新款休闲格子西装外套女|118308514', '金属质感扣 搭配腰带装饰 7天降退差价', '349.00');
INSERT INTO `fz_laptop` VALUES ('29', '8', 'ONLY2018冬季新款双排扣西服外套女|118308512', '彩扣装饰 长宽口袋 7天降退差价', '299.00');
INSERT INTO `fz_laptop` VALUES ('30', '8', 'ONLY2018冬季新款时尚修身西服收腰女|118108505', '纯色内衬 一字口袋 7天降退差价', '300.00');


-- ----------------------------
-- Table structure for `fz_laptop_family`
-- ----------------------------
DROP TABLE IF EXISTS `fz_laptop_family`;
CREATE TABLE `fz_laptop_family` (
  `fid` int(11) NOT NULL auto_increment,
  `fname` varchar(32) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_laptop_family
-- ----------------------------
INSERT INTO `fz_laptop_family` VALUES ('1', '风衣/短外套');
INSERT INTO `fz_laptop_family` VALUES ('2', '牛仔裤');
INSERT INTO `fz_laptop_family` VALUES ('3', '卫衣');
INSERT INTO `fz_laptop_family` VALUES ('4', '针织衫');
INSERT INTO `fz_laptop_family` VALUES ('5', '连衣裙');
INSERT INTO `fz_laptop_family` VALUES ('6', '羽绒服');
INSERT INTO `fz_laptop_family` VALUES ('7', '半身裙');
INSERT INTO `fz_laptop_family` VALUES ('8', '西服');


-- ----------------------------
-- Table structure for `fz_laptop_pic`
-- ----------------------------
DROP TABLE IF EXISTS `fz_laptop_pic`;
CREATE TABLE `fz_laptop_pic` (
  `pid` int(11) NOT NULL auto_increment,
  `lid` int(11) default NULL,
  `sm` varchar(128) default NULL,
  `md` varchar(128) default NULL,
  `lg` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_laptop_pic
-- ----------------------------
INSERT INTO `fz_laptop_pic` VALUES ('1', '1', 'img/product/sm/sm-1-1.jpg', 'img/product/md/md-1-1.jpg', 'img/product/lg/lg-1-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('2', '1', 'img/product/sm/sm-1-2.jpg', 'img/product/md/md-1-2.jpg', 'img/product/lg/lg-1-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('3', '1', 'img/product/sm/sm-1-3.jpg', 'img/product/md/md-1-3.jpg', 'img/product/lg/lg-1-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('4', '2', 'img/product/sm/sm-2-1.jpg', 'img/product/md/md-2-1.jpg', 'img/product/lg/lg-2-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('5', '2', 'img/product/sm/sm-2-2.jpg', 'img/product/md/md-2-2.jpg', 'img/product/lg/lg-2-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('6', '2', 'img/product/sm/sm-2-3.jpg', 'img/product/md/md-2-3.jpg', 'img/product/lg/lg-2-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('7', '2', 'img/product/sm/sm-2-4.jpg', 'img/product/md/md-2-4.jpg', 'img/product/lg/lg-2-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('8', '3', 'img/product/sm/sm-3-1.jpg', 'img/product/md/md-3-1.jpg', 'img/product/lg/lg-3-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('9', '3', 'img/product/sm/sm-3-2.jpg', 'img/product/md/md-3-2.jpg', 'img/product/lg/lg-3-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('10', '3', 'img/product/sm/sm-3-3.jpg', 'img/product/md/md-3-3.jpg', 'img/product/lg/lg-3-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('11', '3', 'img/product/sm/sm-3-4.jpg', 'img/product/md/md-3-4.jpg', 'img/product/lg/lg-3-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('12', '4', 'img/product/sm/sm-4-1.jpg', 'img/product/md/md-4-1.jpg', 'img/product/lg/lg-4-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('13', '4', 'img/product/sm/sm-4-2.jpg', 'img/product/md/md-4-2.jpg', 'img/product/lg/lg-4-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('14', '4', 'img/product/sm/sm-4-3.jpg', 'img/product/md/md-4-3.jpg', 'img/product/lg/lg-4-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('15', '4', 'img/product/sm/sm-4-4.jpg', 'img/product/md/md-4-4.jpg', 'img/product/lg/lg-4-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('16', '4', 'img/product/sm/sm-4-5.jpg', 'img/product/md/md-4-5.jpg', 'img/product/lg/lg-4-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('17', '5', 'img/product/sm/sm-5-1.jpg', 'img/product/md/md-5-1.jpg', 'img/product/lg/lg-5-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('18', '5', 'img/product/sm/sm-5-2.jpg', 'img/product/md/md-5-2.jpg', 'img/product/lg/lg-5-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('19', '5', 'img/product/sm/sm-5-3.jpg', 'img/product/md/md-5-3.jpg', 'img/product/lg/lg-5-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('20', '5', 'img/product/sm/sm-5-4.jpg', 'img/product/md/md-5-4.jpg', 'img/product/lg/lg-5-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('21', '5', 'img/product/sm/sm-5-5.jpg', 'img/product/md/md-5-5.jpg', 'img/product/lg/lg-5-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('22', '6', 'img/product/sm/sm-6-1.jpg', 'img/product/md/md-6-1.jpg', 'img/product/lg/lg-6-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('23', '6', 'img/product/sm/sm-6-2.jpg', 'img/product/md/md-6-2.jpg', 'img/product/lg/lg-6-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('24', '6', 'img/product/sm/sm-6-3.jpg', 'img/product/md/md-6-3.jpg', 'img/product/lg/lg-6-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('25', '6', 'img/product/sm/sm-6-4.jpg', 'img/product/md/md-6-4.jpg', 'img/product/lg/lg-6-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('26', '6', 'img/product/sm/sm-6-5.jpg', 'img/product/md/md-6-5.jpg', 'img/product/lg/lg-6-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('27', '7', 'img/product/sm/sm-7-1.jpg', 'img/product/md/md-7-1.jpg', 'img/product/lg/lg-7-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('28', '7', 'img/product/sm/sm-7-2.jpg', 'img/product/md/md-7-2.jpg', 'img/product/lg/lg-7-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('29', '7', 'img/product/sm/sm-7-3.jpg', 'img/product/md/md-7-3.jpg', 'img/product/lg/lg-7-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('30', '7', 'img/product/sm/sm-7-4.jpg', 'img/product/md/md-7-4.jpg', 'img/product/lg/lg-7-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('31', '7', 'img/product/sm/sm-7-5.jpg', 'img/product/md/md-7-5.jpg', 'img/product/lg/lg-7-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('32', '8', 'img/product/sm/sm-8-1.jpg', 'img/product/md/md-8-1.jpg', 'img/product/lg/lg-8-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('33', '8', 'img/product/sm/sm-8-2.jpg', 'img/product/md/md-8-2.jpg', 'img/product/lg/lg-8-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('34', '8', 'img/product/sm/sm-8-3.jpg', 'img/product/md/md-8-3.jpg', 'img/product/lg/lg-8-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('35', '8', 'img/product/sm/sm-8-4.jpg', 'img/product/md/md-8-4.jpg', 'img/product/lg/lg-8-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('36', '8', 'img/product/sm/sm-8-5.jpg', 'img/product/md/md-8-5.jpg', 'img/product/lg/lg-8-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('37', '9', 'img/product/sm/sm-9-1.jpg', 'img/product/md/md-9-1.jpg', 'img/product/lg/lg-9-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('38', '9', 'img/product/sm/sm-9-2.jpg', 'img/product/md/md-9-2.jpg', 'img/product/lg/lg-9-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('39', '9', 'img/product/sm/sm-9-3.jpg', 'img/product/md/md-9-3.jpg', 'img/product/lg/lg-9-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('40', '9', 'img/product/sm/sm-9-4.jpg', 'img/product/md/md-9-4.jpg', 'img/product/lg/lg-9-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('41', '9', 'img/product/sm/sm-9-5.jpg', 'img/product/md/md-9-5.jpg', 'img/product/lg/lg-9-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('42', '10', 'img/product/sm/sm-10-1.jpg', 'img/product/md/md-10-1.jpg', 'img/product/lg/lg-10-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('43', '10', 'img/product/sm/sm-10-2.jpg', 'img/product/md/md-10-2.jpg', 'img/product/lg/lg-10-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('44', '10', 'img/product/sm/sm-10-3.jpg', 'img/product/md/md-10-3.jpg', 'img/product/lg/lg-10-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('45', '10', 'img/product/sm/sm-10-4.jpg', 'img/product/md/md-10-4.jpg', 'img/product/lg/lg-10-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('46', '10', 'img/product/sm/sm-10-5.jpg', 'img/product/md/md-10-5.jpg', 'img/product/lg/lg-10-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('47', '11', 'img/product/sm/sm-11-1.jpg', 'img/product/md/md-11-1.jpg', 'img/product/lg/lg-11-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('48', '11', 'img/product/sm/sm-11-2.jpg', 'img/product/md/md-11-2.jpg', 'img/product/lg/lg-11-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('49', '11', 'img/product/sm/sm-11-3.jpg', 'img/product/md/md-11-3.jpg', 'img/product/lg/lg-11-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('50', '11', 'img/product/sm/sm-11-4.jpg', 'img/product/md/md-11-4.jpg', 'img/product/lg/lg-11-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('51', '11', 'img/product/sm/sm-11-5.jpg', 'img/product/md/md-11-5.jpg', 'img/product/lg/lg-11-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('52', '12', 'img/product/sm/sm-12-1.jpg', 'img/product/md/md-12-1.jpg', 'img/product/lg/lg-12-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('53', '12', 'img/product/sm/sm-12-2.jpg', 'img/product/md/md-12-2.jpg', 'img/product/lg/lg-12-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('54', '12', 'img/product/sm/sm-12-3.jpg', 'img/product/md/md-12-3.jpg', 'img/product/lg/lg-12-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('55', '12', 'img/product/sm/sm-12-4.jpg', 'img/product/md/md-12-4.jpg', 'img/product/lg/lg-12-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('56', '12', 'img/product/sm/sm-12-5.jpg', 'img/product/md/md-12-5.jpg', 'img/product/lg/lg-12-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('57', '13', 'img/product/sm/sm-13-1.jpg', 'img/product/md/md-13-1.jpg', 'img/product/lg/lg-13-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('58', '13', 'img/product/sm/sm-13-2.jpg', 'img/product/md/md-13-2.jpg', 'img/product/lg/lg-13-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('59', '13', 'img/product/sm/sm-13-3.jpg', 'img/product/md/md-13-3.jpg', 'img/product/lg/lg-13-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('60', '13', 'img/product/sm/sm-13-4.jpg', 'img/product/md/md-13-4.jpg', 'img/product/lg/lg-13-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('61', '13', 'img/product/sm/sm-13-5.jpg', 'img/product/md/md-13-5.jpg', 'img/product/lg/lg-13-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('62', '14', 'img/product/sm/sm-14-1.jpg', 'img/product/md/md-14-1.jpg', 'img/product/lg/lg-14-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('63', '14', 'img/product/sm/sm-14-2.jpg', 'img/product/md/md-14-2.jpg', 'img/product/lg/lg-14-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('64', '14', 'img/product/sm/sm-14-3.jpg', 'img/product/md/md-14-3.jpg', 'img/product/lg/lg-14-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('65', '14', 'img/product/sm/sm-14-4.jpg', 'img/product/md/md-14-4.jpg', 'img/product/lg/lg-14-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('66', '14', 'img/product/sm/sm-14-5.jpg', 'img/product/md/md-14-5.jpg', 'img/product/lg/lg-14-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('67', '15', 'img/product/sm/sm-15-1.jpg', 'img/product/md/md-15-1.jpg', 'img/product/lg/lg-15-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('68', '15', 'img/product/sm/sm-15-2.jpg', 'img/product/md/md-15-2.jpg', 'img/product/lg/lg-15-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('69', '15', 'img/product/sm/sm-15-3.jpg', 'img/product/md/md-15-3.jpg', 'img/product/lg/lg-15-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('70', '15', 'img/product/sm/sm-15-4.jpg', 'img/product/md/md-15-4.jpg', 'img/product/lg/lg-15-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('71', '15', 'img/product/sm/sm-15-5.jpg', 'img/product/md/md-15-5.jpg', 'img/product/lg/lg-15-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('72', '16', 'img/product/sm/sm-16-1.jpg', 'img/product/md/md-16-1.jpg', 'img/product/lg/lg-16-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('73', '16', 'img/product/sm/sm-16-2.jpg', 'img/product/md/md-16-2.jpg', 'img/product/lg/lg-16-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('74', '16', 'img/product/sm/sm-16-3.jpg', 'img/product/md/md-16-3.jpg', 'img/product/lg/lg-16-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('75', '16', 'img/product/sm/sm-16-4.jpg', 'img/product/md/md-16-4.jpg', 'img/product/lg/lg-16-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('76', '16', 'img/product/sm/sm-16-5.jpg', 'img/product/md/md-16-5.jpg', 'img/product/lg/lg-16-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('77', '17', 'img/product/sm/sm-17-1.jpg', 'img/product/md/md-17-1.jpg', 'img/product/lg/lg-17-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('78', '17', 'img/product/sm/sm-17-2.jpg', 'img/product/md/md-17-2.jpg', 'img/product/lg/lg-17-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('79', '17', 'img/product/sm/sm-17-3.jpg', 'img/product/md/md-17-3.jpg', 'img/product/lg/lg-17-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('80', '17', 'img/product/sm/sm-17-4.jpg', 'img/product/md/md-17-4.jpg', 'img/product/lg/lg-17-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('81', '17', 'img/product/sm/sm-17-5.jpg', 'img/product/md/md-17-5.jpg', 'img/product/lg/lg-17-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('82', '18', 'img/product/sm/sm-18-1.jpg', 'img/product/md/md-18-1.jpg', 'img/product/lg/lg-18-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('83', '18', 'img/product/sm/sm-18-2.jpg', 'img/product/md/md-18-2.jpg', 'img/product/lg/lg-18-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('84', '18', 'img/product/sm/sm-18-3.jpg', 'img/product/md/md-18-3.jpg', 'img/product/lg/lg-18-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('85', '18', 'img/product/sm/sm-18-4.jpg', 'img/product/md/md-18-4.jpg', 'img/product/lg/lg-18-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('86', '18', 'img/product/sm/sm-18-5.jpg', 'img/product/md/md-18-5.jpg', 'img/product/lg/lg-18-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('87', '19', 'img/product/sm/sm-19-1.jpg', 'img/product/md/md-19-1.jpg', 'img/product/lg/lg-19-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('88', '19', 'img/product/sm/sm-19-2.jpg', 'img/product/md/md-19-2.jpg', 'img/product/lg/lg-19-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('89', '19', 'img/product/sm/sm-19-3.jpg', 'img/product/md/md-19-3.jpg', 'img/product/lg/lg-19-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('90', '19', 'img/product/sm/sm-19-4.jpg', 'img/product/md/md-19-4.jpg', 'img/product/lg/lg-19-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('91', '19', 'img/product/sm/sm-19-5.jpg', 'img/product/md/md-19-5.jpg', 'img/product/lg/lg-19-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('92', '20', 'img/product/sm/sm-20-1.jpg', 'img/product/md/md-20-1.jpg', 'img/product/lg/lg-20-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('93', '20', 'img/product/sm/sm-20-2.jpg', 'img/product/md/md-20-2.jpg', 'img/product/lg/lg-20-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('94', '20', 'img/product/sm/sm-20-3.jpg', 'img/product/md/md-20-3.jpg', 'img/product/lg/lg-20-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('95', '20', 'img/product/sm/sm-20-4.jpg', 'img/product/md/md-20-4.jpg', 'img/product/lg/lg-20-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('96', '20', 'img/product/sm/sm-20-5.jpg', 'img/product/md/md-20-5.jpg', 'img/product/lg/lg-20-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('97', '21', 'img/product/sm/sm-21-1.jpg', 'img/product/md/md-21-1.jpg', 'img/product/lg/lg-21-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('98', '21', 'img/product/sm/sm-21-2.jpg', 'img/product/md/md-21-2.jpg', 'img/product/lg/lg-21-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('99', '21', 'img/product/sm/sm-21-3.jpg', 'img/product/md/md-21-3.jpg', 'img/product/lg/lg-21-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('100', '21', 'img/product/sm/sm-21-4.jpg', 'img/product/md/md-21-4.jpg', 'img/product/lg/lg-21-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('101', '21', 'img/product/sm/sm-21-5.jpg', 'img/product/md/md-21-5.jpg', 'img/product/lg/lg-21-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('102', '22', 'img/product/sm/sm-22-1.jpg', 'img/product/md/md-22-1.jpg', 'img/product/lg/lg-22-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('103', '22', 'img/product/sm/sm-22-2.jpg', 'img/product/md/md-22-2.jpg', 'img/product/lg/lg-22-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('104', '22', 'img/product/sm/sm-22-3.jpg', 'img/product/md/md-22-3.jpg', 'img/product/lg/lg-22-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('105', '22', 'img/product/sm/sm-22-4.jpg', 'img/product/md/md-22-4.jpg', 'img/product/lg/lg-22-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('106', '22', 'img/product/sm/sm-22-5.jpg', 'img/product/md/md-22-5.jpg', 'img/product/lg/lg-22-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('107', '23', 'img/product/sm/sm-23-1.jpg', 'img/product/md/md-23-1.jpg', 'img/product/lg/lg-23-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('108', '23', 'img/product/sm/sm-23-2.jpg', 'img/product/md/md-23-2.jpg', 'img/product/lg/lg-23-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('109', '23', 'img/product/sm/sm-23-3.jpg', 'img/product/md/md-23-3.jpg', 'img/product/lg/lg-23-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('110', '23', 'img/product/sm/sm-23-4.jpg', 'img/product/md/md-23-4.jpg', 'img/product/lg/lg-23-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('111', '23', 'img/product/sm/sm-23-5.jpg', 'img/product/md/md-23-5.jpg', 'img/product/lg/lg-23-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('112', '24', 'img/product/sm/sm-24-1.jpg', 'img/product/md/md-24-1.jpg', 'img/product/lg/lg-24-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('113', '24', 'img/product/sm/sm-24-2.jpg', 'img/product/md/md-24-2.jpg', 'img/product/lg/lg-24-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('114', '24', 'img/product/sm/sm-24-3.jpg', 'img/product/md/md-24-3.jpg', 'img/product/lg/lg-24-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('115', '24', 'img/product/sm/sm-24-4.jpg', 'img/product/md/md-24-4.jpg', 'img/product/lg/lg-24-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('116', '24', 'img/product/sm/sm-24-5.jpg', 'img/product/md/md-24-5.jpg', 'img/product/lg/lg-24-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('117', '25', 'img/product/sm/sm-25-1.jpg', 'img/product/md/md-25-1.jpg', 'img/product/lg/lg-25-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('118', '25', 'img/product/sm/sm-25-2.jpg', 'img/product/md/md-25-2.jpg', 'img/product/lg/lg-25-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('119', '25', 'img/product/sm/sm-25-3.jpg', 'img/product/md/md-25-3.jpg', 'img/product/lg/lg-25-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('120', '25', 'img/product/sm/sm-25-4.jpg', 'img/product/md/md-25-4.jpg', 'img/product/lg/lg-25-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('121', '25', 'img/product/sm/sm-25-5.jpg', 'img/product/md/md-25-5.jpg', 'img/product/lg/lg-25-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('122', '26', 'img/product/sm/sm-26-1.jpg', 'img/product/md/md-26-1.jpg', 'img/product/lg/lg-26-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('123', '26', 'img/product/sm/sm-26-2.jpg', 'img/product/md/md-26-2.jpg', 'img/product/lg/lg-26-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('124', '26', 'img/product/sm/sm-26-3.jpg', 'img/product/md/md-26-3.jpg', 'img/product/lg/lg-26-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('125', '26', 'img/product/sm/sm-26-4.jpg', 'img/product/md/md-26-4.jpg', 'img/product/lg/lg-26-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('126', '26', 'img/product/sm/sm-26-5.jpg', 'img/product/md/md-26-5.jpg', 'img/product/lg/lg-26-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('127', '27', 'img/product/sm/sm-27-1.jpg', 'img/product/md/md-27-1.jpg', 'img/product/lg/lg-27-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('128', '27', 'img/product/sm/sm-27-2.jpg', 'img/product/md/md-27-2.jpg', 'img/product/lg/lg-27-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('129', '27', 'img/product/sm/sm-27-3.jpg', 'img/product/md/md-27-3.jpg', 'img/product/lg/lg-27-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('130', '27', 'img/product/sm/sm-27-4.jpg', 'img/product/md/md-27-4.jpg', 'img/product/lg/lg-27-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('131', '27', 'img/product/sm/sm-27-5.jpg', 'img/product/md/md-27-5.jpg', 'img/product/lg/lg-27-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('132', '28', 'img/product/sm/sm-28-1.jpg', 'img/product/md/md-28-1.jpg', 'img/product/lg/lg-28-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('133', '28', 'img/product/sm/sm-28-2.jpg', 'img/product/md/md-28-2.jpg', 'img/product/lg/lg-28-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('134', '28', 'img/product/sm/sm-28-3.jpg', 'img/product/md/md-28-3.jpg', 'img/product/lg/lg-28-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('135', '28', 'img/product/sm/sm-28-4.jpg', 'img/product/md/md-28-4.jpg', 'img/product/lg/lg-28-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('136', '28', 'img/product/sm/sm-28-5.jpg', 'img/product/md/md-28-5.jpg', 'img/product/lg/lg-28-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('137', '29', 'img/product/sm/sm-29-1.jpg', 'img/product/md/md-29-1.jpg', 'img/product/lg/lg-29-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('138', '29', 'img/product/sm/sm-29-2.jpg', 'img/product/md/md-29-2.jpg', 'img/product/lg/lg-29-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('139', '29', 'img/product/sm/sm-29-3.jpg', 'img/product/md/md-29-3.jpg', 'img/product/lg/lg-29-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('140', '29', 'img/product/sm/sm-29-4.jpg', 'img/product/md/md-29-4.jpg', 'img/product/lg/lg-29-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('141', '29', 'img/product/sm/sm-29-5.jpg', 'img/product/md/md-29-5.jpg', 'img/product/lg/lg-29-5.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('142', '30', 'img/product/sm/sm-30-1.jpg', 'img/product/md/md-30-1.jpg', 'img/product/lg/lg-30-1.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('143', '30', 'img/product/sm/sm-30-2.jpg', 'img/product/md/md-30-2.jpg', 'img/product/lg/lg-30-2.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('144', '30', 'img/product/sm/sm-30-3.jpg', 'img/product/md/md-30-3.jpg', 'img/product/lg/lg-30-3.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('145', '30', 'img/product/sm/sm-30-4.jpg', 'img/product/md/md-30-4.jpg', 'img/product/lg/lg-30-4.jpg');
INSERT INTO `fz_laptop_pic` VALUES ('146', '30', 'img/product/sm/sm-30-5.jpg', 'img/product/md/md-30-5.jpg', 'img/product/lg/lg-30-5.jpg');





-- ----------------------------
-- Table structure for `fz_order`
-- ----------------------------
DROP TABLE IF EXISTS `fz_order`;
CREATE TABLE `fz_order` (
  `aid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `address_id` int(11) default NULL,
  `status` int(11) default NULL,
  `order_time` bigint(20) default NULL,
  `pay_time` bigint(20) default NULL,
  `deliver_time` bigint(20) default NULL,
  `received_time` bigint(20) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_order
-- ----------------------------

-- ----------------------------
-- Table structure for `fz_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `fz_order_detail`;
CREATE TABLE `fz_order_detail` (
  `did` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `fz_receiver_address`
-- ----------------------------
DROP TABLE IF EXISTS `fz_receiver_address`;
CREATE TABLE `fz_receiver_address` (
  `aid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `receiver` varchar(16) default NULL,
  `province` varchar(16) default NULL,
  `city` varchar(16) default NULL,
  `county` varchar(16) default NULL,
  `address` varchar(128) default NULL,
  `cellphone` varchar(16) default NULL,
  `fixedphone` varchar(16) default NULL,
  `postcode` char(6) default NULL,
  `tag` varchar(16) default NULL,
  `is_default` tinyint(1) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_receiver_address
-- ----------------------------

-- ----------------------------
-- Table structure for `fz_shoppingcart_item`
-- ----------------------------
DROP TABLE IF EXISTS `fz_shoppingcart_item`;
CREATE TABLE `fz_shoppingcart_item` (
  `iid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  `is_checked` tinyint(1) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_shoppingcart_item
-- ----------------------------
INSERT INTO `fz_shoppingcart_item` VALUES ('1', '10', '17', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('2', '11', '11', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('3', '12', '1', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('4', '13', '3', '9', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('5', '14', '1', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('13', '20', '1', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('14', '22', '17', '11', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('15', '20', '28', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('16', '25', '2', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('17', '3', '28', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('18', '3', '14', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('19', '28', '1', '99997', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('20', '29', '31', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('25', '3', '18', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('26', '32', '13', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('27', '32', '5', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('28', '32', '19', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('29', '33', '1', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('31', '3', '1', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('32', '35', '20', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('33', '2', '19', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('34', '39', '19', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('35', '1', '5', '15', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('36', '1', '28', '2', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('37', '1', '9', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('38', '45', '22', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('39', '46', '1', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('40', '48', '28', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('41', '1', '1', '6', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('42', '50', '28', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('43', '52', '28', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('44', '51', '5', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('45', '54', '1', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('46', '56', '28', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('47', '59', '5', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('48', '59', '9', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('49', '59', '19', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('50', '31', '1', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('51', '59', '1', '2', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('52', '60', '28', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('53', '46', '21', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('54', '1', '12', '2', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('55', '61', '5', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('56', '61', '6', '1', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('57', '70', '1', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('58', '71', '1', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('59', '1', '4', '3', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('60', '36', '17', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('61', '35', '17', '7', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('62', '35', '5', '13', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('63', '72', '9', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('64', '82', '1', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('65', '83', '17', '1', '1');
INSERT INTO `fz_shoppingcart_item` VALUES ('66', '35', '28', '4', '0');
INSERT INTO `fz_shoppingcart_item` VALUES ('67', '65', '40', '2', '0');

-- ----------------------------
-- Table structure for `fz_user`
-- ----------------------------
DROP TABLE IF EXISTS `fz_user`;
CREATE TABLE `fz_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fz_user
-- ----------------------------
INSERT INTO `fz_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0');
INSERT INTO `fz_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1');
INSERT INTO `fz_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `fz_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
INSERT INTO `fz_user` VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796', null, null, null);
INSERT INTO `fz_user` VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', null, null, null);
INSERT INTO `fz_user` VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', null, null, null);
INSERT INTO `fz_user` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null, null, null);
INSERT INTO `fz_user` VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', null, null, null);
INSERT INTO `fz_user` VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', null, null, null);
INSERT INTO `fz_user` VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null, null, null);
INSERT INTO `fz_user` VALUES ('12', 'siyongbo', '900427', '616188545@qq.com', '18447103998', null, null, null);
INSERT INTO `fz_user` VALUES ('13', 'qwerty', '123456', '1091256014@qq.com', '15617152367', null, null, null);
INSERT INTO `fz_user` VALUES ('14', 'dingziqiang', '456456', '996534706@qq.com', '15567502520', null, null, null);
INSERT INTO `fz_user` VALUES ('15', 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', null, null, null);
INSERT INTO `fz_user` VALUES ('16', 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', null, null, null);
INSERT INTO `fz_user` VALUES ('17', 'dddd', 'cxy930123', 'mail@xingyu1993.cn.1', '11111111111', null, null, null);
INSERT INTO `fz_user` VALUES ('18', 'bfs', 'cxy930123', 'mail@xingyu1993.cn.2', '22222222222', null, null, null);
INSERT INTO `fz_user` VALUES ('19', '字符', 'cxy930123', 'mail@xingyu1993.cn.3', '33333333333', null, null, null);
INSERT INTO `fz_user` VALUES ('20', '航航', 'wyh961130', '1419591926@qq.com', '15927204115', null, null, null);
INSERT INTO `fz_user` VALUES ('21', 'Jessy', 'ac210921', '123456@qq.com', '13523456789', null, null, null);
INSERT INTO `fz_user` VALUES ('22', 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', null, null, null);
INSERT INTO `fz_user` VALUES ('23', '查安军', '025520', '27514172112@qq.com', '18158899905', null, null, null);
INSERT INTO `fz_user` VALUES ('24', '123456', '123456', '123456@1.com', '13815668132', null, null, null);
INSERT INTO `fz_user` VALUES ('25', '1234', '111111', '734713428@qq.com', '18061920422', null, null, null);
INSERT INTO `fz_user` VALUES ('26', 'qwe12345', '123123', '1191769510@qq.com', '15234010643', null, null, null);
INSERT INTO `fz_user` VALUES ('27', '方式', '5124457', 'hxxcrocky@qq.com', '18826450879', null, null, null);
INSERT INTO `fz_user` VALUES ('28', 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', null, null, null);
INSERT INTO `fz_user` VALUES ('29', 'li999999', 'li999999', 'limingdir@163.com', '18557512341', null, null, null);
INSERT INTO `fz_user` VALUES ('30', '111111111111', '123456', '1057631733@qq.com', '15275106677', null, null, null);
INSERT INTO `fz_user` VALUES ('31', 'tom', '123456', 'tom@tedu.cn', '13801234568', null, null, null);
INSERT INTO `fz_user` VALUES ('32', 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', null, null, null);
INSERT INTO `fz_user` VALUES ('33', 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', null, null, null);
INSERT INTO `fz_user` VALUES ('34', 'yangtao', '123456', '250737026@qq.com', '18256953222', null, null, null);
INSERT INTO `fz_user` VALUES ('35', 'tarena', '123456', '783664829@qq.com', '17711625897', null, null, null);
INSERT INTO `fz_user` VALUES ('36', 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', null, 'lulu', '0');
INSERT INTO `fz_user` VALUES ('37', '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', null, null, null);
INSERT INTO `fz_user` VALUES ('38', '怪怪的', 'woaidoubi1.', '1179524522@qq.com', '13269195181', null, null, '0');
INSERT INTO `fz_user` VALUES ('39', 'Yeye ', '123456', '1610608370@qq.com', '15062394551', null, null, null);
INSERT INTO `fz_user` VALUES ('40', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `fz_user` VALUES ('41', '公告j', '127456', '1724564879@qq.com', '13156467891', null, null, null);
INSERT INTO `fz_user` VALUES ('42', '过渡', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `fz_user` VALUES ('43', 'l公告', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `fz_user` VALUES ('44', 'lsj', '123456', '11324564879@qq.com', '13156467891', null, null, null);
INSERT INTO `fz_user` VALUES ('45', '浮动', '958030', 'hjh@126.com', '17812344567', null, null, null);
INSERT INTO `fz_user` VALUES ('46', 'ewq', '123456', '1234567890@qq.com', '12345678909', null, null, null);
INSERT INTO `fz_user` VALUES ('47', 'pipi', '123456', '78@qq.com', '12367889993', null, null, null);
INSERT INTO `fz_user` VALUES ('48', 'Lovica', '309418727', '1684707021@qq.com', '18435130456', null, null, null);
INSERT INTO `fz_user` VALUES ('49', 'htt0908', '19920908', '418720482@qq.com', '15244691033', null, null, null);
INSERT INTO `fz_user` VALUES ('50', 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', null, null, null);
INSERT INTO `fz_user` VALUES ('51', 'zhong', '123456', '123456789@126.com', '13120211111', null, null, null);
INSERT INTO `fz_user` VALUES ('52', '金豆豆', '123456789', '1170363143@qq.com', '15738619097', null, null, null);
INSERT INTO `fz_user` VALUES ('53', 'wangjunfei', '123456', '396225880@qq.com', '13205935797', null, null, null);
INSERT INTO `fz_user` VALUES ('54', 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', null, null, null);
INSERT INTO `fz_user` VALUES ('55', 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', null, null, null);
INSERT INTO `fz_user` VALUES ('56', 'xiaoming123', '123456', '54646@qq.com', '13553688534', null, null, null);
INSERT INTO `fz_user` VALUES ('57', 'yuanzhi', '123456', '270096123@qq.com', '15962573639', null, null, null);
INSERT INTO `fz_user` VALUES ('58', 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', null, null, null);
INSERT INTO `fz_user` VALUES ('59', 'fengkuang', '123456', '113577976@qq.com', '18559132248', null, null, null);
INSERT INTO `fz_user` VALUES ('60', 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', null, null, null);
INSERT INTO `fz_user` VALUES ('61', 'linlei0001', '58874439', '876056078@qq.com', '13390922939', null, null, null);
INSERT INTO `fz_user` VALUES ('62', 'superman', '1314520', '904202099@qq.com', '12345678910', null, null, null);
INSERT INTO `fz_user` VALUES ('63', 'tom222', '123456', '1@163.com', '13456789012', null, null, null);
INSERT INTO `fz_user` VALUES ('64', 'tom1234', '123456', '2@163.com', '13423456789', null, null, null);
INSERT INTO `fz_user` VALUES ('65', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, '左天', '1');
INSERT INTO `fz_user` VALUES ('66', 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', null, null, null);
INSERT INTO `fz_user` VALUES ('67', '李白李白', '123456', '125365@163.com', '13986273022', null, null, null);
INSERT INTO `fz_user` VALUES ('68', 'dingdong', '123456', '15194898156@qq.com', '15112316516', null, null, null);
INSERT INTO `fz_user` VALUES ('69', 'wenjinhua', '236239', '461677613@qq.com', '13516574786', null, null, null);
INSERT INTO `fz_user` VALUES ('70', 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', null, null, null);
INSERT INTO `fz_user` VALUES ('71', 'zhangsan', 'add123456', 'add@qq.com', '12234324223', null, null, null);
INSERT INTO `fz_user` VALUES ('72', '高渐离', '123456', '935263676@qq.com', '18352501250', null, null, null);
INSERT INTO `fz_user` VALUES ('73', 'lifan', '123456', '18092034652@163.com', '18092933456', null, null, null);
INSERT INTO `fz_user` VALUES ('74', 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', null, null, null);
INSERT INTO `fz_user` VALUES ('75', 'tingDING', '123456', '12345678@qq.com', '13548525468', null, null, null);
INSERT INTO `fz_user` VALUES ('76', 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', null, null, null);
INSERT INTO `fz_user` VALUES ('77', 'weiyiwei', '123456', '598475405@qq.com', '15923741956', null, '韦祎伟', '1');
INSERT INTO `fz_user` VALUES ('78', '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', null, null, null);
INSERT INTO `fz_user` VALUES ('79', 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', null, null, null);
INSERT INTO `fz_user` VALUES ('80', 'loonchao', '123456', '850248873@qq.com', '13548729051', null, null, null);
INSERT INTO `fz_user` VALUES ('81', 'hushuang', '123456', '850248813@qq.com', '15802507525', null, null, null);
INSERT INTO `fz_user` VALUES ('82', 'test713', '2017713', '12458148@qq.com', '13596542654', null, null, null);
INSERT INTO `fz_user` VALUES ('83', 'fhr9588', '000009588', '111111111@qq.com', '12345666666', null, null, null);
INSERT INTO `fz_user` VALUES ('84', 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', null, null, null);
INSERT INTO `fz_user` VALUES ('85', 'tom10', '123456', '123@163.com', '12323456', null, null, null);
INSERT INTO `fz_user` VALUES ('86', '12121', '121212', '516898@qq.com', '15163222922', null, null, null);
INSERT INTO `fz_user` VALUES ('87', 'qwer', 'qwer123', '519808982@qq.com', '15163222923', null, null, null);
INSERT INTO `fz_user` VALUES ('88', '芳芳', '111111', '627265@qq.com', '17704622223', null, null, null);
INSERT INTO `fz_user` VALUES ('89', 'smm123456', '963852741', '974255093@qq.com', '15098807312', null, null, null);
INSERT INTO `fz_user` VALUES ('90', 'Wenhua.Li', 'libenka', 'wenhua.li@tedu.cn', '13912345678', null, null, null);
