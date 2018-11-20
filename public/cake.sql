#设置客户端语言
SET NAMES UTF8;
#放弃数据库(如果存在)cake
DROP DATABASE IF EXISTS cake;
#创建数据库cake
CREATE DATABASE cake CHARSET=UTF8;
#进入数据库
USE cake;
#创建用户表
CREATE TABLE cake_user(
  uid INT NOT NULL primary key auto_increment,
  uname varchar(32),
  upwd varchar(32),
  city varchar(64) default null,
  phone varchar(16) default null,
  gender INT  default null
);
#插入数据
INSERT INTO `cake_user` VALUES ('1', 'dindin', '123456', '北京市', '13511011000','0');
INSERT INTO `cake_user` VALUES ('2', 'dandan', '123456', '北京市', '13501234568','1');
INSERT INTO `cake_user` VALUES ('3', 'doudou', '123456', '北京市', '13501234569','1');
INSERT INTO `cake_user` VALUES ('4', 'yaiyai', '123456', '上海市', '13501234560','0');
INSERT INTO `cake_user` VALUES ('5', '111111', '111111', '上海市', '18357100796', null);
INSERT INTO `cake_user` VALUES ('6', 'ABCDEF', '123456', '上海市', '13538894495',null);
INSERT INTO `cake_user` VALUES ('7', 'mohkkk', '123456', '上海市', '13512312312',null);
INSERT INTO `cake_user` VALUES ('8', '121123', '512899', '湖北省', '13213389258',null);
INSERT INTO `cake_user` VALUES ('9', '555555', '555555', '湖北省', '13400000000',null);
INSERT INTO `cake_user` VALUES ('10', 'xuyong', '123456', '湖北省', '15525623622',null);
INSERT INTO `cake_user` VALUES ('11', 'admion', '930123', '湖北省', '13580510164',null);
INSERT INTO `cake_user` VALUES ('12', 'siyong', '900427', '河南省', '18447103998',null);
INSERT INTO `cake_user` VALUES ('13', 'qwerty', '123456', '河南省', '15617152367',null);
INSERT INTO `cake_user` VALUES ('14', 'tom123', '456456', '河南省', '15567502520',null);
INSERT INTO `cake_user` VALUES ('15', 'Anna12', '456123', '河南省', '18898405759',null);




#创建购物车表
CREATE TABLE cake_shoppingcart(
   cid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   uid INT,
   product_id INT,
   count INT
);
#插入数据
INSERT INTO cake_shoppingcart VALUES ('1', '10', '17', '1');
INSERT INTO cake_shoppingcart VALUES ('2', '5', '3', '5');
INSERT INTO cake_shoppingcart VALUES ('3', '45', '20', '4');
INSERT INTO cake_shoppingcart VALUES ('4', '1', '17', '1');
INSERT INTO cake_shoppingcart VALUES ('5', '1', '6', '7');
INSERT INTO cake_shoppingcart VALUES ('6', '1', '36', '5');
INSERT INTO cake_shoppingcart VALUES ('7', '2', '5', '3');
INSERT INTO cake_shoppingcart VALUES ('8', '2', '10', '5');
INSERT INTO cake_shoppingcart VALUES ('9', '3', '25', '4');
INSERT INTO cake_shoppingcart VALUES ('10', '3', '1', '10');
INSERT INTO cake_shoppingcart VALUES ('11', '3', '2', '6');
INSERT INTO cake_shoppingcart VALUES ('12', '3', '3', '2');
INSERT INTO cake_shoppingcart VALUES ('13', '4', '6', '1');
INSERT INTO cake_shoppingcart VALUES ('14', '4', '7', '1');
INSERT INTO cake_shoppingcart VALUES ('15', '5', '8', '1');
INSERT INTO cake_shoppingcart VALUES ('16', '5', '9', '1');
INSERT INTO cake_shoppingcart VALUES ('17', '5', '10', '1');
INSERT INTO cake_shoppingcart VALUES ('18', '6', '11', '2');
INSERT INTO cake_shoppingcart VALUES ('19', '7', '12', '1');
INSERT INTO cake_shoppingcart VALUES ('20', '8', '13', '1');


