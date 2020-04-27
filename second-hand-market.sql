/*
Navicat MySQL Data Transfer

Source Server         : text01
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : bsc

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-04-27 12:30:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bookpage
-- ----------------------------
DROP TABLE IF EXISTS `bookpage`;
CREATE TABLE `bookpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookpage
-- ----------------------------
INSERT INTO `bookpage` VALUES ('1', '受益一生书全套10册墨菲定律正版 全套单本狼道鬼谷子全集方与圆羊皮卷人性的弱点莫', '54.50', '100+', '【二手9成新】', '../images/bookPage/1.jpg');
INSERT INTO `bookpage` VALUES ('2', '二手人性的弱点全集 [美] 戴尔·卡内基', '6.00', '100+', '【二手9成新】', '../images/bookPage/2.jpg');
INSERT INTO `bookpage` VALUES ('3', '二手红与黑 (法)司扬达,董红钧 长江文艺出版社', '7.92', '200+', '【二手8成新】', '../images/bookPage/3.jpg');
INSERT INTO `bookpage` VALUES ('4', '解忧杂货店,[日]东野圭吾,南海出版社', '9.90', '100+', '【二手9成新】', '../images/bookPage/4.jpg');
INSERT INTO `bookpage` VALUES ('5', '正版 中国古典文学四大名著 三国演义 水浒传 西游记 红楼梦 语文新课标', '40.80', '10+', '【准新品】', '../images/bookPage/5.jpg');
INSERT INTO `bookpage` VALUES ('6', '边城 汇校本 沈从文,金宏宇,曹青山 汇校 长江文艺出版社', '5.20', '50+', '【准新品】', '../images/bookPage/6.jpg');
INSERT INTO `bookpage` VALUES ('7', 'Java从入门到精通(第3版)(附) 明日科技 清华大学出', '10.00', '20+', '【准新品】', '../images/bookPage/7.jpg');
INSERT INTO `bookpage` VALUES ('8', '思路决定出路 宿春礼 中国和平出版社', '6.88', '100+', '【二手9成新】', '../images/bookPage/8.jpg');
INSERT INTO `bookpage` VALUES ('9', '正版旧书 八五成新 知行合一王阳明(1472-1529)', '10.00', '10+', '【二手9成新】', '../images/bookPage/9.jpg');
INSERT INTO `bookpage` VALUES ('10', '三体(刘慈欣代表作，亚洲首部雨果奖获奖作品！) 刘慈欣 重庆出版社', '6.90', '10+', '【二手9成新】', '../images/bookPage/10.jpg');
INSERT INTO `bookpage` VALUES ('11', '百年孤独,[哥伦比亚]加西亚·马尔克斯,南海出版公司', '15.00', '80+', '【准新品】', '../images/bookPage/11.jpg');
INSERT INTO `bookpage` VALUES ('12', '阿弥陀佛么么哒 大冰 湖南文艺出版社', '9.90', '100+', '【二手9成新】', '../images/bookPage/12.jpg');

-- ----------------------------
-- Table structure for cartpage
-- ----------------------------
DROP TABLE IF EXISTS `cartpage`;
CREATE TABLE `cartpage` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `number` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartpage
-- ----------------------------
INSERT INTO `cartpage` VALUES ('英特尔I7级六核独显1060 水冷散热直播吃鸡游戏商务办公整机DIY组装二手 台式机 套餐五：i9级八核1060显卡16G水冷爆款 主机+显示器', '70', '../images/computerPage/2.jpg', '3099.00', '2.5万+', '1');
INSERT INTO `cartpage` VALUES ('古驰GUCCI Marmont gg super mini nano单肩斜挎链条女士包 黑色', '68', '../images/luxuryPage/1.png', '4800.00', '30+', '1');
INSERT INTO `cartpage` VALUES ('英特尔i7级游戏二手台式机 8G独显吃鸡GTX1060家用办公主机设计渲染组装机 三：i7级六核/性能独显/整机 送全新IPS电竞显示器', '69', '../images/computerPage/1.jpg', '1898.00', '3600+', '1');
INSERT INTO `cartpage` VALUES ('路易威登 lv女包 老花 手提包单肩波士顿包二手女包 二手奢侈品', '67', '../images/luxuryPage/2.jpg', '10500.00', '10+', '1');
INSERT INTO `cartpage` VALUES ('LV路易威登 Speedy30 老花经典百搭帆布手提包 女士包袋 二手正品', '66', '../images/luxuryPage/3.png', '4600.00', '20+', '1');
INSERT INTO `cartpage` VALUES ('LV路易威登 Speedy30 老花经典百搭帆布手提包 女士包袋 二手正品', '65', '../images/luxuryPage/3.png', '4600.00', '20+', '1');

-- ----------------------------
-- Table structure for collectpage
-- ----------------------------
DROP TABLE IF EXISTS `collectpage`;
CREATE TABLE `collectpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collectpage
-- ----------------------------
INSERT INTO `collectpage` VALUES ('2', '华为（HUAWEI）P8 青春版 真八核CPU 安卓手机 移动4G联通2G 黑色（系统不要升级', '299.00', '1.2万+', '../images/phonePage/1.jpg');
INSERT INTO `collectpage` VALUES ('3', 'Apple 苹果6  iPhone 6 二手手机 国行 全网通 金色 16G 全网通4G', '619.00', '1000+', '../images/phonePage/3.jpg');
INSERT INTO `collectpage` VALUES ('5', 'Apple 苹果6  iPhone 6 二手手机 国行 全网通 金色 16G 全网通4G', '619.00', '1000+', '../images/phonePage/3.jpg');
INSERT INTO `collectpage` VALUES ('6', '华为M2 801W揽阅8英寸pad安卓平板电脑 准新机8英寸金 3G/32GBWIFI官保365天 标配', '799.00', '200+', '../images/ipadPage/8.jpg');
INSERT INTO `collectpage` VALUES ('7', 'Apple/苹果 iPad5/6 9.7英寸 Air1/2 二手平板电脑 iPad5 16G WiFi版 银色+普通充电套装', '1099.00', '1500+', '../images/ipadPage/1.png');
INSERT INTO `collectpage` VALUES ('13', '英特尔I7级六核独显1060 水冷散热直播吃鸡游戏商务办公整机DIY组装二手 台式机 套餐五：i9级八核1060显卡16G水冷爆款 主机+显示器', '3099.00', '2.5万+', '../images/computerPage/2.jpg');
INSERT INTO `collectpage` VALUES ('17', '佳能/CANON 半画幅入门单反套机 数码单反相机  佳能600D 佳能550D/18-55 IS 套机 (9新） 官方标配', '1449.00', '100+', '../images/digicamPage/11.jpg');
INSERT INTO `collectpage` VALUES ('21', '158L小型双门冰箱 小型迷你 冷藏冷冻 静音节能 办公室 冰箱 宿舍家用二手 冰箱', '768.00', '20+', '../images/home-appPage/4.jpg');
INSERT INTO `collectpage` VALUES ('30', '小米（MI）wifi放大器pro wifi信号增强器300M 家用路由器无线信号增强器强电版', '143.28', '33000', '../images/time-shoppingPage/2.jpg');
INSERT INTO `collectpage` VALUES ('36', '联想（Lenovo）小新14青春版锐龙2019款R5笔记本电脑超薄本超级本学生用轻薄女生商务办公游戏', '3199.00', '1.9万+', '../images/hot-shoppingPage/3.jpg');

-- ----------------------------
-- Table structure for computerpage
-- ----------------------------
DROP TABLE IF EXISTS `computerpage`;
CREATE TABLE `computerpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of computerpage
-- ----------------------------
INSERT INTO `computerpage` VALUES ('1', '英特尔i7级游戏二手台式机 8G独显吃鸡GTX1060家用办公主机设计渲染组装机 三：i7级六核/性能独显/整机 送全新IPS电竞显示器', '1898.00', '3600+', '【二手9成新】', '../images/computerPage/1.jpg');
INSERT INTO `computerpage` VALUES ('2', '英特尔I7级六核独显1060 水冷散热直播吃鸡游戏商务办公整机DIY组装二手 台式机 套餐五：i9级八核1060显卡16G水冷爆款 主机+显示器', '3099.00', '2.5万+', '【二手9成新】', '../images/computerPage/2.jpg');
INSERT INTO `computerpage` VALUES ('3', '联想（Thinkpad）X230 12.5英寸 轻薄便携商务办公二手笔记本 ibm 2X230 i5 8G 120G固态 热卖款', '1399.00', '1.6万+', '【二手8成新】', '../images/computerPage/3.jpg');
INSERT INTO `computerpage` VALUES ('4', '酷睿i5/i7八核独显GTX1060网吧直播吃鸡LOL游戏组装机台式办公电脑 DIY主机 套餐一 单主机真i5+游戏独显【推荐】', '1399.00', '1.5万+', '【二手9成新】', '../images/computerPage/4.jpg');
INSERT INTO `computerpage` VALUES ('5', '英特尔i7级游戏电脑8G独显吃鸡 GTX1060家用办公主机设计渲染组装机 一：秒杀款8G/500G整机 送全新IPS电竞显示器', '1198.00', '3600+', '【二手9成新】', '../images/computerPage/5.jpg');
INSERT INTO `computerpage` VALUES ('6', '全套酷睿i7升六核游戏台式机电脑  i5吃鸡商务家用网吧主机 1060高配水冷组装整机 套餐一：X4 740/750独显/8G四核家用娱乐', '1499.00', '5600+', '【二手9成新】', '../images/computerPage/6.jpg');
INSERT INTO `computerpage` VALUES ('7', '英特尔i7级游戏电脑8G独显吃鸡 GTX1060家用办公主机设计渲染组装机 六：i7级六核/GTX960独显/整机 送全新IPS电竞显示器', '2398.00', '3600+', '【二手9成新】', '../images/computerPage/7.jpg');
INSERT INTO `computerpage` VALUES ('8', '联想 T430 笔记本电脑 T420 410  X220 X201  吃鸡游戏本LOL X200 双核 2G 160G 超薄经典', '477.00', '4300+', '【二手9成新】', '../images/computerPage/8.jpg');
INSERT INTO `computerpage` VALUES ('9', '全套酷睿i7升六核游戏台式机电脑 i5吃鸡商务家用网吧主机 1060高配水冷组装整机 套餐八：i9升八核/1060 6G/16G高效吃鸡', '3299.00', '5600+', '【二手9成新】', '../images/computerPage/9.jpg');
INSERT INTO `computerpage` VALUES ('10', '英特尔I7级六核独显1060 水冷散热直播吃鸡游戏商务办公整机DIY组装二手台式机 套餐六：i9级八核GTX1060显卡/32G大内存 主机+显示器', '3599.00', '2.6万', '【二手9成新】', '../images/computerPage/10.jpg');
INSERT INTO `computerpage` VALUES ('11', '二手电脑  i5/i7高配电竞网吧吃鸡N卡独显游戏主机 直播家用diy组装机 套餐五i5处理器 1060独显', '2699.00', '1600+', '【二手9成新】', '../images/computerPage/11.png');
INSERT INTO `computerpage` VALUES ('12', '联想ThinkPad二手电脑 X240/X250/X270/X280便携商务办公本 十 X240 i5-4200 8G 240G固态', '1439.00', '7400+', '【二手9成新】', '../images/computerPage/12.jpg');

-- ----------------------------
-- Table structure for digicampage
-- ----------------------------
DROP TABLE IF EXISTS `digicampage`;
CREATE TABLE `digicampage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `head` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of digicampage
-- ----------------------------
INSERT INTO `digicampage` VALUES ('1', '佳能600d 550d 650d 700D单机数码单反相机 18-135套机 官方标配 佳能500d含18-55II', '1099.00', '【二手9成新】', '50+', '../images/digicamPage/1.jpg');
INSERT INTO `digicampage` VALUES ('2', '佳能/Canon 700D 650D 600D 550D 入门单反相机  单机/套机 600D+18-55日常镜头【套机】 95新', '1899.00', '【二手9成新】', '900+', '../images/digicamPage/2.jpg');
INSERT INTO `digicampage` VALUES ('3', '佳能80D/70D单反相机 套机高清数码翻转屏入门级旅游便携摄影家用60D 官方标配 佳能60D单机身', '1599.00', '【二手8成新】', '30+', '../images/digicamPage/3.jpg');
INSERT INTO `digicampage` VALUES ('4', '佳能/Canon 半画幅入门单反套机 数码单反 佳能100D 佳能1000D/18-55 IS 套机 官方标配', '999.00', '【二手9成新】', '80+', '../images/digicamPage/4.jpg');
INSERT INTO `digicampage` VALUES ('5', '佳能600d 550d 650d 700D单机数码单反相机 18-135套机 佳能500d含18-55II 官方标配', '1150.00', '【二手9成新】', '200+', '../images/digicamPage/5.jpg');
INSERT INTO `digicampage` VALUES ('6', '佳能5d2 5d3 5d4 6d2高端套机单反相机 高清旅游专业级摄影全画幅 成色优质 官方标配 5d2无镜头配置', '2899.00', '【二手9成新】', '100+', '../images/digicamPage/6.jpg');
INSERT INTO `digicampage` VALUES ('7', 'NIKON尼康D3200 D3400 D5200 D5300单反相机 入门级高清旅游数码 官方标配 95新D3100含18-55防抖镜头', '1150.00', '【二手9成新】', '100+', '../images/digicamPage/7.jpg');
INSERT INTO `digicampage` VALUES ('8', '佳能/Canon 600D 650D 700D 750D 18-55数码单反相机 套机 600D（18-55IS II）', '1649.00', '【二手9成新】', '1700+', '../images/digicamPage/8.jpg');
INSERT INTO `digicampage` VALUES ('9', '佳能/Canon 70D 60d 80D半画幅家用旅游高清数码vlog单反照相机 佳能70D+18-135STM 买套餐立减60 标配', '3950.00', '【二手9成新】', '600+', '../images/digicamPage/9.jpg');
INSERT INTO `digicampage` VALUES ('10', '佳能/Canon 700D 650D 600D 550D 入门单反相机  单机/套机 700D+18-55日常镜头【套机】 95新', '2459.00', '【二手9成新】', '900+', '../images/digicamPage/10.jpg');
INSERT INTO `digicampage` VALUES ('11', '佳能/CANON 半画幅入门单反套机 数码单反相机  佳能600D 佳能550D/18-55 IS 套机 (9新） 官方标配', '1449.00', '【二手9成新】', '100+', '../images/digicamPage/11.jpg');
INSERT INTO `digicampage` VALUES ('12', '佳能/Canon 5D mark III 5D4套机全画幅单反数码相机5D2单机身 9成新特价5D2单机身 官方标配', '2799.00', '【二手9成新】', '20+', '../images/digicamPage/12.jpg');

-- ----------------------------
-- Table structure for goodpage
-- ----------------------------
DROP TABLE IF EXISTS `goodpage`;
CREATE TABLE `goodpage` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `src` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodpage
-- ----------------------------
INSERT INTO `goodpage` VALUES ('0', '华为（HUAWEI）P8 青春版 真八核CPU 安卓手机 移动4G联通2G 黑色（系统不要升级', '299.00', '../images/phonePage/1.jpg', '1.2万+', '【二手9成新】');

-- ----------------------------
-- Table structure for home_apppage
-- ----------------------------
DROP TABLE IF EXISTS `home_apppage`;
CREATE TABLE `home_apppage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of home_apppage
-- ----------------------------
INSERT INTO `home_apppage` VALUES ('1', '夏普 48/55/58/65英寸 4K智能WiF液晶平板电视机 9新 48S3A-48英寸 屏幕划痕/暗线 挂架版', '【二手9成新】', '1389.00', '200+', '../images/home-appPage/1.jpg');
INSERT INTO `home_apppage` VALUES ('2', '三洋（SANYO）WT7455M0S 7公斤 全自动波轮洗衣机 原厂电机', '【二手9成新】', '799.00', '200+', '../images/home-appPage/2.png');
INSERT INTO `home_apppage` VALUES ('3', '美的（Midea）波轮洗衣机样品机 全自动家用8公斤大容量MB80V331 未开封', '【二手8成新】', '899.00', '200+', '../images/home-appPage/3.jpg');
INSERT INTO `home_apppage` VALUES ('4', '158L小型双门冰箱 小型迷你 冷藏冷冻 静音节能 办公室 冰箱 宿舍家用二手 冰箱', '【二手9成新】', '768.00', '20+', '../images/home-appPage/4.jpg');
INSERT INTO `home_apppage` VALUES ('5', '美菱（MEILING）法式多门冰箱变频风冷无霜M鲜生金棕色BCD-470WUPBA', '【准新品】', '4699.00', '9', '../images/home-appPage/5.jpg');
INSERT INTO `home_apppage` VALUES ('6', '美的流光咖 541升对开门冰箱变频一级能效铂金净味智能BCD-541WKPZM(E）', '【准新品】', '2799.00', '30+', '../images/home-appPage/6.jpg');
INSERT INTO `home_apppage` VALUES ('7', '容声601升BCD-601WKS1HPG美式三门对开门冰箱变频风冷无霜美式多门电冰箱 BCD-601WKS1HPG', '【准新品】', '6699.00', '60+', '../images/home-appPage/7.jpg');
INSERT INTO `home_apppage` VALUES ('8', '差价链接，补邮费、换货差价专用，虚拟品，单拍不发货 补差价专用 补差100', '【二手9成新】', '100.00', '60+', '../images/home-appPage/8.jpg');
INSERT INTO `home_apppage` VALUES ('9', 'Haier/海尔BCD-331WDGQ多门变频无霜331升四门 冰箱 玻璃面板 一级', '【二手9成新】', '3110.00', '20+', '../images/home-appPage/9.jpg');
INSERT INTO `home_apppage` VALUES ('10', '长虹 55英寸 电视机 HDR 曲面 超高清 安卓智能 网络LED液晶电视 55E9600 55E9600  55英寸', '【二手9成新】', '2399.00', '8', '../images/home-appPage/10.jpg');
INSERT INTO `home_apppage` VALUES ('11', '夏普（SHARP）LCD-60TX6100A 60英寸 4K超高清智能网络液晶平板电视 95新-坐装版', '【准新品】', '2899.00', '30+', '../images/home-appPage/11.jpg');
INSERT INTO `home_apppage` VALUES ('12', '三洋（SANYO）7公斤预约洗 全自动波轮洗衣机XQB70-S750Z', '【二手9成新】', '799.00', '100+', '../images/home-appPage/12.png');

-- ----------------------------
-- Table structure for hot_shoppingpage
-- ----------------------------
DROP TABLE IF EXISTS `hot_shoppingpage`;
CREATE TABLE `hot_shoppingpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hot_shoppingpage
-- ----------------------------
INSERT INTO `hot_shoppingpage` VALUES ('1', '三八妇女节礼物送妈妈实用时尚真丝丝巾长巾四季围巾披肩送中年长辈送丈母娘送婆婆用心礼物 月上海棠（高档款）', '【当季热卖】', '188.00', '400+', '../images/hot-shoppingPage/1.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('2', '款连衣裙春秋新品女装时尚长袖高腰系带气质显瘦拼接裙子09343 黑色 L', '【当季热卖】', '398.00', '200+', '../images/hot-shoppingPage/2.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('3', '联想（Lenovo）小新14青春版锐龙2019款R5笔记本电脑超薄本超级本学生用轻薄女生商务办公游戏', '【当季热卖】', '3199.00', '1.9万+', '../images/hot-shoppingPage/3.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('4', '简约舒适长T男HNTAD3R060A 黑色镶拼60 175/92A/L', '【当季热卖】', '198.00', '300+', '../images/hot-shoppingPage/4.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('5', '款夏装新品时尚短袖T恤很仙的网纱半身裙两件套套装裙11945 黑色 M', '【当季热卖】', '368.00', '90+', '../images/hot-shoppingPage/5.png');
INSERT INTO `hot_shoppingpage` VALUES ('6', '三基础套头舒适长T男HNTAD3R056A 藏青56 180/96A/XL', '【当季热卖】', '138.00', '800+', '../images/hot-shoppingPage/6.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('7', '三八妇女节礼物送员工女友闺蜜生日礼物女生女朋友实用创意品网红少女心ins风新婚伴娘伴手礼加湿器迷你 粉-萌宠加湿器+M杯+公仔+灯带礼盒', '【当季热卖】', '119.00', '100+', '../images/hot-shoppingPage/7.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('8', '款连衣裙新品女装时尚通勤针织上衣修身条纹半身裙两件套套装裙09179 黑色 XXL', '【当季热卖】', '388.00', '700+', '../images/hot-shoppingPage/8.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('9', '联想（Lenovo）小新Air14锐龙版R7笔记本电脑超薄本超级本学生用轻薄女生商务办公游戏超极本', '【当季热卖】', '3799.00', '2.4万+', '../images/hot-shoppingPage/9.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('10', '耐磨运动鞋男HSXDD3E151A 黑色F1 42', '【当季热卖】', '219.00', '100+', '../images/hot-shoppingPage/10.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('11', '（加绒可选）【刀锋战士6代 轻奢名品】 私人定制手工3D高弹科技缓震透气慢跑鞋', '【当季热卖】', '168.00', '2.9万+', '../images/hot-shoppingPage/11.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('12', '连衣裙新品时尚欧美七分袖娃娃领修身气质一步裙子2170 蓝色 XL', '【当季热卖】', '338.00', '900+', '../images/hot-shoppingPage/12.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('13', '龍鳯騰新年流行女装2019冬春节过年红色喜庆本命年衣服时尚显瘦连衣裙子 杏色 M', '【当季热卖】', '167.00', '0', '../images/hot-shoppingPage/13.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('14', '款针织连衣裙新品春秋女装时尚毛衣裙子女神范两件套套装裙09537 黄色 L', '【当季热卖】', '338.00', '60+', '../images/hot-shoppingPage/14.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('15', '海青蓝女装雪纺连衣裙新品春秋', '【当季热卖】', '368.00', '40+', '../images/hot-shoppingPage/15.jpg');
INSERT INTO `hot_shoppingpage` VALUES ('16', '三海青蓝女装裙子女夏新款洋气休闲时尚拼接印花T恤女半身裙两件套套装裙', '【当季热卖】', '378.00', '20+', '../images/hot-shoppingPage/16.jpg');

-- ----------------------------
-- Table structure for ipadpage
-- ----------------------------
DROP TABLE IF EXISTS `ipadpage`;
CREATE TABLE `ipadpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipadpage
-- ----------------------------
INSERT INTO `ipadpage` VALUES ('1', 'Apple/苹果 iPad5/6 9.7英寸 Air1/2 二手平板电脑 iPad5 16G WiFi版 银色+普通充电套装', '【二手9成新】', '1099.00', '1500+', '../images/ipadPage/1.png');
INSERT INTO `ipadpage` VALUES ('2', '苹果平板电脑 iPad迷你 Mini1/2/3/4/5/2017/2018款 二手平板 银白色 Mini1 16G WiFi版+充电套装', '【二手9成新】', '499.00', '1万+', '../images/ipadPage/2.png');
INSERT INTO `ipadpage` VALUES ('3', '苹果平板 Apple iPad2二手平板电脑 9.7英寸 银色 32G  WiFi版', '【二手8成新】', '528.00', '1600+', '../images/ipadPage/3.jpg');
INSERT INTO `ipadpage` VALUES ('4', 'Apple/苹果 iPad 2018 2018款 二手平板 ipad 平板电脑 平板 2018款 99新 国行（颜色备注） 128G WIFI版 过保＋壳膜 原装充电器', '【二手9成新】', '2558.00', '3800+', '../images/ipadPage/4.png');
INSERT INTO `ipadpage` VALUES ('5', '苹果平板电脑Apple iPadmini/iPad mini2/3/4/5迷你7.9寸 银色 ipad mini1 16G WiFi版+充电套装', '【二手9成新】', '496.00', '1300+', '../images/ipadPage/5.jpg');
INSERT INTO `ipadpage` VALUES ('6', '微软（Microsoft）Surface Pro 3/4/5笔记本二合一平板电脑 Pro3 i5 4G+128G不带键盘', '【二手9成新】', '2198.00', '1500+', '../images/ipadPage/6.jpg');
INSERT INTO `ipadpage` VALUES ('7', 'Apple 10.5iPad/2018新款/mini5 air3二手平板电脑分期免息 金色 2018款 128G WIFI版+壳膜充电器', '【二手9成新】', '2599.00', '900+', '../images/ipadPage/7.png');
INSERT INTO `ipadpage` VALUES ('8', '华为M2 801W揽阅8英寸pad安卓平板电脑 准新机8英寸金 3G/32GBWIFI官保365天 标配', '【准新机】', '799.00', '200+', '../images/ipadPage/8.jpg');
INSERT INTO `ipadpage` VALUES ('9', 'Apple/苹果 iPad Mini2/1/3 7.9英寸二手平板 电脑 mini2 16G  WiFi版+普通充电套装', '【二手9成新】', '799.00', '2700+', '../images/ipadPage/9.png');
INSERT INTO `ipadpage` VALUES ('10', '小米（MI）小米平板 1代 7.9寸屏 二手平板电脑 白色 16G WIFI版', '【二手9成新】', '413.00', '600+', '../images/ipadPage/10.png');
INSERT INTO `ipadpage` VALUES ('11', 'Apple/苹果 iPad 2017 平板电脑 ipad平板 2017款 99新 （颜色下单备注） 32G WIF版本 +壳膜 原装充电器', '【二手9成新】', '1688.00', '2100+', '../images/ipadPage/11.png');
INSERT INTO `ipadpage` VALUES ('12', '联想YOGA BOOK Win10 10.1寸二合一平板笔记本电脑商务手绘超薄轻便 黑色 Androi版-4G版-4G 64G', '【二手9成新】', '2098.00', '40+', '../images/ipadPage/12.jpg');

-- ----------------------------
-- Table structure for luxurypage
-- ----------------------------
DROP TABLE IF EXISTS `luxurypage`;
CREATE TABLE `luxurypage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of luxurypage
-- ----------------------------
INSERT INTO `luxurypage` VALUES ('1', '古驰GUCCI Marmont gg super mini nano单肩斜挎链条女士包 黑色', '【二手9成新】', '4800.00', '30+', '../images/luxuryPage/1.png');
INSERT INTO `luxurypage` VALUES ('2', '路易威登 lv女包 老花 手提包单肩波士顿包二手女包 二手奢侈品', '【二手9成新】', '10500.00', '10+', '../images/luxuryPage/2.jpg');
INSERT INTO `luxurypage` VALUES ('3', 'LV路易威登 Speedy30 老花经典百搭帆布手提包 女士包袋 二手正品', '【二手8成新】', '4600.00', '20+', '../images/luxuryPage/3.png');
INSERT INTO `luxurypage` VALUES ('4', '皮革单肩斜挎手提包  黑色30H6GM9T9L/001', '【二手9成新】', '2026.00', '9', '../images/luxuryPage/4.jpg');
INSERT INTO `luxurypage` VALUES ('5', '未使用 博柏利 Burberry女包  新款圆饼 单肩斜挎包', '【准新品】', '3100.00', '7', '../images/luxuryPage/5.jpg');
INSERT INTO `luxurypage` VALUES ('6', '未使用 香奈儿（Chanel）女包 单肩包 链条包 斜挎包 时尚女包', '【二手9成新】', '25000.00', '0', '../images/luxuryPage/6.jpg');
INSERT INTO `luxurypage` VALUES ('7', '香炫儿 XIASUAR女包休闲双肩包 抽带背包百搭淑女褶皱逛街包旅行包', '【准新品】', '208.00', '30+', '../images/luxuryPage/7.jpg');
INSERT INTO `luxurypage` VALUES ('8', '古驰gucci Dionysus酒神woc迷你mini nano帆布单肩链条女包  正品 卡其色', '【二手9成新】', '4450.00', '10+', '../images/luxuryPage/8.png');
INSERT INTO `luxurypage` VALUES ('9', 'MK 女士 SAVANNAH系列黑色牛皮大号单肩斜挎包 黑色', '【二手9成新】', '3980.00', '10+', '../images/luxuryPage/9.jpg');
INSERT INTO `luxurypage` VALUES ('10', '未使用 lv 老花 手包 路易威登 经典老花手拿包 洗漱包男女中性包二手奢侈品', '【二手9成新】', '4180.00', '100+', '../images/luxuryPage/10.jpg');
INSERT INTO `luxurypage` VALUES ('11', 'LV女包 单肩包二手奢侈品 备注颜色', '【二手9成新】', '11080.00', '7', '../images/luxuryPage/11.jpg');
INSERT INTO `luxurypage` VALUES ('12', '路易威登LV SPEEDY35 手提包二手女包二手二手奢侈品 包包 无肩带', '【二手9成新】', '3399.00', '0', '../images/luxuryPage/12.jpg');

-- ----------------------------
-- Table structure for mainpage
-- ----------------------------
DROP TABLE IF EXISTS `mainpage`;
CREATE TABLE `mainpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `goodIndex` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mainpage
-- ----------------------------
INSERT INTO `mainpage` VALUES ('1', '【二手9成新】苹果7Plus手机 Apple iPhone7Plus 苹果7P 二手手机 磨砂黑 128G 全网通', '1899.00', '130+', 'phone', '../images/mainPage/small-phone-1.jpg', '1', '【二手9成新】');
INSERT INTO `mainpage` VALUES ('2', '【二手9成新】Apple iPhone7 苹果7  二手手机 磨砂黑 128G 全网通', '1399.00', '150+', 'phone', '../images/mainPage/small-phone-2.jpg', '2', '【二手9成新】');
INSERT INTO `mainpage` VALUES ('3', '【二手9成新】Apple iPhone7 苹果7  二手手机 磨砂黑 128G 全网通', '3199.00', '120+', 'phone', '../images/mainPage/small-phone-3.jpg', '3', '【二手9成新】');
INSERT INTO `mainpage` VALUES ('4', '【二手9成新】Apple iPhone 6s Plus 苹果6sPlus（送碎屏险）二手手机 玫瑰金色 64G 全网通', '1294.00', '100+', 'phone', '../images/mainPage/small-phone-4.png', '4', '【二手9成新】');
INSERT INTO `mainpage` VALUES ('5', '【二手95新】苹果Apple MacBook Air二手苹果笔记本电脑 VM2 i5 1.6  4G128G11.6英寸', '2999.00', '100+', 'computer', '../images/mainPage/small-computer-1.png', '1', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('6', '【二手95新】Apple imac 21.5寸 苹果一体机电脑 超薄台式机 27寸 家用办公设计游戏 21寸超薄ME086 i', '4274.00', '110+', 'computer', '../images/mainPage/small-computer-2.jpg', '2', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('7', '【二手95新】Apple mac mini 台式机电脑 苹果迷你主机 二手电脑 小主机 正品 MGEM2可免费升级为512固态', '2289.00', '120+', 'computer', '../images/mainPage/small-computer-3.jpg', '3', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('8', '【二手95新】苹果Apple MacBook Pro二手苹果笔记本电脑 轻薄 办公 游戏 MF840 i5 2.7 8G256', '4599.00', '130+', 'computer', '../images/mainPage/small-computer-4.png', '4', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('9', '【二手9成新】平板 Apple iPad3 苹果平板电脑 月光银色 WiFi版 16G 国行', '529.00', '110+', 'ipad', '../images/mainPage/small-ipad-1.png', '1', '【二手9成新】');
INSERT INTO `mainpage` VALUES ('10', '【二手9成新】Apple iPad Mini2 苹果mini2 二手平板电脑 灰色 32G Wifi版', '1066.00', '100+', 'ipad', '../images/mainPage/small-ipad-2.png', '2', '【二手9成新】');
INSERT INTO `mainpage` VALUES ('11', '【二手9成新】Apple iPad Mini2 苹果mini2 二手平板电脑 银色 32G Wifi版', '1066.00', '120+', 'ipad', '../images/mainPage/small-ipad-3.jpg', '3', '【二手9成新】');
INSERT INTO `mainpage` VALUES ('12', '【二手9成新】平板 Apple iPad3 苹果平板电脑 天空灰色 WiFi版 32G 国行', '708.00', '100+', 'ipad', '../images/mainPage/small-ipad-4.png', '4', '【二手9成新】');
INSERT INTO `mainpage` VALUES ('13', '【二手99新】佳能5D MarkIII5D3机身 全画幅相机 单反机身高端机数码 99新 佳能5D 3(24-105)套机 9', '12950.00', '100+', 'digicam', '../images/mainPage/small-digicam-1.png', '1', '【二手99成新】');
INSERT INTO `mainpage` VALUES ('14', '【二手95新】尼康/Nikon D7500 单机D7200  D7100 D7000 单机中端单反 D7000（18-105m', '2760.00', '120+', 'digicam', '../images/mainPage/small-digicam-2.jpg', '2', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('15', '【二手99新】飞宇AK2000微单稳定器 2.8KG承重 调焦级单反相机手持三脚架三轴云台 AK2000', '1399.00', '100+', 'digicam', '../images/mainPage/small-digicam-3.jpg', '3', '【二手99成新】');
INSERT INTO `mainpage` VALUES ('16', '【二手95新】gopro hero6 black 高清水下潜水浮潜运动4k记录仪摄像机黑狗6防水相机 GOPRO HERO6', '1399.00', '200+', 'digicam', '../images/mainPage/small-digicam-4.jpg', '4', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('17', '【99新】美的 BCD-440WTPM(E) 440升 十字对开门 电冰箱 超薄 无霜 四开门家用', '2999.00', '100+', 'bigApp', '../images/mainPage/small-bigApp-1.jpg', '1', '【99新】');
INSERT INTO `mainpage` VALUES ('18', '【99新】折扣机 美菱 BCD-645WUPBA变频风冷无霜M鲜生CHIQ智能对开门冰箱', '6699.00', '120+', 'bigApp', '../images/mainPage/small-bigApp-2.jpg', '2', '【99新】');
INSERT INTO `mainpage` VALUES ('19', '【99新】折扣机 美菱BCD-660WUP9BA十字对开门冰箱 M鲜生风冷无霜变频', '6499.00', '110+', 'bigApp', '../images/mainPage/small-bigApp-3.jpg', '3', '【99新】');
INSERT INTO `mainpage` VALUES ('20', '【99新】折扣机 美菱BCD-639WUP9BA十字四门对开M鲜生冰箱4门4区水分子激活保鲜', '8699.00', '115+', 'bigApp', '../images/mainPage/small-bigApp-4.jpg', '4', '【99新】');
INSERT INTO `mainpage` VALUES ('21', '【9新】Midea/美的 MY-QC50A5电压力锅双胆5L智能家用电高压锅饭煲正品', '259.00', '100+', 'smallApp', '../images/mainPage/small-smallApp-1.png', '1', '【9新】');
INSERT INTO `mainpage` VALUES ('22', '【二手99新】美的（Midea） 电饭煲  2L小丸子煲 黑晶内胆 迷你容量 适用1-2人节能型电饭锅WYN201', '169.00', '110+', 'smallApp', '../images/mainPage/small-smallApp-2.png', '2', '【二手99成新】');
INSERT INTO `mainpage` VALUES ('23', '【准新品】美的（Midea） 电饭煲 2L智能预约 IH加热 高端迷你小电饭锅 FZ2001', '598.00', '100+', 'smallApp', '../images/mainPage/small-smallApp-3.jpg', '3', '【准新品】');
INSERT INTO `mainpage` VALUES ('24', '【官翻优品】苏泊尔（SUPOR）电饭煲电饭锅4L球釜内胆拉丝不锈钢CFXB40FC9033Q-75', '259.00', '110+', 'smallApp', '../images/mainPage/small-smallApp-4.jpg', '4', '【官翻优品】');
INSERT INTO `mainpage` VALUES ('25', '【二手95新】欧米茄星座系列 1398.75.00 玫瑰金刻度外圈镶钻 27表径电脑面 自动机械女表', '24800.00', '100+', 'watch', '../images/mainPage/small-watch-1.jpg', '1', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('26', '【二手95新】欧米茄OMEGA星座系列女表1392.10.00自动机械奢侈品钟手表腕表', '15000.00', '110+', 'watch', '../images/mainPage/small-watch-2.jpg', '2', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('27', '【二手95新】Cartier卡地亚W6920100 蓝气球系列 精钢 粉色表盘 自动机械女表手表回收 粉色', '29800.00', '120+', 'watch', '../images/mainPage/small-watch-3.jpg', '3', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('28', '【二手95新】浪琴制表传统名匠系列L2.128.4.78.3女机械腕表新款888机芯表径25.5mm', '6280.00', '110+', 'watch', '../images/mainPage/small-watch-4.png', '4', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('29', '【二手95新】路易威登/LV棕老花favorite中号麻将包PVC植鞣革女士单肩斜跨包包', '5380.00', '100+', 'bag', '../images/mainPage/small-bag-1.jpg', '1', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('30', '【二手95新】古驰GUCCI Marmont gg super mini nano单肩斜挎链条女士包 黑色', '4800.00', '110+', 'bag', '../images/mainPage/small-bag-2.png', '2', '【二手95成新】');
INSERT INTO `mainpage` VALUES ('31', '【二手99新】全新未使用 LV路易威登 男包 经典黑花 男包 手拿包 未使用 二手箱包 奢侈品', '6180.00', '100+', 'bag', '../images/mainPage/small-bag-3.jpg', '3', '【二手99成新】');
INSERT INTO `mainpage` VALUES ('32', '【二手95新】古驰gucci Dionysus酒神woc迷你mini nano帆布单肩链条女包 正品 卡其色', '4450.00', '110+', 'bag', '../images/mainPage/small-bag-4.png', '4', '【二手95成新】');

-- ----------------------------
-- Table structure for phonepage
-- ----------------------------
DROP TABLE IF EXISTS `phonepage`;
CREATE TABLE `phonepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phonepage
-- ----------------------------
INSERT INTO `phonepage` VALUES ('1', '华为（HUAWEI）P8 青春版 真八核CPU 安卓手机 移动4G联通2G 黑色（系统不要升级', '【二手9成新】', '299.00', '1.2万+', '../images/phonePage/1.jpg');
INSERT INTO `phonepage` VALUES ('2', '苹果7Plus手机 Apple iPhone7Plus 苹果7P 二手手机 磨砂黑 128G 全网通', '【二手9成新】', '1899.00', '2.9万+', '../images/phonePage/2.jpg');
INSERT INTO `phonepage` VALUES ('3', 'Apple 苹果6  iPhone 6 二手手机 国行 全网通 金色 16G 全网通4G', '【二手9成新】', '619.00', '1000+', '../images/phonePage/3.jpg');
INSERT INTO `phonepage` VALUES ('4', 'OPPO R9 安卓 二手手机 金色 64G  全网通', '【二手9成新】', '599.00', '2500+', '../images/phonePage/4.jpg');
INSERT INTO `phonepage` VALUES ('5', 'Apple iPhone X 苹果x 全面屏 面容识别 国行 全网通 二手手机 深空灰 64G 全网通', '【二手9成新】', '3199.00', '4400+', '../images/phonePage/5.jpg');
INSERT INTO `phonepage` VALUES ('6', '苹果6手机 Apple iPhone6（非6p/6s/7/8plus）二手手机 金色 苹果6 32G 全网通', '【二手9成新】', '1169.00', '8200+', '../images/phonePage/6.jpg');
INSERT INTO `phonepage` VALUES ('7', 'vivo X20全面屏安卓手机 二手手机 黑色 64G 全网通', '【二手9成新】', '799.00', '900+', '../images/phonePage/7.jpg');
INSERT INTO `phonepage` VALUES ('8', 'vivo Y67 安卓手机 全网通 二手手机 玫瑰金 4GB+32GB 全网通', '【二手9成新】', '458.00', '2100+', '../images/phonePage/8.jpg');
INSERT INTO `phonepage` VALUES ('9', 'vivo Y55 移动联通电信4G 安卓手机 二手手机 全网通 2GB+16GB 玫瑰金 2GB+16GB全网通', '【二手9成新】', '359.00', '8100+', '../images/phonePage/9.jpg');
INSERT INTO `phonepage` VALUES ('10', '苹果7Plus手机 Apple iPhone7Plus 苹果7P 二手手机 亮黑色 128G 全网通', '【二手9成新】', '1898.00', '2.9万+', '../images/phonePage/10.jpg');
INSERT INTO `phonepage` VALUES ('11', '三星 Galaxy S8 （SM-G9500）4GB+64G 全视曲面屏手机 双卡双待 谜夜黑 国行64G', '【二手9成新】', '1999.00', '1200+', '../images/phonePage/11.jpg');
INSERT INTO `phonepage` VALUES ('12', 'vivo Y83 刘海全面屏手机  面部解锁  4GB+64GB 全网通 黑色', '【二手9成新】', '758.00', '1800+', '../images/phonePage/12.jpg');

-- ----------------------------
-- Table structure for time_shoppingpage
-- ----------------------------
DROP TABLE IF EXISTS `time_shoppingpage`;
CREATE TABLE `time_shoppingpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `head` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `del_price` decimal(10,2) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of time_shoppingpage
-- ----------------------------
INSERT INTO `time_shoppingpage` VALUES ('1', '小米（MI）wifi放大器pro wifi信号增强器300M 家用路由器无线信号增强器强电版', '【备件库9成新】', '44.25', '59.00', '62000', '../images/time-shoppingPage/1.jpg');
INSERT INTO `time_shoppingpage` VALUES ('2', '小米（MI）wifi放大器pro wifi信号增强器300M 家用路由器无线信号增强器强电版', '【备件库9成新】', '143.28', '199.00', '33000', '../images/time-shoppingPage/2.jpg');
INSERT INTO `time_shoppingpage` VALUES ('3', '小米路由器4A千兆版双核CPU全千兆AC1200高增益4天线双频合一防蹭网', '【备件库9成新】', '111.75', '129.00', '11000', '../images/time-shoppingPage/3.jpg');
INSERT INTO `time_shoppingpage` VALUES ('4', '小米米家智能门锁 碳素黑 标准锁体 家用防盗门  指纹锁密码锁 C级锁芯', '【备件库9成新】', '980.23', '1299.00', '10000', '../images/time-shoppingPage/4.jpg');
INSERT INTO `time_shoppingpage` VALUES ('5', 'Apple AirPods 配充电盒 苹果蓝牙耳机', '【备件库9成新】', '978.11', '1246.00', '14000', '../images/time-shoppingPage/5.jpg');
INSERT INTO `time_shoppingpage` VALUES ('6', '米家 电饭煲 米家小饭煲 1.6L黄金容量  400W强力烹饪 PFA大金粉体涂层 智能操控 小米电饭煲', '【备件库9成新】', '138.58', '169.00', '19000', '../images/time-shoppingPage/6.jpg');
INSERT INTO `time_shoppingpage` VALUES ('7', '米家（MIJIA）米家智能插座 （ZigBee版） 实际功率检测 耗电量统计 过载保护 定时开关 APP远程控制', '【备件库9成新】', '48.30', '69.00', '16000', '../images/time-shoppingPage/7.jpg');
INSERT INTO `time_shoppingpage` VALUES ('8', '小米 MI 小米小爱触屏音箱 白色 爱奇艺视频|QQ音乐曲库|语音电话|600 实用技能', '【备件库9成新】', '176.79', '249.00', '6400', '../images/time-shoppingPage/8.jpg');
INSERT INTO `time_shoppingpage` VALUES ('9', '小米路由器4A 1200M四天线64MB大内存稳定连接APP远程控制防蹭网2.4G和5G可双频合一稳定高速家用路由器', '【备件库9成新】', '74.25', '89.00', '62000', '../images/time-shoppingPage/9.jpg');
INSERT INTO `time_shoppingpage` VALUES ('10', '小米（MI)电力猫 wifi信号放大器  300M无线电力猫路由器WIFI扩展  穿墙宝  一对双支套装', '【备件库9成新】', '171.75', '229.00', '11000', '../images/time-shoppingPage/10.jpg');
INSERT INTO `time_shoppingpage` VALUES ('11', 'Apple 18W USB电源适配器', '【备件库9成新】', '189.00', '243.00', '2800', '../images/time-shoppingPage/11.jpg');
INSERT INTO `time_shoppingpage` VALUES ('12', '米家 米家 电饭煲 米家小饭煲 1.6L黄金容量  400W强力烹饪 PFA大金粉体涂层 智能操控', '【备件库9成新】', '135.20', '169.00', '19000', '../images/time-shoppingPage/12.jpg');
INSERT INTO `time_shoppingpage` VALUES ('13', '米家 电水壶 热水壶 双层防烫 304不锈钢 进口温控 自动断电 1800W快烧水壶 1.5L大容量 小米电水壶', '【备件库9成新】', '80.36', '99.00', '400', '../images/time-shoppingPage/13.jpg');
INSERT INTO `time_shoppingpage` VALUES ('14', '花王（Merries）纸尿裤 M64片 中号尿不湿（6-11kg）（日本原装进口）', '【备件库9成新】', '71.40', '103.00', '9400', '../images/time-shoppingPage/14.jpg');
INSERT INTO `time_shoppingpage` VALUES ('15', '罗技(G)G502 主宰者游戏鼠标 全线升级Hero引擎 16000DPI RGB炫光', '【备件库9成新】', '267.33', '389.00', '20000', '../images/time-shoppingPage/15.jpg');
INSERT INTO `time_shoppingpage` VALUES ('16', '米家 空气净化器2S 除雾霾 除甲醛 空气质量屏幕显示 三层净化AC-M4-AA 29W 小米空气净化器', '【备件库9成新】', '572.36', '699.00', '19000', '../images/time-shoppingPage/16.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('user1', '123456', '1', '18155122163');
INSERT INTO `user` VALUES ('user2', '111111', '2', '18155122162');
INSERT INTO `user` VALUES ('user5', '1111111', '5', '18155122167');