#创建轮播图表
CREATE TABLE cake_index_carousel(
   car_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   img varchar(128) default NULL,
   title varchar(64) default NULL,
   href varchar(128) default NULL
);
#插入数据
INSERT INTO cake_index_carousel VALUES(1,'img/lunbo/a.jpg','轮播广告商品1','null');
INSERT INTO cake_index_carousel VALUES(2,'img/lunbo/b.jpg','轮播广告商品2','null');
INSERT INTO cake_index_carousel VALUES(3,'img/lunbo/c.jpg','轮播广告商品3','null');
INSERT INTO cake_index_carousel VALUES(4,'img/lunbo/d.jpg','轮播广告商品4','null');


#创建首页商品信息
CREATE TABLE cake_index_product(
   pid INT NOT NULL PRIMARY KEY,
   title varchar(64),
   img varchar(128) default NULL,
   price decimal(6,2),
   href varchar(128) default NULL
);
#插入数据
INSERT INTO cake_index_product VALUES(16,'吉朵拉1','img/product/3-15.jpg',199.00,'details.html?pid=5');
INSERT INTO cake_index_product VALUES(55,'拿铁慕斯','img/product/3-19.jpg',199.00,'details.html?pid=6');
INSERT INTO cake_index_product VALUES(13,'吉拉朵3','img/product/3-14.jpg',209.00,'details.html?pid=10');
INSERT INTO cake_index_product VALUES(46,'爱情慕斯','img/product/3-18.jpg',209.00,'details.html?pid=12');
INSERT INTO cake_index_product VALUES(58,'摇滚黑森','img/product/nav3-3/3-3.3.jpg',209.00,'details.html?pid=16');
INSERT INTO cake_index_product VALUES(34,'香蕉可哩','img/product/nav3-3/3-3.4.jpg',209.00,'details.html?pid=18');
INSERT INTO cake_index_product VALUES(52,'空白格','img/product/nav3-3/3-3.1.jpg',209.00,'details.html?pid=19');
INSERT INTO cake_index_product VALUES(28,'赤名莉香','img/product/nav3-3/3-3.2.jpg',209.00,'details.html?pid=20');

#创建商品列表
CREATE TABLE cake_product(
   pid INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   family_id INT,
   title VARCHAR(128),
   subtitle VARCHAR(500),
   specs VARCHAR(64)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
#插入数据
INSERT INTO cake_product VALUES(1,1,'光·芝士/Shine·Cheese','现烤酥脆塔皮洒于表面，如光影晕晕 冻慕斯与焗芝士相糅合，浓郁又轻盈 微咸海盐拔高奶香风味，甜咸与醇香 光芒流出凝固，几度相逢心事无处藏','199.00元/磅');
INSERT INTO cake_product VALUES(null,1,'果果软乳酪/ Fruits Cheese Cake','细腻柔嫩轻乳酪蛋糕胚，一抿即化 少许法国淡奶油点缀出细腻与香醇 丰富的时令新鲜水果带来清新香甜 纯醇奶油芝士柔滑奶香，回味不息','179.00元/磅');
INSERT INTO cake_product VALUES(null,2,'不分梨/Pear Cake','精选脆而清甜的秋梨，汁水丰盈 法国淡奶油柔软包裹每一口新鲜 点缀桃胶，色如琥珀，心情明媚 秋意浓，秋风又起，久久不分梨','179.00元/磅');
INSERT INTO cake_product VALUES(null,2,'覆盆子香草/Cloud Cake','用一块微甜云朵，留住你心 效法云的密度和胸怀，姿态 像云一样的柔软/触感/味道 海盐的微咸讲述时间的故事','99.00元/磅');
INSERT INTO cake_product VALUES(null,2,'吉拉朵3/Gelato Cake3','-18℃，依赖牛乳，水果，奶油本身 凝结的意式浪漫，不是每种冰淇淋都是Gelato 享受，0 空气，0 齿感的冰雪消融 浓郁香气与凉意从味蕾渗入，抿一口，平衡体温','209.00元/磅');
INSERT INTO cake_product VALUES(null,2,'吉拉朵1/Gelato Cake1','-18℃，依赖牛乳，水果，奶油本身 凝结的意式浪漫，不是每种冰淇淋都是Gelato 享受，0 空气，0 齿感的冰雪消融 浓郁香气与凉意从味蕾渗入，抿一口，平衡体温','209.00元/磅');
INSERT INTO cake_product VALUES(null,2,'珍奶啵啵 流心蛋糕/BoBo Cake','巧克力戚风糕胚，松软醇厚 特调奶油的流心，浓郁香甜 乌黑晶透的蒟蒻，咀嚼筋糯 溶溶流心的上瘾，从心回味','109.00元/磅');
INSERT INTO cake_product VALUES(null,2,'流心·榴莲芒果/Lava·Durian Mango Cake','一半是泰国榴莲馥郁，一半澳芒香甜 热带水果的气息荡漾口中，回香不息 榴莲流心冰淇淋般的绵滑，入口即化 美国马斯卡邦与法国淡奶油香醇细腻','209.00元/磅');
INSERT INTO cake_product VALUES(null,2,'榴莲忘返/Unforgettable Durian','融汇新鲜榴莲果肉带来浓郁榴莲风味 选用英国蓝米吉淡奶油造就独特细腻 法芙娜巧克力，馥郁回味，丰富口感 香气层次丰富，更加清爽，仍意犹未尽','209.00元/磅');
INSERT INTO cake_product VALUES(null,2,'赤名莉香/Matcha Cream Cake','日本宇治抹茶的醇厚，或深或浅或回甘 香甜粉糯日本甘纳豆，丰富了蛋糕口感 法国淡奶油细腻香浓，更配柔软抹茶胚 如果你在哪里遇见Ta，请勇敢的去爱吧','199.00元/磅');
INSERT INTO cake_product VALUES(null,2,'奇异的坚果/Another Almond Cake','细腻奶油融入美国杏仁碎与法国黑巧克力，独特香甜 更柔软的蛋糕胚，夹着新西兰奇异果与柠檬汁渍香蕉 清新一点，绵密一点，淡淡坚果香，奇异的奶油蛋糕','179.00元/磅');
INSERT INTO cake_product VALUES(null,2,'香蕉可哩/Banana Cake','曲奇淡奶油和里面的香蕉果肉一样柔滑可爱 细腻绵软，碎香蕉肉顺滑','159.00元/磅');
INSERT INTO cake_product VALUES(null,2,'水果淡奶油/Fruits Cake','新鲜的时令水果带来自然清甜 法国乳脂淡奶油融汇细腻香醇 更简单的，却有最丰富的甜蜜','179.00元/磅');
INSERT INTO cake_product VALUES(null,2,'拿破仑/Millefeuille','拿破仑的盔甲，约瑟芬的柔情 将奶油和酥皮一起咬下，感受酥脆与柔腻浓郁','199.00元/磅');
INSERT INTO cake_product VALUES(null,3,'东湖的风 精酿啤酒慕斯/A Sad Cake','琥珀色酒冻清冽微苦，洋溢麦芽清香 法国淡奶油细腻绵柔，芝士浓郁香醇 精酿啤酒泡沫浸润蛋糕胚，轻柔发酵 冰凉，轻盈，微醺的苦，会醉的舌头','199.00元/磅');
INSERT INTO cake_product VALUES(null,3,'爱情慕斯/Is Love Cake','世界上有一种蛋糕，用奶油芝士与柠檬表达爱情 无法用酸甜来形容它的味道，但爱过就会懂得','179.00元/磅');
INSERT INTO cake_product VALUES(null,3,'百香果清芝士/Light Cake','不止是香，超过165种自然香气的百香果 不止酸甜，马斯卡邦与奶油芝士双份细腻 多重口味慕斯，复合自然清新的明媚风味 这一次，用蛋糕来定义“香甜”与“清新”','179.00元/磅');
INSERT INTO cake_product VALUES(null,4,'空白格/Dark and White Chocolate','香脆爆谷米在奶油里藏着惊喜 35%可可脂白巧克力的香醇依旧 50%可可脂黑巧克力的微苦绵绵 黑白巧克力，再一次遇见与缘分','199.00元/磅');
INSERT INTO cake_product VALUES(null,4,'拿铁慕斯/Flourless Chocolate Cake','法芙娜巧克力烘烤出入口即化无面粉蛋糕 创意搭配无糖天然乳脂淡奶油，清新细腻 66%可可脂微苦30%乳脂醇香，柔和淡醇 这是难以忘怀的巧克力，口感如雪般轻盈','199.00元/磅');
INSERT INTO cake_product VALUES(null,4,'摇滚黑森/Black Forest','法国法芙娜巧克力的浓情蜜意，馥郁香醇 纯粹巧克力浓香，回味法式酒渍樱桃的浓烈','179.00元/磅');
INSERT INTO cake_product VALUES(null,4,'巧克力淡奶油/Chocolate Fruits Cake','新鲜的时令水果带来自然清甜 法国乳脂淡奶油融汇细腻香醇 可可的醇和与微苦，香气迷人 更简单的，却有更丰富的甜蜜','179.00元/磅');

#商品图片表
CREATE TABLE cake_pic (
  pic int(11) NOT NULL auto_increment,
  lid int(11) default NULL,
  sm varchar(128) default NULL,
  lg varchar(128) default NULL,
  PRIMARY KEY  (`pic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
#插入数据
INSERT INTO cake_pic VALUES ('1', '1', 'img/product/sm/sm-1-1.jpg','img/product/lg/lg-1-1.jpg');
INSERT INTO cake_pic VALUES ('2', '1', 'img/product/sm/sm-1-2.jpg','img/product/lg/lg-1-2.jpg');
INSERT INTO cake_pic VALUES ('3', '1', 'img/product/sm/sm-1-3.jpg','img/product/lg/lg-1-3.jpg');
INSERT INTO cake_pic VALUES ('4', '2', 'img/product/sm/sm-2-1.jpg','img/product/lg/lg-2-1.jpg');
INSERT INTO cake_pic VALUES ('5', '2', 'img/product/sm/sm-2-2.jpg','img/product/lg/lg-2-2.jpg');
INSERT INTO cake_pic VALUES ('6', '2', 'img/product/sm/sm-2-3.jpg','img/product/lg/lg-2-3.jpg');
INSERT INTO cake_pic VALUES ('8', '3', 'img/product/sm/sm-3-1.jpg',"null");
INSERT INTO cake_pic VALUES ('9', '3', 'img/product/sm/sm-3-2.jpg',"null");
INSERT INTO cake_pic VALUES ('10', '3', 'img/product/sm/sm-3-3.jpg',"null");
INSERT INTO cake_pic VALUES ('12', '4', 'img/product/sm/sm-4-1.jpg','img/product/lg/lg-4-1.jpg');
INSERT INTO cake_pic VALUES ('13', '4', 'img/product/sm/sm-4-2.jpg','img/product/lg/lg-4-2.jpg');
INSERT INTO cake_pic VALUES ('14', '4', 'img/product/sm/sm-4-3.jpg','img/product/lg/lg-4-3.jpg');
INSERT INTO cake_pic VALUES ('15', '4', 'img/product/sm/sm-4-4.jpg','img/product/lg/lg-4-4.jpg');
INSERT INTO cake_pic VALUES ('17', '5', 'img/product/sm/sm-5-1.jpg','img/product/lg/lg-5-1.jpg');
INSERT INTO cake_pic VALUES ('18', '5', 'img/product/sm/sm-5-2.jpg','img/product/lg/lg-5-2.jpg');
INSERT INTO cake_pic VALUES ('19', '5', 'img/product/sm/sm-5-3.jpg','img/product/lg/lg-5-3.jpg');
INSERT INTO cake_pic VALUES ('22', '6', 'img/product/sm/sm-6-1.jpg','img/product/lg/lg-6-1.jpg');
INSERT INTO cake_pic VALUES ('23', '6', 'img/product/sm/sm-6-2.jpg','img/product/lg/lg-6-2.jpg');
INSERT INTO cake_pic VALUES ('24', '6', 'img/product/sm/sm-6-3.jpg','img/product/lg/lg-6-3.jpg');
INSERT INTO cake_pic VALUES ('27', '7', 'img/product/sm/sm-7-1.jpg','img/product/lg/lg-7-1.jpg');
INSERT INTO cake_pic VALUES ('28', '7', 'img/product/sm/sm-7-2.jpg','img/product/lg/lg-7-2.jpg');
INSERT INTO cake_pic VALUES ('29', '7', 'img/product/sm/sm-7-3.jpg','img/product/lg/lg-7-3.jpg');
INSERT INTO cake_pic VALUES ('32', '8', 'img/product/sm/sm-8-1.jpg','img/product/lg/lg-8-1.jpg');
INSERT INTO cake_pic VALUES ('33', '8', 'img/product/sm/sm-8-2.jpg','img/product/lg/lg-8-2.jpg');
INSERT INTO cake_pic VALUES ('34', '8', 'img/product/sm/sm-8-3.jpg','img/product/lg/lg-8-3.jpg');
INSERT INTO cake_pic VALUES ('37', '9', 'img/product/sm/sm-9-1.jpg','img/product/lg/lg-9-1.jpg');
INSERT INTO cake_pic VALUES ('38', '9', 'img/product/sm/sm-9-2.jpg','img/product/lg/lg-9-2.jpg');
INSERT INTO cake_pic VALUES ('39', '9', 'img/product/sm/sm-9-3.jpg','img/product/lg/lg-9-3.jpg');
INSERT INTO cake_pic VALUES ('42', '10', 'img/product/sm/sm-10-1.jpg','img/product/lg/lg-10-1.jpg');
INSERT INTO cake_pic VALUES ('43', '10', 'img/product/sm/sm-10-2.jpg','img/product/lg/lg-10-2.jpg');
INSERT INTO cake_pic VALUES ('44', '10', 'img/product/sm/sm-10-3.jpg','img/product/lg/lg-10-3.jpg');
INSERT INTO cake_pic VALUES ('47', '11', 'img/product/sm/sm-11-1.jpg','img/product/lg/lg-11-1.jpg');
INSERT INTO cake_pic VALUES ('48', '11', 'img/product/sm/sm-11-2.jpg','img/product/lg/lg-11-2.jpg');
INSERT INTO cake_pic VALUES ('49', '11', 'img/product/sm/sm-11-3.jpg','img/product/lg/lg-11-3.jpg');
INSERT INTO cake_pic VALUES ('50', '11', 'img/product/sm/sm-11-4.jpg','img/product/lg/lg-11-4.jpg');
INSERT INTO cake_pic VALUES ('52', '12', 'img/product/sm/sm-12-1.jpg','img/product/lg/lg-12-1.jpg');
INSERT INTO cake_pic VALUES ('53', '12', 'img/product/sm/sm-12-2.jpg','img/product/lg/lg-12-2.jpg');
INSERT INTO cake_pic VALUES ('54', '12', 'img/product/sm/sm-12-3.jpg','img/product/lg/lg-12-3.jpg');
INSERT INTO cake_pic VALUES ('57', '13', 'img/product/sm/sm-13-1.jpg','img/product/lg/lg-13-1.jpg');
INSERT INTO cake_pic VALUES ('58', '13', 'img/product/sm/sm-13-2.jpg','img/product/lg/lg-13-2.jpg');
INSERT INTO cake_pic VALUES ('59', '13', 'img/product/sm/sm-13-3.jpg','img/product/lg/lg-13-3.jpg');
INSERT INTO cake_pic VALUES ('62', '14', 'img/product/sm/sm-14-1.jpg','img/product/lg/lg-14-1.jpg');
INSERT INTO cake_pic VALUES ('63', '14', 'img/product/sm/sm-14-2.jpg','img/product/lg/lg-14-2.jpg');
INSERT INTO cake_pic VALUES ('64', '14', 'img/product/sm/sm-14-3.jpg','img/product/lg/lg-14-3.jpg');
INSERT INTO cake_pic VALUES ('65', '14', 'img/product/sm/sm-14-4.jpg','img/product/lg/lg-14-4.jpg');
INSERT INTO cake_pic VALUES ('66', '14', 'img/product/sm/sm-14-5.jpg','img/product/lg/lg-14-5.jpg');
INSERT INTO cake_pic VALUES ('67', '15', 'img/product/sm/sm-15-1.jpg','img/product/lg/lg-15-1.jpg');
INSERT INTO cake_pic VALUES ('68', '15', 'img/product/sm/sm-15-2.jpg','img/product/lg/lg-15-2.jpg');
INSERT INTO cake_pic VALUES ('69', '15', 'img/product/sm/sm-15-3.jpg','img/product/lg/lg-15-3.jpg');
INSERT INTO cake_pic VALUES ('72', '16', 'img/product/sm/sm-16-1.jpg','img/product/lg/lg-16-1.jpg');
INSERT INTO cake_pic VALUES ('73', '16', 'img/product/sm/sm-16-2.jpg','img/product/lg/lg-16-2.jpg');
INSERT INTO cake_pic VALUES ('74', '16', 'img/product/sm/sm-16-3.jpg','img/product/lg/lg-16-3.jpg');
INSERT INTO cake_pic VALUES ('75', '16', 'img/product/sm/sm-16-4.jpg','img/product/lg/lg-16-4.jpg');
INSERT INTO cake_pic VALUES ('77', '17', 'img/product/sm/sm-17-1.jpg','img/product/lg/lg-17-1.jpg');
INSERT INTO cake_pic VALUES ('78', '17', 'img/product/sm/sm-17-2.jpg','img/product/lg/lg-17-2.jpg');
INSERT INTO cake_pic VALUES ('79', '17', 'img/product/sm/sm-17-3.jpg','img/product/lg/lg-17-3.jpg');
INSERT INTO cake_pic VALUES ('80', '17', 'img/product/sm/sm-17-4.jpg','img/product/lg/lg-17-4.jpg');
INSERT INTO cake_pic VALUES ('82', '18', 'img/product/sm/sm-18-1.jpg','img/product/lg/lg-18-1.jpg');
INSERT INTO cake_pic VALUES ('83', '18', 'img/product/sm/sm-18-2.jpg','img/product/lg/lg-18-2.jpg');
INSERT INTO cake_pic VALUES ('84', '18', 'img/product/sm/sm-18-3.jpg','img/product/lg/lg-18-3.jpg');
INSERT INTO cake_pic VALUES ('87', '19', 'img/product/sm/sm-19-1.jpg','img/product/lg/lg-19-1.jpg');
INSERT INTO cake_pic VALUES ('88', '19', 'img/product/sm/sm-19-2.jpg','img/product/lg/lg-19-2.jpg');
INSERT INTO cake_pic VALUES ('92', '20', 'img/product/sm/sm-20-1.jpg','img/product/lg/lg-20-1.jpg');
INSERT INTO cake_pic VALUES ('93', '20', 'img/product/sm/sm-20-2.jpg','img/product/lg/lg-20-2.jpg');
INSERT INTO cake_pic VALUES ('94', '20', 'img/product/sm/sm-20-3.jpg','img/product/lg/lg-20-3.jpg');
INSERT INTO cake_pic VALUES ('97', '21', 'img/product/sm/sm-21-1.jpg','img/product/lg/lg-21-1.jpg');
INSERT INTO cake_pic VALUES ('98', '21', 'img/product/sm/sm-21-2.jpg','img/product/lg/lg-21-2.jpg');
INSERT INTO cake_pic VALUES ('99', '21', 'img/product/sm/sm-21-3.jpg','img/product/lg/lg-21-3.jpg');



# 商品尺寸表
CREATE TABLE cake_product_spce(
   sid  INT NOT NULL auto_increment primary key,
   pid  INT,
   title VARCHAR(128),
    price decimal(6,2),
   spec VARCHAR(64),
   size VARCHAR(50),
   people_num VARCHAR(50),
   tableware VARCHAR(50),
   hours VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO cake_product_spce VALUES(1,1,'光·芝士/Shine·Cheese',199.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,1,'光·芝士/Shine·Cheese',319.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含4套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,1,'光·芝士/Shine·Cheese',489.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含6套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,2,'果果软乳酪/ Fruits Cheese Cake',179.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,2,'果果软乳酪/ Fruits Cheese Cake',289.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,2,'果果软乳酪/ Fruits Cheese Cake',459.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,3,'不分梨/Pear Cake',179.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,3,'不分梨/Pear Cake',309.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含4套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,3,'不分梨/Pear Cake',459.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含6套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,4,'覆盆子香草/Cloud Cake',99.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,4,'覆盆子香草/Cloud Cake',199.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含4套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,4,'覆盆子香草/Cloud Cake',259.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含6套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,5,'吉拉朵3/Gelato Cake3',209.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,5,'吉拉朵3/Gelato Cake3',329.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含4套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,5,'吉拉朵3/Gelato Cake3',489.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含6套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,6,'吉拉朵1/Gelato Cake1',209.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,6,'吉拉朵1/Gelato Cake1',329.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含4套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,6,'吉拉朵1/Gelato Cake1',489.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含6套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,7,'珍奶啵啵 流心蛋糕/BoBo Cake',109.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,7,'珍奶啵啵 流心蛋糕/BoBo Cake',199.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,7,'珍奶啵啵 流心蛋糕/BoBo Cake',319.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,8,'流心·榴莲芒果/Lava·Durian Mango Cake',209.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,8,'流心·榴莲芒果/Lava·Durian Mango Cake',339.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,8,'流心·榴莲芒果/Lava·Durian Mango Cake',499.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,9,'榴莲忘返/Unforgettable Durian',209.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,9,'榴莲忘返/Unforgettable Durian',339.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,9,'榴莲忘返/Unforgettable Durian',499.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,10,'赤名莉香/Matcha Cream Cake',199.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,10,'赤名莉香/Matcha Cream Cake',319.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,10,'赤名莉香/Matcha Cream Cake',489.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,11,'奇异的坚果/Another Almond Cake',179.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,11,'奇异的坚果/Another Almond Cake',289.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,11,'奇异的坚果/Another Almond Cake',459.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含3套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,12,'香蕉可哩/Banana Cake',159.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,12,'香蕉可哩/Banana Cake',279.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,12,'香蕉可哩/Banana Cake',439.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含3套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,13,'水果淡奶油/Fruits Cake',179.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,13,'水果淡奶油/Fruits Cake',299.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,13,'水果淡奶油/Fruits Cake',459.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,14,'拿破仑/Millefeuille',199.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,14,'拿破仑/Millefeuille',319.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,14,'拿破仑/Millefeuille',489.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,15,'东湖的风 精酿啤酒慕斯/A Sad Cake',199.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,15,'东湖的风 精酿啤酒慕斯/A Sad Cake',319.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,15,'东湖的风 精酿啤酒慕斯/A Sad Cake',489.00,'4磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,16,'爱情慕斯/Is Love Cake',179.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,16,'爱情慕斯/Is Love Cake',299.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,16,'爱情慕斯/Is Love Cake',459.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,17,'百香果清芝士/Light Cake',179.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,17,'百香果清芝士/Light Cake',299.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,17,'百香果清芝士/Light Cake',459.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,18,'空白格/Dark and White Chocolate',199.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,18,'空白格/Dark and White Chocolate',319.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,18,'空白格/Dark and White Chocolate',489.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,19,'拿铁慕斯/Flourless Chocolate Cake',199.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,19,'拿铁慕斯/Flourless Chocolate Cake',319.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,19,'拿铁慕斯/Flourless Chocolate Cake',489.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,20,'摇滚黑森/Black Forest',179.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,20,'摇滚黑森/Black Forest',289.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,20,'摇滚黑森/Black Forest',459.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');
INSERT INTO cake_product_spce VALUES(null,21,'巧克力淡奶油/Chocolate Fruits Cake',179.00,'1磅(约454g)','13*13cm','适合3-4个人分享','含2套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,21,'巧克力淡奶油/Chocolate Fruits Cake',289.00,'2磅(约908g)','16*16cm','适合6-7个人分享','含3套餐具','提前6小时预定');
INSERT INTO cake_product_spce VALUES(null,21,'巧克力淡奶油/Chocolate Fruits Cake',459.00,'3磅(约1362g)','18*18cm','适合8-9个人分享','含4套餐具','提前12小时预定');

#商品类别表
CREATE TABLE cake_family(
   family_id INT,
   fname VARCHAR(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO cake_family VALUES(1,'乳酪蛋糕');
INSERT INTO cake_family VALUES(2,'奶油蛋糕');
INSERT INTO cake_family VALUES(3,'慕斯蛋糕');
INSERT INTO cake_family VALUES(4,'巧克力蛋糕');















