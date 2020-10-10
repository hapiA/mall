# Host: localhost  (Version: 5.5.53)
# Date: 2020-06-02 20:54:01
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "qy_about"
#

DROP TABLE IF EXISTS `qy_about`;
CREATE TABLE `qy_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '关于我们标题',
  `image` varchar(255) DEFAULT NULL COMMENT '关于我们图片',
  `summary` varchar(255) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '内容',
  `telphone` varchar(15) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `qq` varchar(255) DEFAULT NULL COMMENT 'qq号码',
  `wx` varchar(255) DEFAULT NULL COMMENT '微信号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "qy_about"
#

/*!40000 ALTER TABLE `qy_about` DISABLE KEYS */;
INSERT INTO `qy_about` VALUES (1,'关于我们','1','123123123123','<p>123123123123<br/></p>','0592-111111','18059256185','237831309','intewl');
/*!40000 ALTER TABLE `qy_about` ENABLE KEYS */;

#
# Structure for table "qy_active"
#

DROP TABLE IF EXISTS `qy_active`;
CREATE TABLE `qy_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL COMMENT '1新人有礼; 2优惠活动',
  `description` varchar(255) DEFAULT NULL,
  `display` tinyint(3) DEFAULT '1' COMMENT '1显示 0隐藏',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "qy_active"
#

/*!40000 ALTER TABLE `qy_active` DISABLE KEYS */;
INSERT INTO `qy_active` VALUES (1,'魅族官方直供','#','active/20191030/c2c2c80faa594e44629d1c9ad23cb78f.png',1,'魅族官方直供',1),(2,'满80元免运费','#','active/20191030/f5cba3b97063becafbf40cf0616c57be.png',1,'满80元免运费',1),(3,'7天无理由退货','#','active/20191030/c51ec69e09c1a0abfb2b5d32f4450ee4.png',1,'7天无理由退货',1);
/*!40000 ALTER TABLE `qy_active` ENABLE KEYS */;

#
# Structure for table "qy_address"
#

DROP TABLE IF EXISTS `qy_address`;
CREATE TABLE `qy_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `default` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

#
# Data for table "qy_address"
#

/*!40000 ALTER TABLE `qy_address` DISABLE KEYS */;
INSERT INTO `qy_address` VALUES (50,'英特网络1231','18056256563','北京北京市大兴区','123123','0','1','0'),(51,'intewl','18055654585','北京北京市大兴区','123123','0','1','1');
/*!40000 ALTER TABLE `qy_address` ENABLE KEYS */;

#
# Structure for table "qy_admin"
#

DROP TABLE IF EXISTS `qy_admin`;
CREATE TABLE `qy_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  `group` tinyint(2) NOT NULL COMMENT '用户等级',
  `image` varchar(255) DEFAULT NULL COMMENT '用户图片',
  `data` varchar(255) DEFAULT NULL COMMENT '注册时间',
  `display` varchar(255) DEFAULT NULL COMMENT '是否可用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "qy_admin"
#

/*!40000 ALTER TABLE `qy_admin` DISABLE KEYS */;
INSERT INTO `qy_admin` VALUES (37,'admin','123456',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qy_admin` ENABLE KEYS */;

#
# Structure for table "qy_api"
#

DROP TABLE IF EXISTS `qy_api`;
CREATE TABLE `qy_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '接口名称',
  `type` varchar(50) DEFAULT NULL COMMENT '接口类型',
  `url` varchar(255) DEFAULT NULL COMMENT '接口地址',
  `param` varchar(255) DEFAULT NULL COMMENT '接口参数',
  `place` tinyint(3) DEFAULT '1' COMMENT '1表示移动端2表示pc端',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "qy_api"
#

/*!40000 ALTER TABLE `qy_api` DISABLE KEYS */;
INSERT INTO `qy_api` VALUES (1,'获取移动端首页轮播图','POST','admin/api/indexBanner','获取数据,无参数',1),(2,'获取顶级分类轮播图数据','POST','admin/api/childBanner/id/[id]','[id]表示接口参数，根据id获取图片',1),(3,'获取移动端顶级分类','POST','admin/api/topCate[/num/1]','获取说有数据admin/api/topCate,根据num获取需要的条数admin/api/topCate/num/1【获取一条】',1),(4,'获取移动端产品','POST','admin/api/procutct[/pid/4]','获取所有数据admin/api/procutct，根据分类id获取数据pid/4',1),(5,'获取移动端所有文章信息','POST','admin/api/article[/pid/4]','获取所有数据admin/api/article，根据分类id获取数据pid/4',1),(6,'//获取子分类(二级分类)信息','POST','admin/api/getChildCate/id/1','根据id获取子分类',1),(7,'根据ID获取相应文章','POST','admin/api/getArticle/id/1','根据ID获取相应文章',1),(8,'根据id获取对应分类数据','POST','admin/api/getCate/id/1','根据id获取对应分类数据',1);
/*!40000 ALTER TABLE `qy_api` ENABLE KEYS */;

#
# Structure for table "qy_article"
#

DROP TABLE IF EXISTS `qy_article`;
CREATE TABLE `qy_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `summary` varchar(255) DEFAULT NULL COMMENT '摘要',
  `pid` varchar(255) DEFAULT NULL COMMENT '分类',
  `content` text COMMENT '内容详情',
  `data` varchar(20) DEFAULT NULL COMMENT '发布时间',
  `recommend` varchar(255) DEFAULT NULL COMMENT '推荐文章',
  `type` varchar(255) DEFAULT '0' COMMENT '文章类型，0表示普通网站1表示系统文章',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

#
# Data for table "qy_article"
#

/*!40000 ALTER TABLE `qy_article` DISABLE KEYS */;
INSERT INTO `qy_article` VALUES (13,'为“高、远、快、智”航空发动机提供基础理论和核心技术——清华大学航空发动机研究院揭牌成立','banner/20190121/71b9271c579bc9e6c21263f63f68757b.jpg','航空发动机是“国之重器”、“飞机的心脏”，被誉为“工业皇冠上的明珠”。是世界上公认的核心技术门槛最高、整体结构最复杂的工业产品，反映了一个国家的科技、工业和国防的综合实力。 12月18日下午，清华大学航空发...','5','<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">【编者按】</span><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\">航空发动机是“国之重器”、“飞机的心脏”，被誉为“工业皇冠上的明珠”。是世界上公认的核心技术门槛最高、整体结构最复杂的工业产品，反映了一个国家的科技、工业和国防的综合实力。&nbsp;</p><div><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p></div><div><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/ueditor/php/upload/image/20190122/1548138362948420.jpg\" title=\"1548138362948420.jpg\" alt=\"4.jpg\"/></p></div><div><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p></div><div><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\">12月18日下午，清华大学航空发动机研究院在主楼接待厅揭牌成立。航空发动机研究院的建立是清华大学在新时代深度参与创新驱动发展战略实施、响应国家军民融合发展战略的重大举措，也是清华大学在新百年做出的重大战略布局。&nbsp;<br/><br/>本期热点聚焦，我们就来一同关注这所新成立的航空发动机研究院。</p><p><br/></p></div>','1548138447','1','0'),(14,'收藏！嫦娥四号成功着陆月球背面，迈出全人类在月球背面的第一步','banner/20190121/307f2f7a5f79ec92c346caee96ab2970.jpg','在经过26天的“长途跋涉”并“养精蓄锐”之后，1月3日上午10点26分，低调得似乎都有些淡出公众视野的嫦娥四号月球探测器厚积薄发，完成了人类史航天史上的一项壮举——成功软着陆在月球背面的南极-艾特肯盆地冯卡门撞...','5','<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">【编者按】</span><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\">在经过26天的“长途跋涉”并“养精蓄锐”之后，1月3日上午10点26分，低调得似乎都有些淡出公众视野的嫦娥四号月球探测器厚积薄发，完成了人类史航天史上的一项壮举——成功软着陆在月球背面的南极-艾特肯盆地冯卡门撞击坑。&nbsp;<br/><br/>至此，这项略显“隐忍不发”色彩的“月球远征计划”终于度过了最困难和最惊险的时刻。今天，嫦娥四号成功着路引发全球关注，如果网上单条的新闻看不过瘾，没关系，本期热点聚焦小编就来汇集最全、最亮眼的信息为您解馋。</p><p><span style=\"color:#555555;font-family:微软雅黑\"><br/></span></p><p><img src=\"/ueditor/php/upload/image/20190122/1548137003544524.jpg\" title=\"1548137003544524.jpg\" alt=\"bb71adc80fd044bcb41ac257e7be3fa1.jpg\" width=\"493\" height=\"299\"/></p><p><br/></p><p style=\"white-space: normal;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">【编者按】</span><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 10px; white-space: normal; box-sizing: border-box; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">在经过26天的“长途跋涉”并“养精蓄锐”之后，1月3日上午10点26分，低调得似乎都有些淡出公众视野的嫦娥四号月球探测器厚积薄发，完成了人类史航天史上的一项壮举——成功软着陆在月球背面的南极-艾特肯盆地冯卡门撞击坑。&nbsp;<br/><br/>至此，这项略显“隐忍不发”色彩的“月球远征计划”终于度过了最困难和最惊险的时刻。今天，嫦娥四号成功着路引发全球关注，如果网上单条的新闻看不过瘾，没关系，本期热点聚焦小编就来汇集最全、最亮眼的信息为您解馋。</p><p><br/></p>','1548137900','1','0'),(15,' 领航中国青少年科普新探索 持续耕耘青少年科技梦——第六届全国青年科普创新实验暨作品大赛启动','banner/20190121/ffc433e13eba60a543a1f3342a10e403.jpg','在全国青年科普创新实验暨作品大赛连续五年一系列的科普公益活动中，成千上万的青少年燃起对科学的热爱，助力国家培养了一批又一批有热情、有理想、有能力的科技青少年。12月18日，第六届全国青年科普创新实验暨作品...','5','<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">【编者按】</span><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\">在全国青年科普创新实验暨作品大赛连续五年一系列的科普公益活动中，成千上万的青少年燃起对科学的热爱，助力国家培养了一批又一批有热情、有理想、有能力的科技青少年。12月18日，第六届全国青年科普创新实验暨作品大赛（以下简称大赛）在中国科学技术馆正式启动，再次领航中国青少年的科普新探索。&nbsp;<br/><br/>中国科学技术协会党组成员、中国科技馆馆长、中国科技馆发展基金会理事长殷皓，中国科协科普部部长白希，共青团中央青年发展部副部长石新明，中国三星总裁黄得圭，中国青少年发展基金会理事长王剑以及中国科协青少年科技中心、中国科技馆发展基金会和来自全国十五个赛区科技馆等单位的代表一起来到现场出席了启动仪式。&nbsp;<br/><br/>本期热点聚焦，我们就来关注这场全国15个科技馆同步开展的青年科普创新实验暨作品大赛。</p><p><br/></p>','1548069335','0','0'),(16,'顶级专家云集清华！共同探讨“量子信息科学与物理学前沿问题”','banner/20190121/fd0d40ef41cc4f410cdcba7a02c69850.jpg','今天上午，由北京量子信息科学研究院主办，清华大学物理系协办的量子信息与物理学前沿学术研讨会在清华大学召开。北京市科学技术委员会主任许强，清华大学副校长、北京量子信息科学研究院院长、大会主席薛其坤院士出...','5','<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">【编者按】</span><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\"></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p>对于关注量子信息科学的朋友来说下面这张图应该不陌生。&nbsp;<br/><br/>没错!这就是去年12月24日，北京市政府联合中国科学院、军事科学院、北京大学、清华大学、北京航空航天大学等单位超前谋划，创新体制机制，在北京中关村软件园成立了北京量子信息科学研究院。&nbsp;<br/><br/>2018即将结束，马上满周岁的北京量子信息科学研究院有哪些研究成果？目前我国在量子信息技术方面取得了哪些进展？&nbsp;<br/><br/>12月10日—11日，他们在清华办了件大事，由北京量子信息科学研究院主办，清华大学物理系协办的量子信息与物理学前沿学术研讨会在清华大学召开。&nbsp;<br/><br/>100余名海内外专家学者共聚一堂，探讨了量子信息科学与物理学前沿问题。本期热点聚焦，我们就来关注这场超级烧脑的“量子信息与物理学前沿学术研讨会”。</p><p><br/></p>','1548136988','1','0'),(17,'B站和1818黄金眼跨次元合作 以后能在B站看新闻了？',NULL,'哔哩哔哩宣布和《1818黄金眼》展开内容合作，双方将共同制作一档名为《bilibili@黄金眼》的新节目，其Slogan为“严肃点，播新闻呢 \"。','6','<section>哔哩哔哩宣布和《1818黄金眼》展开内容合作，双方将共同制作一档名为《bilibili@黄金眼》的新节目，其Slogan为“严肃点，播新闻呢 &quot;。</section><p><section><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px;\">1月19日，哔哩哔哩宣布和《1818黄金眼》展开内容合作，双方将共同制作一档名为《bilibili@黄金眼》的新节目，其Slogan为“严肃点，播新闻呢&quot;。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px;\">于2004年开播的《1818黄金眼》是浙江省日播时间最长的民生新闻节目，是浙江省日播时间最长的民生新闻节目，也是浙江电视媒体中唯一一档 24小时开通新闻热线的新闻栏目。由于其包罗万象的报道内容和尖锐直接的报道风格，《1818黄金眼》这两年热度逐渐升高，被众多网友称作是“快乐源泉”。2018年7月入驻B站的《1818黄金眼》已经累计上传了900多期视频。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px;\">关于B站，相信不用多做介绍，很多年轻人应该都很了解。现在很多年轻人会用B站看视频、看动漫等。而近年来，B站用户除了关注动画、影视等泛娱乐类内容外，也逐渐对新闻显示出独特的关注度，无论是事件还是当事人。他们还乐于以全新视角进行大量二次创作。而这些二次创作在网络上传播，不仅进一步带动了原节目的热度，也对内容创作者产生了反哺作用。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px;\">据悉，《bilibili@黄金眼》将《1818黄金眼》的新闻视角与B站的用户视角相结合，创新新闻节目网台联动的新模式：一方面，通过B站的弹幕评论以及二次创作，电视台这一传统媒介得以迅速了解年轻受众对于新闻节目的反馈，从而将年轻人视角引入电视新闻的内容创作，满足年轻用户关注社会民生和参与互动的需求。另一方面，通过同步播放，借由互联网上的二次创作和大量讨论，实现新闻节目的二次传播，进而提高新闻品牌的知名度和影响力。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px;\">《bilibili@黄金眼》每期节目时长有5-8分钟，每周六作为《1818黄金眼》节目内容的一部分播出。Ｂ站除了会同步更新，还会上线一系列独家未播出内容。大家看好这档节目吗？</p></section></p><p><br/></p>','1548069140','1','0'),(18,'别让《啥是佩奇》只是刷屏，再想想我们还能为爷爷做些什么？','banner/20190121/8a08c8a193609ff2068138bb51407fd9.jpg','去年爆火的“社会人”小猪佩奇，在2019猪年春节临近之际，因一部名为《啥是佩奇》的电影宣传短片再次爆火，这部以有点朋克的硬核佩奇为载体，以中国仍然十分普遍的农村与城市、爷孙关系与父子关系等为主题，展现','6','<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; background-color: rgb(255, 255, 255);\">去年爆火的“社会人”小猪佩奇，在2019猪年春节临近之际，因一部名为《啥是佩奇》的电影宣传短片再次爆火，这部以有点朋克的硬核佩奇为载体，以中国仍然十分普遍的农村与城市、爷孙关系与父子关系等为主题，展现了一段既温情又有些许无奈的现实主义故事。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; background-color: rgb(255, 255, 255);\"></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">短片一经发布，迅速火爆各大社交平台，刷屏朋友圈，一时间，成为了广大网民的狂欢载体。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">自媒体人借机发挥，大肆兜售各种正向或反向的价值观来博取眼球，各营销号脑洞大开，纯手工制作的同款钢铁佩奇新鲜出炉，网友们则在朋友圈里一边感叹视频温暖感动，一边佩服创意上乘，甚至某宝上搜索硬核佩奇，相应的宣传页面都已经成型上线。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">2019年的第一次刷屏，就这样意外又合乎情理的出现了。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">《啥是佩奇》所表现的闭塞落后农村，以及倔强可爱的爷爷，虽然有艺术上的夸张和演绎，但是仍然具有一定的代表性。不容置疑的是，即使我们每天谈论着人工智能、无人驾驶、大数据、云计算，在同一时空下，在那家乡的小村子里面，可能我们的爷爷奶奶仍然用着功能机，面朝黄土背朝天，这样的场景对于一个出生在北上广深的00后孩子可能无法想象，但是对于生于农村，在大城市奋斗的80后甚至90后的年轻人来说，童年的家乡应该还历历在目。</p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>','1548069217','1','0'),(19,'苹果向下，国产向上 被拉下神坛的Apple正在艰难自救','banner/20190121/8b468ce462005ec5c6eb804836be4432.jpg','苹果正在走下坡路。从股价来看，苹果股价自2018年发布新iPhone X手机达到高点以后，便开始走进下行区间，截至昨日，苹果股价报收154 94美元，较2018年10月3日的高点203 07美元跌幅超1 3。苹果手机统治高端市场1','11','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: \">苹果正在走下坡路。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: \">从股价来看，苹果股价自2018年发布新iPhone X手机达到高点以后，便开始走进下行区间，截至昨日，苹果股价报收154.94美元，较2018年10月3日的高点203.07美元跌幅超1/3。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: \">苹果手机统治高端市场10年，但自2018年以来开始走下神坛。虽然售价仍然是智能手机当中的绝对王者，不过从用户及市场的反应来看，苹果早已不复往日的雄风。新机发布后专卖店门外排起长队等待抢购的景象难以再现，而以倒卖苹果手机卫生的黄牛，近两年也不敢再肆无忌惮的囤积新货。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: \">以往，使用苹果手机除了是身份的象征之外，更重要的是，苹果手机在外观、配置、拍照、系统等各个方面，都碾压国产手机。然而近几年，随着华为、小米、OV等品牌的强势崛起，苹果10年来建立的优势正在被国产手机飞速追赶甚至超越。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: \">有网友最近这样评价苹果手机：拍照不如华为，性价比不如小米，受女生欢迎不如OV，价格就更不用说了，还不支持快充，走到哪都得背个充电宝，唯一还说得过去的就剩系统流畅度了，以前还能拿苹果手机在大街上显摆身份，现在苹果烂大街不说，拿华为、小米的也不觉得身份就低了，所以实在没有理由非得用苹果不行。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: \">虽然网友所说可能过于片面，但是不可否认的是，国产手机尤其是几大厂商的旗舰机型，进步显而易见，对满足现在用户主流需求，如拍照、看高清视频、玩大型手游等效果上，苹果的优势已经十分微弱，甚至是在续航、拍照等一些功能上，已经远不如国产手机更符合用户的要求。而动辄上万元的售价，最近发布的几款新iPhone又没有重大功能突破，也让iPhone失去了不少忠实的用户。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: \">重要的是，这种苹果被拉下神坛，被国产手机赶超的观念，正在随着一次次新iPhone的发布，以及一次次地让果粉失望而不断强化。iPhone口碑的消耗对于苹果手机的品牌溢价正带来不可逆转的损失。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: \"><br/></p>','1548070746','1','0'),(20,'华为全面开启5G时代 发布5G多模终端芯片和商用终端','article/20190125/2471aab68107ab6a7ea9bc0e9b360347.jpg','1月24日华为在北京正式面向全球发布了5G多模终端芯片——Balong 5000（巴龙5000）和基于该芯片的首款5G商用终端——华为5G CPE Pro，带来首屈一指的高速连接体验，让万物互联的智慧世界与人们的生活更近了一步。','5','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">1月24日华为在北京正式面向全球发布了5G多模终端芯片--Balong 5000（巴龙5000）和基于该芯片的首款5G商用终端--华为5G CPE Pro，带来首屈一指的高速连接体验，让万物互联的智慧世界与人们的生活更近了一步。<br/></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">Balong 5000是全面开启5G时代的钥匙，它可以支持多种丰富的产品形态，除了智能手机外，还包括家庭宽带终端、车载终端和5G模组等，将在更多使用场景下为广大消费者带来不同以往的5G连接体验。</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 28px; padding: 0px; border: 0px; vertical-align: baseline; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 寰蒋闆呴粦, Arial, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">“Balong 5000为你展开一个新世界，它可以唤醒万物感知，促进万物智能；搭载这款芯片的华为5G CPE Pro，可让消费者更加自由地接入网络，畅享疾速连接体验。”华为消费者业务CEO余承东说，“华为拥有包含芯片、终端、云服务和网络在内的全领域能力，是5G时代的领导者，将为全球消费者带来美好的全场景智慧生活体验。”</p><p><img src=\"/ueditor/php/upload/image/20190125/1548380516128794.jpg\" title=\"1548380516128794.jpg\" alt=\"22.jpg\"/></p>','1548380625','1','0'),(21,'关于我们','article/20190125/8963aaab28df96d6bb878b7172312e25.jpg','英威腾是国家火炬计划重点高新技术企业，依托于电力电子、自动控制、信息技术，业务覆盖工业自动化、新能源汽车、网络能源及轨道交通。全国共有12大研发中心，拥有各类专利850多件，实验室拥有国内工控行业首家TUV SUD颁发的ACT资质，并通过UL目击实验室及CNAS国家实验室认证。深圳公明科技产业园和苏州工业产业园，能为客户提供先进的集成产品开发设计管理、全面的产品研发测试与自动化信息化的作业生产。分布在全球各地的分支机构和联保中心为用户提供解决方案、技术培训与服务支持的专业后勤保障，可以更加便捷快速地服务客','1','<p><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">【编者按】</span><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; white-space: normal; background-color: rgb(255, 255, 255);\">在经过26天的“长途跋涉”并“养精蓄锐”之后，1月3日上午10点26分，低调得似乎都有些淡出公众视野的嫦娥四号月球探测器厚积薄发，完成了人类史航天史上的一项壮举--成功软着陆在月球背面的南极-艾特肯盆地冯卡门撞击坑。&nbsp;<br/><br/>至此，这项略显“隐忍不发”色彩的“月球远征计划”终于度过了最困难和最惊险的时刻。今天，嫦娥四号成功着路引发全球关注，如果网上单条的新闻看不过瘾，没关系，本期热点聚焦小编就来汇集最全、最亮眼的信息为您解馋。</p><p><span style=\"color:#555555;font-family:微软雅黑\"><br/></span></p><p><img src=\"/ueditor/php/upload/image/20190122/1548137003544524.jpg\" title=\"1548137003544524.jpg\" alt=\"bb71adc80fd044bcb41ac257e7be3fa1.jpg\" width=\"493\" height=\"299\"/></p><p><br/></p><p style=\"white-space: normal;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700; color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">【编者按】</span><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">&nbsp;</span></p><p style=\"margin-top: 0px; margin-bottom: 10px; white-space: normal; box-sizing: border-box; padding: 0px; display: inline; color: rgb(85, 85, 85); font-family: 微软雅黑; background-color: rgb(255, 255, 255);\">在经过26天的“长途跋涉”并“养精蓄锐”之后，1月3日上午10点26分，低调得似乎都有些淡出公众视野的嫦娥四号月球探测器厚积薄发，完成了人类史航天史上的一项壮举--成功软着陆在月球背面的南极-艾特肯盆地冯卡门撞击坑。&nbsp;<br/><br/>至此，这项略显“隐忍不发”色彩的“月球远征计划”终于度过了最困难和最惊险的时刻。今天，嫦娥四号成功着路引发全球关注，如果网上单条的新闻看不过瘾，没关系，本期热点聚焦小编就来汇集最全、最亮眼的信息为您解馋。</p><p><br/></p>','1548393770','1','1');
/*!40000 ALTER TABLE `qy_article` ENABLE KEYS */;

#
# Structure for table "qy_attr"
#

DROP TABLE IF EXISTS `qy_attr`;
CREATE TABLE `qy_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attrname` varchar(255) DEFAULT NULL,
  `attr_en_name` varchar(255) DEFAULT NULL,
  `attrvalue` varchar(255) DEFAULT NULL,
  `cateid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "qy_attr"
#

/*!40000 ALTER TABLE `qy_attr` DISABLE KEYS */;
INSERT INTO `qy_attr` VALUES (2,'内存','storage','16GB|32GB|64GB|128GB|256GB',1),(5,'颜色','color','黑色|蓝色|绿色|白色|金色|粉色|橙色|红色',1),(6,'颜色','color','蓝色|白色|灰色|黑色',2),(7,'颜色','color','黑色|白色|金色|银色|透明',7),(8,'颜色','color','白色|黑色|灰色',8),(9,'尺码','size','S165|M170|L175|XL180|2XL185|3XL190|XS160|XXS155',8);
/*!40000 ALTER TABLE `qy_attr` ENABLE KEYS */;

#
# Structure for table "qy_auth_group"
#

DROP TABLE IF EXISTS `qy_auth_group`;
CREATE TABLE `qy_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

#
# Data for table "qy_auth_group"
#

/*!40000 ALTER TABLE `qy_auth_group` DISABLE KEYS */;
INSERT INTO `qy_auth_group` VALUES (1,'超级管理员',1,'32,33,34,35,3,4,5,6,79,8,9,10,11,13,14,15,16,78,19,20,21,22,25,27,28,31,26,36,37,38,43,44,45,46,47,49,50,51,52,54,56,57,58,59,61,62,63,64,66,67,68,69,70,71,72,74,75,76,77'),(3,'链接专员',1,'3,4,5,6,8,9,10,11'),(4,'配置管理员',1,'8,9,10,11,13,14,15,16');
/*!40000 ALTER TABLE `qy_auth_group` ENABLE KEYS */;

#
# Structure for table "qy_auth_group_access"
#

DROP TABLE IF EXISTS `qy_auth_group_access`;
CREATE TABLE `qy_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `group_id` (`group_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

#
# Data for table "qy_auth_group_access"
#

/*!40000 ALTER TABLE `qy_auth_group_access` DISABLE KEYS */;
INSERT INTO `qy_auth_group_access` VALUES (37,1);
/*!40000 ALTER TABLE `qy_auth_group_access` ENABLE KEYS */;

#
# Structure for table "qy_auth_rule"
#

DROP TABLE IF EXISTS `qy_auth_rule`;
CREATE TABLE `qy_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(5) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

#
# Data for table "qy_auth_rule"
#

/*!40000 ALTER TABLE `qy_auth_rule` DISABLE KEYS */;
INSERT INTO `qy_auth_rule` VALUES (1,'Admin','管理列表',1,1,'',0,0,50),(2,'Cate','分类管理',1,1,'',0,0,50),(3,'Cate/index','分类列表',1,1,'',2,0,50),(4,'Cate/add','添加分类',1,1,'',2,0,50),(5,'Cate/edit','编辑分类',1,1,'',2,0,50),(6,'Cate/del','删除分类',1,1,'',2,0,50),(7,'Article','文章管理',1,1,'',0,0,50),(8,'Article/index','文章列表',1,1,'',7,0,50),(9,'Article/add','添加文章',1,1,'',7,0,50),(10,'Article/edit','编辑文章',1,1,'',7,0,50),(11,'Article/del','删除文章',1,1,'',7,0,50),(12,'Product','产品管理',1,1,'',0,0,50),(13,'Product/index','产品列表',1,1,'',12,0,50),(14,'Product/add','添加产品',1,1,'',12,0,50),(15,'Product/edit','产品编辑',1,1,'',12,0,50),(16,'Product/del','删除产品',1,1,'',12,0,50),(17,'Content','内容管理',1,1,'',0,0,50),(19,'Banner/index','轮播列表',1,1,'',17,0,50),(20,'Banner/add','添加轮播',1,1,'',17,0,50),(21,'Banner/edit','轮播编辑',1,1,'',17,0,50),(22,'Banner/del','轮播删除',1,1,'',17,0,50),(25,'Authrule/index','规则列表',1,1,'',39,0,50),(26,'Authgroup/index','权限列表',1,1,'',40,0,50),(27,'Authrule/add','添加规则',1,1,'',39,0,50),(28,'Authrule/edit','编辑规则',1,1,'',39,0,50),(31,'Authrule/del','删除规则',1,1,'',39,0,50),(32,'Admin/index','管理列表',1,1,'',1,0,50),(33,'Admin/add','添加管理',1,1,'',1,0,50),(34,'Admin/edit','编辑管理',1,1,'',1,0,50),(35,'Admin/del','删除管理',1,1,'',1,0,50),(36,'Authgroup/add','添加权限',1,1,'',40,0,50),(37,'Authgroup/edit','编辑权限',1,1,'',40,0,50),(38,'Authgroup/del','权限删除',1,1,'',40,0,50),(39,'Authrule','权限规制',1,1,'',0,0,50),(40,'Authgroup','配置权限',1,1,'',0,0,50),(42,'Sys','系统配置',1,1,'',0,0,50),(43,'Sys/index','系统列表',1,1,'',42,0,50),(44,'Sys/edit','系统编辑',1,1,'',42,0,50),(45,'Sys/add','系统添加',1,1,'',42,0,50),(46,'Sys/del','系统删除',1,1,'',42,0,50),(47,'Sys/sys','配置信息',1,1,'',42,0,50),(48,'Mobile','移动端',1,1,'',0,0,50),(49,'Mobile/banner','轮播列表',1,1,'',48,0,50),(50,'Mobile/banneradd','轮播添加',1,1,'',48,0,50),(51,'Mobile/banneredit','轮播编辑',1,1,'',48,0,50),(52,'Mobile/bannerdel','轮播删除',1,1,'',48,0,50),(53,'About','关于我们',1,1,'',0,0,50),(54,'About/index','添加/编辑',1,1,'',53,0,50),(55,'iconlist','分类导航',1,1,'',0,0,50),(56,'Iconlist/index','分类首页',1,1,'',55,0,50),(57,'Iconlist/edit','分类编辑',1,1,'',55,0,50),(58,'Iconlist/del','分类删除',1,1,'',55,0,50),(59,'Iconlist/add','分类添加',1,1,'',55,0,50),(60,'Active','活动管理',1,1,'',0,0,50),(61,'Active/add','活动添加',1,1,'',60,0,50),(62,'Active/edit','活动编辑',1,1,'',60,0,50),(63,'Active/del','活动删除',1,1,'',60,0,50),(64,'Active/index','活动列表',1,1,'',60,0,50),(65,'Floor','楼层管理',1,1,'',0,0,50),(66,'Floor/add','添加楼层',1,1,'',65,0,50),(67,'Floor/edit','编辑楼层',1,1,'',65,0,50),(68,'Floor/del','楼层删除',1,1,'',65,0,50),(69,'Floor/index','楼层列表',1,1,'',65,0,50),(70,'Floor/contentadd','楼层内容添加',1,1,'',65,0,50),(71,'Floor/contentedit','楼层内容编辑',1,1,'',65,0,50),(72,'Floor/content','楼层内容列表',1,1,'',65,0,50),(73,'Attr','商品属性',1,1,'',0,0,50),(74,'Attr/index','属性列表',1,1,'',73,0,50),(75,'Attr/add','属性添加',1,1,'',73,0,50),(76,'Attr/edit','属性编辑',1,1,'',73,0,50),(77,'Attr/del','属性删除',1,1,'',73,0,50),(78,'Product/getAttrById','根据分类id获取属性',1,1,'',12,0,50),(79,'Cate/getCateById','根据id获取分类信息',1,1,'',2,0,50);
/*!40000 ALTER TABLE `qy_auth_rule` ENABLE KEYS */;

#
# Structure for table "qy_banner"
#

DROP TABLE IF EXISTS `qy_banner`;
CREATE TABLE `qy_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '名称',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `link` varchar(100) DEFAULT NULL COMMENT '链接',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `display` tinyint(1) DEFAULT '1' COMMENT '1显示0隐藏',
  `link_type` varchar(255) DEFAULT NULL COMMENT '1表示弹窗2表示表单输入',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "qy_banner"
#

/*!40000 ALTER TABLE `qy_banner` DISABLE KEYS */;
INSERT INTO `qy_banner` VALUES (1,'轮播图一','banner/20191030/74709486dee53f7319785902330c774c.jpg','/pages/webview/webview?url=http://www.intewl.com','轮播图一描述11',1,'2'),(2,'轮播图二','banner/20191030/fa8698a37097a2be36ba4a4fa1894754.jpg','/pages/detail/detail?id=56','轮播图二描述',1,'1'),(3,'轮播图三','banner/20191030/6fa7e4b5009a7b40326ecf75be6f2f06.jpg','/pages/detail/detail?id=55','轮播图三描述',1,'1'),(4,'轮播图四','banner/20191030/f357c022e16c4a56b717572d950a4685.jpg','/pages/webview/webview?url=http://www.baidu.com','轮播图四描述',1,'2');
/*!40000 ALTER TABLE `qy_banner` ENABLE KEYS */;

#
# Structure for table "qy_cart"
#

DROP TABLE IF EXISTS `qy_cart`;
CREATE TABLE `qy_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attrid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

#
# Data for table "qy_cart"
#

/*!40000 ALTER TABLE `qy_cart` DISABLE KEYS */;
INSERT INTO `qy_cart` VALUES (26,'79','1','2','1');
/*!40000 ALTER TABLE `qy_cart` ENABLE KEYS */;

#
# Structure for table "qy_cate"
#

DROP TABLE IF EXISTS `qy_cate`;
CREATE TABLE `qy_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `catename` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `image` varchar(100) DEFAULT NULL COMMENT '分类图片',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` tinyint(3) DEFAULT '50',
  `recommend` tinyint(3) DEFAULT '0' COMMENT '0表示不推荐，1表示推荐',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "qy_cate"
#

/*!40000 ALTER TABLE `qy_cate` DISABLE KEYS */;
INSERT INTO `qy_cate` VALUES (1,'手机','cate/20191119/96559f43ea818847cbc324d2479ccdd5.jpg','介绍手机相关信息',50,1),(2,'声学','cate/20191119/862a84059c125383e1752b4793b03f84.jpg','介绍声学相关信息',50,1),(7,'配件','cate/20191119/a5a38253d085f52b14fc745b0a0166e8.jpg','介绍配件相关信息',50,1),(8,'生活','cate/20191119/cd7c64b45752ef00b8705741d24b0b61.jpg','介绍生活相关信息',50,1),(29,'电器','cate/20200103/45e2adcb03c7b2f4341295131c0a42d1.jpg','介绍电器相关信息',50,0),(30,'测试1',NULL,'',50,0),(31,'测试2',NULL,'',50,0),(32,'测试3',NULL,'',50,0),(33,'测试4',NULL,'',50,0),(34,'测试5',NULL,'',50,0),(35,'测试6',NULL,'',50,0),(36,'测试7',NULL,'',50,0),(37,'测试8',NULL,'',50,0),(38,'测试9',NULL,'',50,0),(39,'分类10',NULL,'',50,0);
/*!40000 ALTER TABLE `qy_cate` ENABLE KEYS */;

#
# Structure for table "qy_cate_content"
#

DROP TABLE IF EXISTS `qy_cate_content`;
CREATE TABLE `qy_cate_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `cateid` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT '#',
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `bg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

#
# Data for table "qy_cate_content"
#

/*!40000 ALTER TABLE `qy_cate_content` DISABLE KEYS */;
INSERT INTO `qy_cate_content` VALUES (35,'生活周边','cate/20191119/0ee497b84dfd3a96540d289abefd65b9.jpg','8','#','魅族防飞溅声波电动牙刷','智能压感防飞溅 | 超强震动清洁 | FDA 杜邦软毛 | 30天超长续航  | IPX7 级防水','299','#F55C5C'),(36,'生活周边','cate/20191119/0345c19d35169db211618398eca883f8.jpg','8','#','Pandaer 魔术师帽衫','Magic Pandaer前卫设计 | 100％精梳棉纱 | 潮流款式 挺括有型 | 亲肤内衬 柔顺舒适 ','399','#7063C9'),(46,'智能手机','cate/20191119/f0d4af0b1fb9e58d55887d505dcec5dd.jpg','1','/pages/detail/detail?id=38','魅族 16s Pro','魅族 16s Pro高通骁龙 855 Plus  | 索尼 4800W 像素超广角 AI 三摄','2999',''),(47,'魅族声学','cate/20191119/6503fb4d3b286d4ba463e4ae7a1e56b5.jpg','2','/pages/detail/detail?id=53','魅族 16T ','魅族 16T 6.5英寸极边全面屏 | 骁龙855旗舰处理器 | 4500mAh续航怪兽','1999','#F55C5C'),(48,'魅族声学','cate/20191119/d92addcf75ebc6897017f041393091bf.jpg','2','/pages/detail/detail?id=54','魅族 16Xs','极边全面屏 | 4800W AI三摄 | 疾速屏下指纹 | 4000mAh大电池 | 高通骁龙675 ','1499','#7063C9'),(49,'智能配件','cate/20191119/56cb42c5001b44f71da622ea06ed524d.jpg','7','/pages/detail/detail?id=56','魅族 16th','魅族 16th 骁龙845 | 屏幕下指纹 | 前后2000万像素摄像头 | 6.0英寸屏幕','1598','#FFAE45'),(50,'智能配件','cate/20191119/9153e916dbaea6d14a6bb573954ca52a.jpg','7','/pages/detail/detail?id=66','魅族 EP2C 耳机','魅族 EP2C 钕铁硼单元 Type-C接口','89','#55C3C3');
/*!40000 ALTER TABLE `qy_cate_content` ENABLE KEYS */;

#
# Structure for table "qy_floor"
#

DROP TABLE IF EXISTS `qy_floor`;
CREATE TABLE `qy_floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `display` tinyint(3) DEFAULT '1',
  `link_type` tinyint(3) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "qy_floor"
#

/*!40000 ALTER TABLE `qy_floor` DISABLE KEYS */;
INSERT INTO `qy_floor` VALUES (1,'楼层一','/pages/detail/detail?id=38','floor/20191030/f28cad006792b252c558f706a486a6ce.jpg',1,1,'12123'),(2,'楼层二','/pages/detail/detail?id=38','floor/20191030/6eccf29a8ebcd5cc1a7bf2c599d3c797.jpg',1,1,'123'),(3,'楼层三','/pages/webview/webview?url=http://www.intewl.com','floor/20191030/f885578a0e145b92ba6433b5cf036869.png',1,2,'');
/*!40000 ALTER TABLE `qy_floor` ENABLE KEYS */;

#
# Structure for table "qy_floor_content"
#

DROP TABLE IF EXISTS `qy_floor_content`;
CREATE TABLE `qy_floor_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floor_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

#
# Data for table "qy_floor_content"
#

/*!40000 ALTER TABLE `qy_floor_content` DISABLE KEYS */;
INSERT INTO `qy_floor_content` VALUES (1,1,'畅跑乐趣','喜欢跑步带给人的愉快','#','floor_content/20190419/746b6cb04d3b847d87b17d80970929c8.jpg,floor_content/20190419/75e9e34a56f578e4193476a469c4a822.jpg'),(2,1,'竞技游戏','开黑装备','#','floor_content/20190419/bd143f7357ff05b9a4a3aa25b4f99cf5.jpg,floor_content/20190419/6dec8ed04c5d072925f5f4d2ff8188a9.jpg'),(3,1,'百变运动','日常运动','#','floor_content/20190419/1271a1a51f719b9ec74d3f1274f1d79e.jpg'),(4,1,'二手寻宝','跳蚤市场','#','floor_content/20190419/d79209ce56a34a36c2bdcb38732f05fa.jpg'),(5,1,'称霸台球','斗智斗勇','#','floor_content/20190419/dcb862b5672745b3e51e66be6a2d068d.jpg'),(6,1,'潮鞋控','时尚经典','','floor_content/20190419/f54d7267792ad408d017f2e627147e7b.jpg'),(7,2,'免费新球','白条免息购','#','floor_content/20190419/a1a16d5fa8d5ae3be77e478578bb413f.jpg'),(8,2,'品牌秒杀','低价抢大牌','#','floor_content/20190419/b2cc17ac273777438ad4c50f53860def.jpg'),(9,2,'闪购','大牌现实特卖','#','floor_content/20190419/dfd8db708afbf4d0e8f5f1864c1bf7dd.jpg'),(10,2,'拍拍二手','IPhone 5折起','','floor_content/20190419/91db8ca370719d3ab8e29429b73923e2.jpg'),(11,2,'排行榜','专属购物指南','#','floor_content/20190419/394b16fdc058c541c8c638a9cb362041.jpg'),(12,2,'发现好货','探索新生活','','floor_content/20190419/2f0a5c34ea4177677aa9adab22458bdc.jpg'),(13,2,'会买专辑','教你买买买','','floor_content/20190419/54f9bb26c0669057166bcc8e540865f8.jpg'),(14,2,'新品首发','vivo X27','','floor_content/20190419/d36706c03851cd4936897b13576733da.jpg'),(15,3,'玩3C','手机电脑换新 用券更优惠','','floor_content/20190419/d81bd9effc42aa63ef807633aaf17ace.jpg,floor_content/20190419/371a53a38d93cdf0e0c3ce5c62c768b5.jpg'),(16,3,'京东家电','家电狂欢 精彩有你','','floor_content/20190419/8e405f959e5641829d4f21f038a62b7c.jpg,floor_content/20190419/9b0a9b96fc0b34ad82edf998091ccabc.jpg'),(17,3,'京东超市','超市好货特价抢','','floor_content/20190419/eaebabc9d9559e50734e45eda09627dc.jpg,floor_content/20190419/398018e910e01466d868c6d6bfb3569d.jpg'),(18,3,'爱家','家具日用 部分满199减100','','floor_content/20190419/d0f136128ea2d4c3bc317fd1a5ca7581.jpg,floor_content/20190419/94fb1219a8f176f27b517d70d2c0f658.jpg');
/*!40000 ALTER TABLE `qy_floor_content` ENABLE KEYS */;

#
# Structure for table "qy_icon"
#

DROP TABLE IF EXISTS `qy_icon`;
CREATE TABLE `qy_icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `display` tinyint(3) DEFAULT '1',
  `description` varchar(255) DEFAULT NULL,
  `link_type` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "qy_icon"
#

/*!40000 ALTER TABLE `qy_icon` DISABLE KEYS */;
INSERT INTO `qy_icon` VALUES (1,'魅族 16s Pro','/pages/detail/detail?id=38','icon/20191030/5ebf7bfa3cdb9a31277de59731a134bb.png',1,'12123132',1),(2,'魅族 16s','/pages/webview/webview?url=http://www.jd.com','icon/20191030/1ee0d487a1c6cee9b033237c54de3ece.png',1,'',2),(3,'魅族 Note9','/pages/detail/detail?id=53','icon/20191030/53d5f0d7a31287aaa16124f30c58af51.jpg',1,'阿斯顿发放',1),(4,'以旧换新','/pages/webview/webview?url=http:www.taobao.com','icon/20191030/3e00049496c8183661d2fa18e7a5f8fd.jpg',1,'',2);
/*!40000 ALTER TABLE `qy_icon` ENABLE KEYS */;

#
# Structure for table "qy_link"
#

DROP TABLE IF EXISTS `qy_link`;
CREATE TABLE `qy_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `router` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "qy_link"
#

/*!40000 ALTER TABLE `qy_link` DISABLE KEYS */;
INSERT INTO `qy_link` VALUES (1,'商品详情','/pages/detail/detail?id','1'),(2,'外链网站','/pages/webview/webview?url','2'),(3,'活动','/pages/active/active?type','2');
/*!40000 ALTER TABLE `qy_link` ENABLE KEYS */;

#
# Structure for table "qy_logistics"
#

DROP TABLE IF EXISTS `qy_logistics`;
CREATE TABLE `qy_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `use` varchar(255) DEFAULT NULL COMMENT '0表示不使用，1表示使用',
  `encode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "qy_logistics"
#

/*!40000 ALTER TABLE `qy_logistics` DISABLE KEYS */;
INSERT INTO `qy_logistics` VALUES (1,'圆通快递','10','福建省内件一般一公斤之内10元左右，每超出一公斤另加2-5元，省外件一般起步价（一公斤以内）12-15元，每超出1公斤加5-8元。','1','yto'),(2,'顺丰','20','福建省内件一般一公斤之内20元左右，每超出一公斤另加2-5元，省外件一般起步价（一公斤以内）12-15元，每超出1公斤加5-8元。','1','sf-express'),(3,'EMS','20','福建省内件一般一公斤之内20元左右，每超出一公斤另加2-5元，省外件一般起步价（一公斤以内）12-15元，每超出1公斤加5-8元。','1','china-ems'),(4,'申通快递','10','福建省内件一般一公斤之内10元左右，每超出一公斤另加2-5元，省外件一般起步价（一公斤以内）12-15元，每超出1公斤加5-8元。','1','sto'),(5,'中通快递','10','福建省内件一般一公斤之内10元左右，每超出一公斤另加2-5元，省外件一般起步价（一公斤以内）12-15元，每超出1公斤加5-8元。','1','zto');
/*!40000 ALTER TABLE `qy_logistics` ENABLE KEYS */;

#
# Structure for table "qy_member"
#

DROP TABLE IF EXISTS `qy_member`;
CREATE TABLE `qy_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telphone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "qy_member"
#

/*!40000 ALTER TABLE `qy_member` DISABLE KEYS */;
INSERT INTO `qy_member` VALUES (1,'18888888888','e10adc3949ba59abbe56e057f20f883e','1574402046','member/20200419/5c0140e259c419aa61e24aa877255651.png','英特网络'),(9,'18866478549','e10adc3949ba59abbe56e057f20f883e','1581855768',NULL,NULL);
/*!40000 ALTER TABLE `qy_member` ENABLE KEYS */;

#
# Structure for table "qy_mobile_banner"
#

DROP TABLE IF EXISTS `qy_mobile_banner`;
CREATE TABLE `qy_mobile_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '名称',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `link` varchar(100) DEFAULT NULL COMMENT '链接',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `display` tinyint(1) DEFAULT '1' COMMENT '1显示0隐藏',
  `type` varchar(255) DEFAULT '1' COMMENT '图片类型0表示首页',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "qy_mobile_banner"
#

/*!40000 ALTER TABLE `qy_mobile_banner` DISABLE KEYS */;
INSERT INTO `qy_mobile_banner` VALUES (11,'首页轮播','banner/20190121/496a004e02dccaca3340c22d93532929.jpg','hppt://www.intewl.com','',1,'0'),(12,'首页轮播','banner/20190121/52afb9231df3fcd87cc6c903cef0fe6e.jpg','http://www.intewl.com','',1,'0'),(13,'关于我们轮播','banner/20190121/0b0436fdb3859e3e7de06de38cbb6267.jpg','#','',1,'1'),(15,'产品展示轮播','banner/20190122/3b81b194804140c785b54a7f8dacec21.jpg','#','',1,'10'),(16,'人才招聘轮播','banner/20190125/9b666b01863d764ccd8d487be6c3c478.jpg','1','',1,'8'),(17,'111','mobile/banner/20190121\\c7c4b446205b9b7a10573328e5397760.jpg','12','123123',0,'0'),(18,'111','mobile/banner/20190121/a5b69b1a5dd1c8c853029524eedb7dea.jpg','123','',0,'0'),(19,'111','mobile/banner/20190121/ae9b9c2a34eca6bc05ad2f076dc9fc1c.jpg','111','',1,'0');
/*!40000 ALTER TABLE `qy_mobile_banner` ENABLE KEYS */;

#
# Structure for table "qy_order"
#

DROP TABLE IF EXISTS `qy_order`;
CREATE TABLE `qy_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernum` bigint(18) DEFAULT NULL,
  `attrid` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `allprice` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL COMMENT '1表示微信2表示支付宝',
  `paytime` varchar(255) DEFAULT NULL,
  `logistics` varchar(255) DEFAULT NULL COMMENT '物流',
  `logisticsprice` varchar(255) DEFAULT NULL,
  `logisticsnum` varchar(255) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL COMMENT '1表示待支付2表示待发货3订单完成4已取消',
  `uid` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cause` varchar(255) DEFAULT NULL COMMENT '取消原因',
  PRIMARY KEY (`id`),
  KEY `ordernum` (`ordernum`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

#
# Data for table "qy_order"
#

/*!40000 ALTER TABLE `qy_order` DISABLE KEYS */;
INSERT INTO `qy_order` VALUES (126,1584661710,'50','1','2999','3019','1584661710',NULL,NULL,'顺丰','20',NULL,1,'1','','intewl','18055654585','北京北京市大兴区','123123','重复购买'),(127,1584661714,'50','1','2999','3019','1584661714','1',NULL,'顺丰','20','73124853607476',3,'1','','intewl','18055654585','北京北京市大兴区','123123',NULL),(128,1584661761,'79','6','2699','16214','1584661761','2',NULL,'顺丰','20','3023823087',4,'1','','intewl','18055654585','北京北京市大兴区','123123',NULL),(129,1584661777,'79','6','2699,2999,1999','39206','1584661777','1',NULL,'EMS','20',NULL,2,'1','','intewl','18055654585','北京北京市大兴区','123123',NULL),(130,1585190268,'79','1','2699,2999,1999','7707','1585190268','2',NULL,'圆通快递','10',NULL,2,'1','','intewl','18055654585','北京北京市大兴区','123123',NULL),(131,1585190016,'79','1','2699,2999,1999','7707','1585190268','1','','圆通快递','10',NULL,2,'1','','intewl','18055654585','北京北京市大兴区','123123',NULL),(132,1584661777,'50','1','2999','3009','1585193170',NULL,NULL,'圆通快递','10',NULL,2,'1','','intewl','18055654585','北京北京市大兴区','123123','重复购买'),(133,1584661777,'79','6','2699,2999,1999','39206','1584661777','1','','EMS','20','',2,'1','','intewl','18055654585','北京北京市大兴区','123123',''),(134,1584661777,'79','1','2699,2999,1999','7707','1585190268','2','','圆通快递','10','',2,'1','','intewl','18055654585','北京北京市大兴区','123123',''),(135,1584661777,'79','1','2699,2999,1999','7707','1585190268','1','','圆通快递','10','',2,'1','','intewl','18055654585','北京北京市大兴区','123123',''),(136,1584661777,'50','1','2999','3009','1585193170','','','圆通快递','10','',2,'1','','intewl','18055654585','北京北京市大兴区','123123','重复购买');
/*!40000 ALTER TABLE `qy_order` ENABLE KEYS */;

#
# Structure for table "qy_pay"
#

DROP TABLE IF EXISTS `qy_pay`;
CREATE TABLE `qy_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alipay_appid` varchar(255) DEFAULT NULL,
  `alipay_privateKey` text,
  `alipay_publicKey` text,
  `alipay_url` varchar(255) DEFAULT NULL,
  `wxpay_appid` varchar(255) DEFAULT NULL,
  `wxpay_mchid` varchar(255) DEFAULT NULL,
  `wxpay_key` varchar(255) DEFAULT NULL,
  `wxpay_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "qy_pay"
#

/*!40000 ALTER TABLE `qy_pay` DISABLE KEYS */;
INSERT INTO `qy_pay` VALUES (1,NULL,NULL,NULL,'http://www.intewl.com',NULL,NULL,NULL,'http://www.intewl.com');
/*!40000 ALTER TABLE `qy_pay` ENABLE KEYS */;

#
# Structure for table "qy_product"
#

DROP TABLE IF EXISTS `qy_product`;
CREATE TABLE `qy_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `smalltitle` varchar(255) DEFAULT NULL,
  `mainimage` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL COMMENT '分类',
  `tag` varchar(255) DEFAULT NULL COMMENT '1、新品；2、热销；3、促销',
  `recommended` tinyint(3) DEFAULT '1',
  `summary` varchar(255) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '内容详情',
  `data` varchar(20) DEFAULT NULL COMMENT '发布时间',
  `attr_id` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `market_price` varchar(255) DEFAULT NULL,
  `sale` int(11) DEFAULT '0',
  `service` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "qy_product"
#

/*!40000 ALTER TABLE `qy_product` DISABLE KEYS */;
INSERT INTO `qy_product` VALUES (38,'魅族 16s Pro高通骁龙 855 Plus  | 索尼 4800W 像素超广角 AI 三摄','魅族 16s Pro','product/20191113/3b441163715a457ea33858743a46055f.png','1','2',1,'【现货开售】【限时3期免息】高通骁龙 855 Plus  | 索尼 4800W 像素超广角 AI 三摄 | 极边全面屏 | Flyme8 尝鲜体验 | 极速屏下指纹 | 全功能NFC','<p><img src=\"/ueditor/php/upload/image/20191113/1573634444264172.jpg\" title=\"1573634444264172.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191113/1573634444117257.jpg\" title=\"1573634444117257.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191113/1573634444626155.jpg\" title=\"1573634444626155.jpg\"/></p><p><br/></p>','1573634717','5,2',2999.00,'5999',4523,'1,3,5'),(53,'魅族 16T 6.5英寸极边全面屏 | 骁龙855旗舰处理器 | 4500mAh续航怪兽','魅族 16T ','product/20191114/5d4eee883dd1231bb479cbb6c628efac.jpg','1','2',1,'【湖光绿 现货开售】【原厂碎屏险特惠价99元 再送3个月延保】6.5英寸极边全面屏 | 骁龙855旗舰处理器 | 4500mAh续航怪兽 | UFS 3.0 高速闪存 | 双·立体声扬声器 | 全球频段 | 超广角 AI 三摄','<p><img src=\"/ueditor/php/upload/image/20191114/1573711308104575.jpg\" title=\"1573711308104575.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573711308552011.jpg\" title=\"1573711308552011.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573711308136574.jpg\" title=\"1573711308136574.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573711309925699.jpg\" title=\"1573711309925699.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573711309659935.jpg\" title=\"1573711309659935.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573711309624046.jpg\" title=\"1573711309624046.jpg\"/></p><p><br/></p>','1573711477','5,2',1999.00,'3999',1320,'1,3,5'),(54,'极边全面屏 | 4800W AI三摄 | 疾速屏下指纹 | 4000mAh大电池 | 高通骁龙675 ','魅族 16Xs','product/20191114/de1d6b586e6e398aca06c62577c7b292.jpg','1','2',1,'【限时3期免息】极边全面屏 | 4800W AI三摄 | 疾速屏下指纹 | 4000mAh大电池 | 高通骁龙675 | Onemind 3.0 | 绚丽多彩新色系','<p><img src=\"/ueditor/php/upload/image/20191114/1573711835590654.jpg\" title=\"1573711835590654.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573711835355786.jpg\" title=\"1573711835355786.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573711835150525.jpg\" title=\"1573711835150525.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573711835129129.jpg\" title=\"1573711835129129.jpg\"/></p><p><br/></p>','1573712002','5,2',1499.00,'1999',1201,'1,3,5'),(55,'魅族 16s Pro 高通骁龙 855 Plus | 索尼 4800W 像素超广角 AI 三摄','魅族 16s Pro','product/20191114/094cf1a7c02b06e69ed884408387cfeb.jpg','1','1',1,'【暮光森林 现货开售】【限时3期免息】高通骁龙 855 Plus | 索尼 4800W 像素超广角 AI 三摄 | 极边全面屏 | Flyme8 尝鲜体验 | 极速屏下指纹 | 全功能NFC','<p><img src=\"/ueditor/php/upload/image/20191114/1573712255103302.jpg\" title=\"1573712255103302.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573712255109860.png\" title=\"1573712255109860.png\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573712255131857.png\" title=\"1573712255131857.png\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573712255131776.png\" title=\"1573712255131776.png\"/></p><p><br/></p>','1573712414','5,2',2699.00,'3699',1432,'1,3,5'),(56,'魅族 16th 骁龙845 | 屏幕下指纹 | 前后2000万像素摄像头 | 6.0英寸屏幕','魅族 16th','product/20191114/d4cc38e1b3135943d233eb16d4fbadbe.jpg','1','2',1,'【限时特惠 1598起】【限时3期免息】骁龙845 | 屏幕下指纹 | 前后2000万像素摄像头 | 6.0英寸屏幕 | mEngine | 超线性双扬声器 | 铜管散热','<p><img src=\"/ueditor/php/upload/image/20191114/1573712630996529.jpg\" title=\"1573712630996529.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573712630494521.jpg\" title=\"1573712630494521.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573712630440731.jpg\" title=\"1573712630440731.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573712630565265.jpg\" title=\"1573712630565265.jpg\"/></p><p><br/></p>','1573712803','5,2',1598.00,'1999',1536,'1,3,5'),(57,'魅族 Note9 骁龙675 | 后置4800万 | 前置2000万 | 独家定制水滴设计全面屏','魅族 Note9','product/20191114/c9e15d59f8ad3fae43585ec6d9d27b58.jpg','1','2',1,'【限时领券立减100 券后价1099元】【限时6期免息】 骁龙675 | 后置4800万 | 前置2000万 | 独家定制水滴设计全面屏 | 4000mAh大容量电池 | 18W mCharge快充 | 吃鸡不卡 拍她更美','<p><img src=\"/ueditor/php/upload/image/20191114/1573712968730421.jpg\" title=\"1573712968730421.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573712968578175.jpg\" title=\"1573712968578175.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573712968587728.jpg\" title=\"1573712968587728.jpg\"/></p><p><br/></p>','1573713134','5,2',1199.00,'1599',2635,'1,3,5'),(58,'魅族 16 X 骁龙710 | 屏幕下指纹 | 对称式全面屏 | 前置2000万像素 + AI人脸识别','魅族 16 X','product/20191114/38235ef4833c423dc50fe8a457c3742a.jpg','1','2',1,'【限时3期免息】骁龙710 | 屏幕下指纹 | 对称式全面屏 | 前置2000万像素 + AI人脸识别 | 后置索尼2000万像素双摄 + 光学防抖','<p><img src=\"/ueditor/php/upload/image/20191114/1573713758845015.jpg\" title=\"1573713758845015.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573713758121982.jpg\" title=\"1573713758121982.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573713759140115.jpg\" title=\"1573713759140115.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573713759656449.jpg\" title=\"1573713759656449.jpg\"/></p><p><br/></p>','1573713924','5,2',1098.00,'1599',1800,'1,3,5'),(59,'魅族 X8 骁龙710 | 6.2寸定制浅刘海屏 | 89.6%屏占比 | 旗舰双摄 ','魅族 X8','product/20191114/ee460bb8815f80cfd6d86abf25d08170.jpg','1','2',1,'【限时特惠 4+64G券后价898元】【限时6期免息】骁龙710 | 6.2寸定制浅刘海屏 | 89.6%屏占比 | 旗舰双摄 | 人脸+指纹双解锁','<p><img src=\"/ueditor/php/upload/image/20191114/1573714283102919.jpg\" title=\"1573714283102919.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573714283134616.jpg\" title=\"1573714283134616.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573714283109511.jpg\" title=\"1573714283109511.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573714284722503.jpg\" title=\"1573714284722503.jpg\"/></p><p><br/></p>','1573714877','5,2',1298.00,'1498',4210,'1,3,5'),(62,'魅族 HD60 头戴式蓝牙耳机Type-C充电 | 触控操作','魅族 HD60','product/20191114/159e0697113860c358ebf84c004e0916.jpg','2','2',1,'【限时免息】40mm生物振膜 | Type-C充电 | 触控操作 | 蓝牙5.0 | 轻奢品质','<p><img src=\"/ueditor/php/upload/image/20191114/1573718599870016.jpg\" title=\"1573718599870016.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573718599104687.jpg\" title=\"1573718599104687.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573718599106606.jpg\" title=\"1573718599106606.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573718599109834.jpg\" title=\"1573718599109834.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573718599741609.jpg\" title=\"1573718599741609.jpg\"/></p><p><br/></p>','1573718738','6',499.00,'699',2543,'1,3,5'),(63,'魅族 EP3C 耳机Hi-Res 认证高解析音质','魅族 EP3C 耳机','product/20191114/631a1ad6a85aa0220491cac63a716bad.jpg','2','2',1,'Hi-Res 认证高解析音质 | 高保真生物纤维振膜','<p><img src=\"/ueditor/php/upload/image/20191114/1573718946448391.jpg\" title=\"1573718946448391.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573718946179786.jpg\" title=\"1573718946179786.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573718946309828.jpg\" title=\"1573718946309828.jpg\"/></p><p><br/></p>','1573719023','6',129.00,'159',1230,'1,3,5'),(64,'魅族 HiFi 解码耳放 PRO性能DAC芯片','魅族 HiFi 耳放','product/20191114/f13f1bfcf8b54a82b5b7fec2c03bfdde.jpg','2','1',1,'性能DAC芯片 | 超强二级运放 | Hi-Res 认证高解析音质 | 高阻抗推力','<p><img src=\"/ueditor/php/upload/image/20191114/1573719238513110.jpg\" title=\"1573719238513110.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719238630071.jpg\" title=\"1573719238630071.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719238352516.jpg\" title=\"1573719238352516.jpg\"/></p><p><br/></p>','1573719340','6',269.00,'299',1236,'1,3,5'),(65,'魅族 POP2 真无线蓝牙耳机蓝牙5.0 超长续航','魅族 POP2','product/20191114/a35da70cd2cf84353aed8723eab42077.jpg','2','1',1,'【限时3期免息】蓝牙5.0 超长续航','<p><img src=\"/ueditor/php/upload/image/20191114/1573719734784899.jpg\" title=\"1573719734784899.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719734600293.jpg\" title=\"1573719734600293.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719734662861.jpg\" title=\"1573719734662861.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735666906.jpg\" title=\"1573719735666906.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735733863.jpg\" title=\"1573719735733863.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735129215.jpg\" title=\"1573719735129215.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735122382.jpg\" title=\"1573719735122382.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735257071.jpg\" title=\"1573719735257071.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735117502.jpg\" title=\"1573719735117502.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735111004.jpg\" title=\"1573719735111004.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735913048.jpg\" title=\"1573719735913048.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573719735101210.jpg\" title=\"1573719735101210.jpg\"/></p><p><br/></p>','1573719844','6',369.00,'569',1204,'1,3,5'),(66,'魅族 EP2C 钕铁硼单元 Type-C接口','魅族 EP2C 耳机','product/20191114/20bdfb235adb4fb58df9a2528efcd38e.jpg','2','1',1,'钕铁硼单元 Type-C接口','<p><img src=\"/ueditor/php/upload/image/20191114/1573720620288829.jpg\" title=\"1573720620288829.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573720621821907.jpg\" title=\"1573720621821907.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573720621122231.jpg\" title=\"1573720621122231.jpg\"/></p><p><br/></p>','1573720705','6',89.00,'129',1305,'1,3,5'),(67,'魅族 EP63NC 无线降噪耳机智能降噪 声临其境','魅族 EP63NC ','product/20191114/e60a3ef0622bf7624db4f82e1b3ddfd1.jpg','2','1',1,'【限时3期免息】智能降噪 声临其境','<p><img src=\"/ueditor/php/upload/image/20191114/1573720897135476.jpg\" title=\"1573720897135476.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191114/1573720897599432.jpg\" title=\"1573720897599432.jpg\"/></p><p><br/></p>','1573720997','6',429.00,'699',1102,'1,3,5'),(68,'魅族 16s Pro 亲肤壳膜套装','魅族 16s Pro套装  ','product/20191118/2408b4c89a26a136eb3c1924129d073a.jpg','7','1',1,'亲肤亲近，安全防护','<p><img src=\"/ueditor/php/upload/image/20191118/1574070192128626.jpg\" title=\"1574070192128626.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574070192798368.jpg\" title=\"1574070192798368.jpg\"/></p><p><br/></p>','1574070257','7',39.00,'69',1285,'1,3,5'),(69,'魅族移动电源3双向快充双充电口 轻薄小巧','魅族移动电源3','product/20191118/53a01b4ca9e4c20861dc4ae4c7657328.jpg','7','1',1,'快充双充电口 轻薄小巧','<p><img src=\"/ueditor/php/upload/image/20191118/1574070439233404.jpg\" title=\"1574070439233404.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574070439287753.jpg\" title=\"1574070439287753.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574070439431608.jpg\" title=\"1574070439431608.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574070439126913.jpg\" title=\"1574070439126913.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574070439929314.jpg\" title=\"1574070439929314.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574070439906249.jpg\" title=\"1574070439906249.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574070439630458.jpg\" title=\"1574070439630458.jpg\"/></p><p><br/></p>','1574070561','7',79.00,'109',1462,'1,3,5'),(70,'魅族 Micro USB 数据线','魅族 USB 数据线','product/20191118/e158c173c7cb91b6644d7c3c8e9601e2.jpg','7','1',1,'广泛兼容 经久耐用','<p><img src=\"/ueditor/php/upload/image/20191118/1574070681986503.jpg\" title=\"1574070681986503.jpg\" alt=\"2.jpg\"/></p>','1574070731','7',14.00,'29',522,'1,3,5'),(71,'魅族 Type-C 金属数据线','魅族 Type-C 数据线','product/20191118/344ad9d4587b118ae4426a2fb5369e87.jpg','7','1',1,'支持2A快速充电 耐用又放心','<p><img src=\"/ueditor/php/upload/image/20191118/1574070830193643.jpg\" title=\"1574070830193643.jpg\" alt=\"2.jpg\"/></p>','1574070942','7',39.00,'59',432,'1,3,5'),(72,'魅族 16X 高透保护膜支持魅族16X屏幕指纹解锁','魅族 16X 高透保护膜','product/20191118/1a57d8f660f27300506fc534881bcd89.jpg','7','1',1,'支持魅族16X屏幕指纹解锁','<p><img src=\"/ueditor/php/upload/image/20191118/1574071251389136.jpg\" title=\"1574071251389136.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574071251169114.jpg\" title=\"1574071251169114.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574071251150826.jpg\" title=\"1574071251150826.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191118/1574071251649392.jpg\" title=\"1574071251649392.jpg\"/></p><p><br/></p>','1574071301','7',19.00,'39',632,'1,3,5'),(73,'魅族 16T 亲肤壳膜套装亲肤亲近，安全防护','魅族 16T套装','product/20191119/a2c8a921db56857892c0b160af2e9750.jpg','7','1',1,'亲肤亲近，安全防护','<p><img src=\"/ueditor/php/upload/image/20191119/1574148789497791.jpg\" title=\"1574148789497791.jpg\" alt=\"4.jpg\"/></p>','1574148857','7',39.00,'69',254,'1,3,5'),(74,'魅族防飞溅声波电动牙刷','魅族电动牙刷','product/20191119/fc9f8412c4e9d43d91405f32ba9fda7d.jpg','8','1',1,'智能压感防飞溅 | 超强震动清洁 | FDA 杜邦软毛 | 30天超长续航 | IPX7 级防水全身防霉防污垢 | 四种模式全面呵护','<p><img src=\"/ueditor/php/upload/image/20191119/1574149219140102.jpg\" title=\"1574149219140102.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574149219119370.jpg\" title=\"1574149219119370.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574149219106004.jpg\" title=\"1574149219106004.jpg\"/></p><p><br/></p>','1574149263','8',299.00,'369',620,'1,3,5'),(75,'Pandaer 魔术师帽衫','魔术师帽衫','product/20191119/abb49a8727265e0beea659e96cb6a607.jpg','8','1',1,'Magic Pandaer前卫设计 | 100％精梳棉纱 | 潮流款式 挺括有型 | 亲肤内衬 柔顺舒适','<p><img src=\"/ueditor/php/upload/image/20191119/1574149526200097.jpg\" title=\"1574149526200097.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574149526167608.jpg\" title=\"1574149526167608.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574149527116826.jpg\" title=\"1574149527116826.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574149527114374.jpg\" title=\"1574149527114374.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574149527286806.jpg\" title=\"1574149527286806.jpg\"/></p><p><br/></p>','1574149597','8,9',399.00,'459',850,'1,3,5'),(76,'魅族路由器 极速版','魅族路由器','product/20191119/f089903672c1ca039f8f9fec09c9cb3b.jpg','8','1',1,'【限时特惠】天生不凡 快狠稳','<p><img src=\"/ueditor/php/upload/image/20191119/1574150193518059.jpg\" title=\"1574150193518059.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150193246356.jpg\" title=\"1574150193246356.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150193762867.jpg\" title=\"1574150193762867.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150193125893.jpg\" title=\"1574150193125893.jpg\"/></p><p><br/></p>','1574150253','8',79.00,'109',896,'1,3,5'),(77,'魅族极简都市双肩包','双肩包','product/20191119/a144c9b6ef8967303a9f8bdd6a5ee7f7.jpg','8','1',1,'650D高耐磨牛津布 大容量多功能收纳','<p><img src=\"/ueditor/php/upload/image/20191119/1574150851856719.jpg\" title=\"1574150851856719.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150851139126.jpg\" title=\"1574150851139126.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150851138132.jpg\" title=\"1574150851138132.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150851579853.jpg\" title=\"1574150851579853.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150851380616.jpg\" title=\"1574150851380616.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150851574517.jpg\" title=\"1574150851574517.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150851123918.jpg\" title=\"1574150851123918.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150851118711.jpg\" title=\"1574150851118711.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574150851258577.jpg\" title=\"1574150851258577.jpg\"/></p><p><br/></p>','1574150872','8',179.00,'209',956,'1,3,5'),(78,'Lifeme 梨木伞','梨木伞','product/20191119/e73de2c293bd54c8f86f5d99da6ca029.jpg','8','1',1,'高定时装压花伞布 | 隔绝99% UV | 进口环保拒水涂层 | 8骨静音防风伞架','<p><img src=\"/ueditor/php/upload/image/20191119/1574151017138519.jpg\" title=\"1574151017138519.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574151017129353.jpg\" title=\"1574151017129353.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574151018614579.jpg\" title=\"1574151018614579.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574151018136978.jpg\" title=\"1574151018136978.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574151018725515.jpg\" title=\"1574151018725515.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574151018662689.jpg\" title=\"1574151018662689.jpg\"/></p><p><br/></p>','1574151062','8',499.00,'559',678,'1,3,5'),(79,'Pandaer readnap T恤','T恤','product/20191119/cf3ca8caacc280b243f3ae9d6061fca8.jpg','8','1',1,'潮趣设计 | 优质纯棉德国织造 | 亲肤舒适','<p><img src=\"/ueditor/php/upload/image/20191119/1574151214130136.jpg\" title=\"1574151214130136.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574151214139285.jpg\" title=\"1574151214139285.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574151214908056.jpg\" title=\"1574151214908056.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20191119/1574151214193987.jpg\" title=\"1574151214193987.jpg\"/></p><p><br/></p>','1574232804','8,9',199.00,'299',456,'1,3,5'),(82,'电器','电器','product/20200212/96e03d6e83f6355c45f62b1de29d3365.jpg','29','1',1,'','','1581475292',NULL,0.00,'',0,'1,3,5'),(83,'测试1','测试1','product/20200212/14d89531966ab6d071a3047a3bbba444.jpg','30','1',1,'','','1581475376','',0.00,'',0,'1,3,5'),(84,'测试2','','product/20200212/688df51b0378eeb3908b2f3267380121.jpg','31','1',1,'','','1581475355',NULL,0.00,'',0,'1,3,5'),(85,'测试3','测试3','product/20200212/dcc8c3d30e28405489401dd2b3501ba1.jpg','32','1',1,'','','1581475401',NULL,0.00,'',0,'1,3,5'),(86,'测试4','测试4','product/20200212/b2cf14440050cb72c3b61a91cc3e9eb7.jpg','33','1',1,'','','1581475418',NULL,0.00,'',0,'1,3,5'),(87,'测试5','测试5','product/20200212/755ac968e7eadfaf0561b7597d392bcd.jpg','34','1',1,'','','1581475444',NULL,0.00,'',0,'1,3,5'),(88,'测试6','测试6','product/20200212/57521c74265c98dd2eb452bd2536e96b.jpg','35','1',1,'','','1581475491',NULL,0.00,'',0,'1,3,5'),(89,'测试7','测试7','product/20200212/61fa81842c755ecc1d7d065a43af2d8f.jpg','36','1',1,'','','1581476161',NULL,0.00,'',0,'1,3,5'),(90,'测试8','测试8','product/20200212/82ccef729608442664e7da0891845fdc.jpg','37','1',1,'','','1581478674','',0.00,'',0,'1,3,5'),(91,'测试9','测试9','product/20200212/01afa52f25dee5d8d598cd7a35fffd8c.jpg','38','1',1,'','','1581479463',NULL,0.00,'',0,'1,3'),(92,'分类10','分类10','product/20200212/42fb657e1c87f04e2f45fd66c0efa044.jpg','39','1',1,'','','1581479640',NULL,0.00,'',0,'1,3,5');
/*!40000 ALTER TABLE `qy_product` ENABLE KEYS */;

#
# Structure for table "qy_product_attr"
#

DROP TABLE IF EXISTS `qy_product_attr`;
CREATE TABLE `qy_product_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `attr_0` varchar(255) DEFAULT NULL,
  `attr_1` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `product_num` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

#
# Data for table "qy_product_attr"
#

/*!40000 ALTER TABLE `qy_product_attr` DISABLE KEYS */;
INSERT INTO `qy_product_attr` VALUES (50,38,'红色','32GB','2999','1000','001','备注1'),(51,38,'红色','64GB','3999','1500','002','备注2'),(52,38,'蓝色','32GB','2999','2000','003','备注3'),(53,38,'蓝色','64GB','3999','2500','004','备注4'),(71,53,'蓝色','64GB','1999','500','',''),(72,53,'蓝色','128GB','2999','600','',''),(73,53,'绿色','64GB','1999','700','',''),(74,53,'绿色','128GB','2999','800','',''),(75,54,'蓝色','64GB','1499','500','',''),(76,54,'蓝色','128GB','1699','600','',''),(77,54,'白色','64GB','1499','700','',''),(78,54,'白色','128GB','1699','800','',''),(79,55,'绿色','128GB','2699','520','',''),(80,55,'绿色','256GB','3299','620','',''),(81,55,'白色','128GB','2699','750','',''),(82,55,'白色','256GB','3299','450','',''),(83,56,'黑色','64GB','1598','1000','',''),(84,56,'黑色','128GB','1698','2000','',''),(85,56,'蓝色','64GB','1598','1500','',''),(86,56,'蓝色','128GB','1698','1400','',''),(87,56,'白色','64GB','1598','1300','',''),(88,56,'白色','128GB','1698','1200','',''),(89,57,'黑色','64GB','1199','1500','',''),(90,57,'黑色','128GB','1299','1600','',''),(91,57,'蓝色','64GB','1199','1700','',''),(92,57,'蓝色','128GB','1299','1800','',''),(93,57,'白色','64GB','1199','1900','',''),(94,57,'白色','128GB','1299','2000','',''),(95,58,'黑色','64GB','1098','1200','',''),(96,58,'黑色','128GB','1298','1300','',''),(97,58,'蓝色','64GB','1098','1400','',''),(98,58,'蓝色','128GB','1298','1500','',''),(99,58,'白色','64GB','1098','1600','',''),(100,58,'白色','128GB','1298','1700','',''),(101,58,'金色','64GB','1098','1800','',''),(102,58,'金色','128GB','1298','1900','',''),(109,59,'黑色','64GB','1298','1500','',''),(110,59,'黑色','128GB','1498.00','1600','',''),(111,59,'蓝色','64GB','1298','1700','',''),(112,59,'蓝色','128GB','1498.00','1800','',''),(113,59,'白色','64GB','1298','1900','',''),(114,59,'白色','128GB','1498.00','2000','',''),(125,62,'黑色',NULL,'499','500','',''),(126,63,'白色',NULL,'129','1000','',''),(127,64,'黑色',NULL,'269','1500','',''),(128,65,'白色',NULL,'369','500','',''),(129,66,'黑色',NULL,'89','1000','',''),(130,67,'黑色',NULL,'429','1000','',''),(131,68,'黑色',NULL,'39','1000','',''),(132,69,'黑色',NULL,'79','500','',''),(133,69,'白色',NULL,'79','600','',''),(134,70,'白色',NULL,'14','100','',''),(135,71,'金色',NULL,'39','1500','',''),(136,71,'银色',NULL,'39','1200','',''),(137,72,'透明',NULL,'19','100','',''),(138,73,'透明',NULL,'39','1500','',''),(139,74,'白色',NULL,'299','1500','',''),(140,75,'黑色','S165','399','1200','',''),(141,75,'黑色','M170','399','1300','',''),(142,75,'黑色','L175','399','1400','',''),(143,75,'黑色','XL180','399','1500','',''),(144,75,'黑色','2XL185','399','1600','',''),(145,75,'黑色','3XL190','399','1700','',''),(146,75,'黑色','XS160','399','1800','',''),(147,75,'黑色','XXS155','399','1900','',''),(148,77,'黑色',NULL,'179','500','',''),(149,77,'灰色',NULL,'179','1500','',''),(150,78,'黑色',NULL,'499','1500','',''),(163,79,'黑色','S165','','','',''),(164,79,'黑色','M170','','','',''),(165,79,'黑色','L175','','','',''),(166,79,'黑色','XL180','','','',''),(167,79,'黑色','2XL185','','','',''),(168,79,'黑色','3XL190','','','',''),(169,76,'白色',NULL,'79','1500',NULL,NULL);
/*!40000 ALTER TABLE `qy_product_attr` ENABLE KEYS */;

#
# Structure for table "qy_product_image"
#

DROP TABLE IF EXISTS `qy_product_image`;
CREATE TABLE `qy_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `othermain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

#
# Data for table "qy_product_image"
#

/*!40000 ALTER TABLE `qy_product_image` DISABLE KEYS */;
INSERT INTO `qy_product_image` VALUES (45,38,'product/20191113/1dd1da66d659f79a55bad1df7d1123f1.jpg'),(46,38,'product/20191113/e65c9e01238be19c6f4df52290f73f44.jpg'),(47,38,'product/20191113/03b10180741280dbcc76eeaf322a4201.jpg'),(61,53,'product/20191114/1a5879cc8f16869312b14f3f12a0ed01.jpg'),(62,53,'product/20191114/cddf7981818e7f5306a417588af67d99.jpg'),(63,53,'product/20191114/e178fccada06e258fa2399586f9838d8.jpg'),(64,54,'product/20191114/2f2fe26fcf2d1a42e5b55d67a1b41267.jpg'),(65,54,'product/20191114/67ee7aa8e18e950d1c8910a427cf6652.jpg'),(66,54,'product/20191114/ac6517ae901ff4b77c7997f56938c1a7.jpg'),(67,55,'product/20191114/04fcd0f8d17a7a3f15360e2870b68633.jpg'),(68,55,'product/20191114/2b945a6bb5a7228e77c8194b207f8269.jpg'),(69,55,'product/20191114/f363f576c282ddf1462c83aef1d4d980.jpg'),(70,56,'product/20191114/789821d856d63dee815a7c08331dbfcf.jpg'),(71,56,'product/20191114/0b90480f1a5f78dece0e24d3cf565b85.jpg'),(72,56,'product/20191114/f1e0dfc69419e06111220eb4ce6da8db.jpg'),(73,57,'product/20191114/68845bf52e6c0ff621828709bd104a17.jpg'),(74,57,'product/20191114/bcd7709382c8b4865d55c21655a36fce.jpg'),(75,57,'product/20191114/15906bed97df9983728956272a299b9a.jpg'),(76,58,'product/20191114/757e7828b827d486d8f14b04df14cb45.jpg'),(77,58,'product/20191114/18f53c31562ad571a55e06143f6b3cb8.jpg'),(78,58,'product/20191114/f3229da5abbfca9ebf7415c74679a582.jpg'),(82,59,'product/20191114/2d238e99483780c7690c5d88dc7df95b.jpg'),(83,59,'product/20191114/ba5e42daae7237d426174d903c6eb159.jpg'),(84,59,'product/20191114/fa5341035a4ba809911f97842207cee4.jpg'),(85,62,'product/20191114/95e9b74719aedda00bcf3bc6d98cb37a.jpg'),(86,62,'product/20191114/568bdf4ba56b9401e7506c7f6b815bd2.jpg'),(87,62,'product/20191114/198ccc5101a8e7fa1075c9c649b4d02e.jpg'),(88,63,'product/20191114/02b5e484a7caa3a8802050735da21f83.jpg'),(89,63,'product/20191114/e0d8280b5ba88902730b289d5d603041.jpg'),(90,63,'product/20191114/862d54001fa31a1c3d195265a3a5ed6d.jpg'),(91,64,'product/20191114/1eddb25d3073ac55d152106e28ee8670.jpg'),(92,64,'product/20191114/4455c22e5800880c74bc9fe8d6984495.jpg'),(93,64,'product/20191114/da1376f48c2ddf155741e45765046b27.jpg'),(94,65,'product/20191114/569117388932b0322075155e0cb7a2e7.jpg'),(95,65,'product/20191114/90b9d4416554b798178f7b6f1bbf27e9.jpg'),(96,65,'product/20191114/0a7ee447a118d14167c8e36ba1310fc2.jpg'),(97,66,'product/20191114/48b41af6a31d86bf35e89955f64bcb9d.jpg'),(98,66,'product/20191114/29684d0f46f12b69b4eea90bb33f9aff.jpg'),(99,66,'product/20191114/3d909f98f5a5a0e338a8737bda610e54.jpg'),(100,67,'product/20191114/fcb3a54a263df60a1956906f2badd025.jpg'),(101,67,'product/20191114/c92070b787a5f877c48d0cfca3ea9f5d.jpg'),(102,67,'product/20191114/18b72f95c0ed21ade5adf9ad242345bc.jpg'),(103,68,'product/20191118/d3d412212007ce03f39d8eb668b46105.jpg'),(104,68,'product/20191118/e6d3d6056722104ab2920a271ac2f188.jpg'),(105,69,'product/20191118/95701102b91125874b66657395cb2821.jpg'),(106,69,'product/20191118/04b8b93b8196338df49271153329963e.jpg'),(107,69,'product/20191118/4e870e19270df9dcfa8fec25ba9b664d.jpg'),(108,73,'product/20191119/b1291830d868173cec688073083d27fb.jpg'),(109,73,'product/20191119/cda3738d2b73bfecd51c0e7de41bddad.jpg'),(110,74,'product/20191119/af8ef5b9e6bf5b035edc18bfb8b91d79.jpg'),(111,74,'product/20191119/5dfd7452b43caf2c307bbe0a37656bab.jpg'),(112,74,'product/20191119/5ca735e0e81f7008701f1bb1cc06df14.jpg'),(113,75,'product/20191119/b3f296e17b2c5ce4ac97440154c2d51f.jpg'),(114,76,'product/20191119/8acb894e269f8c09ad05fad1df7454ee.jpg'),(115,76,'product/20191119/1da7d83556c880bde3bc0238d1cab5c9.jpg'),(116,76,'product/20191119/825966767e538f6ac0a119ce1252338d.jpg'),(117,77,'product/20191119/ebae69386297fc9ff2ed96408e075acc.jpg'),(118,77,'product/20191119/eb7c3843314412979654a206a548018a.jpg'),(119,77,'product/20191119/3653237e6769adebb51926a85d0c14e8.jpg'),(120,78,'product/20191119/02424a094c4b223161ed4960ae2bae4f.jpg'),(121,78,'product/20191119/a3111528b5bc96e29cc545636ccc200f.jpg'),(122,78,'product/20191119/e545d58aadcd9920374f611af0969bdf.jpg'),(123,79,'product/20191119/f78e373277d7fa50ae261def8db8b9d9.jpg');
/*!40000 ALTER TABLE `qy_product_image` ENABLE KEYS */;

#
# Structure for table "qy_product_service"
#

DROP TABLE IF EXISTS `qy_product_service`;
CREATE TABLE `qy_product_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "qy_product_service"
#

/*!40000 ALTER TABLE `qy_product_service` DISABLE KEYS */;
INSERT INTO `qy_product_service` VALUES (1,'花呗分期','product_service/20191120/9de872da6ed85ce09d79a0e6bbe19f9b.png','花呗分期是由蚂蚁花呗联合魅族商城共同推出的“先购物后付款”的支付体验，支持预支蚂蚁花呗额度，免息期最长可达41天，可选择分3、6、12期还款。'),(3,'顺丰包邮','product_service/20191120/fabccf7d2d75312a1f65342fd068ee50.png','花呗分期是由蚂蚁花呗联合魅族商城共同推出的“先购物后付款”的支付体验，支持预支蚂蚁花呗额度，免息期最长可达41天，可选择分3、6、12期还款。'),(5,'七天无理由退换货','product_service/20191120/c5999ff2161e09fcaea993fae241a596.png','花呗分期是由蚂蚁花呗联合魅族商城共同推出的“先购物后付款”的支付体验，支持预支蚂蚁花呗额度，免息期最长可达41天，可选择分3、6、12期还款。');
/*!40000 ALTER TABLE `qy_product_service` ENABLE KEYS */;

#
# Structure for table "qy_product_spec"
#

DROP TABLE IF EXISTS `qy_product_spec`;
CREATE TABLE `qy_product_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) DEFAULT NULL,
  `specname` varchar(255) DEFAULT NULL,
  `specvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

#
# Data for table "qy_product_spec"
#

/*!40000 ALTER TABLE `qy_product_spec` DISABLE KEYS */;
INSERT INTO `qy_product_spec` VALUES (38,'38','品牌','魅族'),(39,'38','型号','魅族 16s Pro'),(40,'38','尺寸','151.9*73.4*7.65mm'),(41,'38','重量','166g'),(42,'38','屏幕尺寸','6.2 英寸'),(43,'38','对比度','100000:1\t'),(44,'38','分辨率','2232 x 1080'),(45,'38','制造工艺','On-Cell 全贴合'),(46,'38','运行内存（RAM）','6GB/8GB'),(47,'38','机身内存','128GB'),(48,'38','CPU','Qualcomm® 骁⻰™ 855+ 8 核⼼移动平台'),(49,'38','GPU','Adreno™ 640 图形处理器'),(63,'53',' 尺寸','6.5 英寸'),(64,'53','屏幕比例','18.6 : 9'),(65,'53','分辨率','2232 x 1080'),(66,'53','对比度','100000 : 1'),(67,'53','PPI','382'),(68,'53','处理器与内存','Qualcomm® 骁龙™ 855 8 核心移动平台'),(69,'53','后置摄像头','主镜头：1200 万像素 + SONY IMX362 + ƒ/1.9'),(70,'53','前置摄像头','1600 万像素'),(71,'54','屏幕','6.2 英寸极边全面屏'),(72,'54','电池容量','6GB+64GB / 6GB+128GB'),(73,'54','重量','165g'),(74,'54','尺寸','6.2 英寸'),(75,'54','处理器',' Qualcomm® 骁龙™ 675 高性能移动平台'),(76,'54','内存','6GB LPDDR4X 高速省电 超大内存'),(77,'54','后置摄像头','4800 万像素 + 500 万像素 + 800 万像素'),(78,'54','前置摄像头','1600 万像素'),(79,'55','处理器','高通骁龙 855 Plus 旗舰处理器'),(80,'55','摄像头','4800W 全索尼光学防抖 AI 三摄'),(81,'55','闪存','UFS 3.0 高速闪存'),(82,'55','智能平台','Flyme 8 尝鲜体验'),(83,'55','声音设备','第二代「双」·超线性扬声器'),(84,'55','引擎','mEngine 3.0 触感引擎'),(85,'55','屏幕','极边全面屏'),(86,'55','指纹','Super mTouch 疾速屏下指纹'),(87,'56','尺寸','6.0 英寸'),(88,'56','分辨率','2160 x 1080'),(89,'56','电池','3010mAh （典型值）'),(90,'56','重量','152g'),(91,'56','处理器',' Qualcomm® 骁龙™ 845 高性能移动平台'),(92,'56','后置摄像头','1200 万像素 + 2000 万像素双摄'),(93,'56','前置摄像头','2000 万像素'),(94,'57','处理器','高通骁龙 675 平台'),(95,'57','屏幕','6.2 英寸全面屏'),(96,'57','像素','四合一 1.6μm 大像素'),(97,'57','内存','最高 6GB 大内存'),(98,'57','芯片','芯片级游戏优化'),(99,'57','电池','4000mAh 超大电池'),(100,'57','摄像头','最小2000万像素前摄模组'),(101,'57','内核','One Mind AI 引擎'),(102,'58','屏幕','对称式三星全面屏'),(103,'58','处理器','高通骁龙 710 平台'),(104,'58','指纹','屏下指纹支付'),(105,'58','内存','全系标配 6GB 超大内存'),(106,'58','像素','人脸解锁 2.0'),(107,'58','摄像头','索尼旗舰双摄组合'),(108,'58','模式','AI 智能提速'),(109,'58','内核','全面屏手势交互'),(118,'59','处理器','高通骁龙 710 平台'),(119,'59','屏幕','定制化 6.2 英寸全面屏'),(120,'59','屏幕','超高屏占比'),(121,'59','内存','高通骁龙 710 平台 Hexagon 685 AI 处理芯片 超窄左右边框 定制化 6.2 英寸全面屏 超高屏占比 旗舰级 COF 工艺 可选 6GB 超大内存'),(122,'59','摄像头','前置 2000 万像素'),(123,'59','内核','硬件级 AI 场景识别'),(124,'59','模式','AI 智能提速'),(125,'59','内核','升级 Android O 内核'),(126,'62','品牌','魅族'),(127,'62','名称','魅族 HD60 头戴式蓝牙耳'),(128,'62','蓝牙版本','BT 5.0'),(129,'62','续航时间','25H'),(130,'62','电池容量','500mAh'),(131,'62','最大功率','40mm'),(132,'63','品牌','魅族'),(133,'63','型号','魅族 EP3C 耳机'),(134,'63','佩戴方式','半入耳式'),(135,'63','耳机类别','有线耳机'),(136,'63','缆线长度','1.2米'),(137,'63','插头类型','USB Type-C'),(138,'63','频响范围','20Hz~40KHz'),(139,'63','灵敏度','101±3dB at 1KHz'),(140,'63','阻抗','32Ω'),(141,'64','品牌','魅族'),(142,'64','品名','魅族 HiFi 解码耳放 PRO'),(143,'64','频率范围','20Hz-40KHz'),(144,'64','接口类型','Type-C'),(145,'64','PCM解码能力','32bit / 384kHz'),(146,'64','DSD解码能力','DSD64／DSD128'),(147,'64','信噪比/SNR','＞120dB'),(148,'64','动态范围/DNR','＞120dB'),(149,'64','失真/THD+N','＜0.0003%'),(150,'64','频响/FR','20Hz-40KHz'),(151,'64','输出负载','16Ω ~ 600Ω自适应'),(152,'65','品牌','魅族'),(153,'65','名称','魅族 POP2'),(154,'65','蓝牙版本','BT5.0'),(155,'65','电池','锂聚合物点餐'),(156,'65','传输距离','10m'),(157,'65','电池容量','55mAh*2/350mAh'),(158,'66','品牌','魅族'),(159,'66','型号','魅族EP2C耳机'),(160,'66','佩戴方式','半入耳式'),(161,'66','耳机类别','有线耳机'),(162,'66','有无麦克风','带麦'),(163,'66','有／无 线','有线'),(164,'66','插头类型','USB Type-C'),(165,'66','频响范围','20Hz~20KHz'),(166,'66','灵敏度','105±3dB at 1KHz'),(167,'66','阻抗','32Ω'),(168,'67','品牌','魅族'),(169,'67','名称','魅族 EP63NC '),(170,'67','蓝牙','BT5.0'),(171,'68','品牌','魅族'),(172,'68','品名','魅族 16s Pro 亲肤壳膜套装'),(173,'68','适用机型','魅族 16s Pro'),(174,'68','分类','壳膜套装'),(175,'69','名称','魅族移动源'),(176,'69','电池容量','100000mah/3.7V'),(177,'69','产品型号','PB04'),(178,'70','品牌','魅族'),(179,'70','品名','Micro USB数据线'),(180,'70','接口类型','Micro USB'),(181,'71','品牌','魅族'),(182,'71','品名','魅族Type-C金属数据线'),(183,'71','接口类型','Type-C'),(184,'72','品牌','魅族'),(185,'72','品名','\t魅族16X 高透保护膜'),(186,'73','品牌','魅族'),(187,'73','品名','\t魅族 16T 亲肤壳膜套装'),(188,'73','适用机型','魅族 16T'),(189,'73','分类','壳膜套装'),(190,'74','品牌','魅族'),(191,'74','型号','魅族防飞溅声波电动牙刷'),(192,'75','品牌','魅族'),(193,'75','品名','Pandaer 魔术师帽衫'),(194,'76','品牌','\t魅族'),(195,'76','品名','\t路由器极速版'),(196,'76','尺寸','152*110*20mm'),(197,'76','重量','207g'),(198,'76','颜色分类','白色'),(199,'77','品牌','魅族'),(200,'77','品名','\t魅族极简都市双肩包'),(201,'78','品牌','魅族'),(202,'78','型号','Lifeme 梨木伞'),(207,'79','品名','Pandaer readnap T恤'),(208,'79','品牌','魅族');
/*!40000 ALTER TABLE `qy_product_spec` ENABLE KEYS */;

#
# Structure for table "qy_search"
#

DROP TABLE IF EXISTS `qy_search`;
CREATE TABLE `qy_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT '10',
  `display` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "qy_search"
#

/*!40000 ALTER TABLE `qy_search` DISABLE KEYS */;
INSERT INTO `qy_search` VALUES (1,'手机','10','1'),(2,'耳机','10','1'),(3,'手机膜','10','1'),(4,'魅族16','10','1'),(5,'Note9','10','1'),(6,'壳膜套装','10','1'),(7,'蓝牙耳机','10','1'),(8,'电动牙刷','10','1'),(9,'英特网络','10','1');
/*!40000 ALTER TABLE `qy_search` ENABLE KEYS */;

#
# Structure for table "qy_search_history"
#

DROP TABLE IF EXISTS `qy_search_history`;
CREATE TABLE `qy_search_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "qy_search_history"
#

/*!40000 ALTER TABLE `qy_search_history` DISABLE KEYS */;
INSERT INTO `qy_search_history` VALUES (1,'手机',2),(2,'手机膜',2),(3,'膜壳套装',1),(4,'电动牙刷',1),(5,'蓝牙耳机',1),(6,'魅族',3),(7,'Note9',1),(8,'魅族手机',1),(9,'充电宝',1),(10,'数据线',1),(11,'三摄',1),(12,'腊月',1),(13,NULL,8),(14,'123123',1),(15,'1231',2),(16,'1',2),(17,'123',1);
/*!40000 ALTER TABLE `qy_search_history` ENABLE KEYS */;

#
# Structure for table "qy_sys"
#

DROP TABLE IF EXISTS `qy_sys`;
CREATE TABLE `qy_sys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enname` varchar(50) DEFAULT NULL COMMENT '英文名称',
  `cnname` varchar(50) DEFAULT NULL COMMENT '中文名称',
  `type` tinyint(3) DEFAULT '1' COMMENT '1、input 2、radio 3、select 4、checkbox 5、text 6、file',
  `value` varchar(255) DEFAULT NULL COMMENT '值',
  `result` varchar(255) DEFAULT NULL COMMENT '结果',
  `sort` varchar(255) DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "qy_sys"
#

/*!40000 ALTER TABLE `qy_sys` DISABLE KEYS */;
INSERT INTO `qy_sys` VALUES (1,'webname','网站名称',1,'','英特网络','51'),(2,'keyword','关键字',1,'','英特网络-在线培训机构','52'),(3,'description','关键字描述',5,'','英特网络-在线培训机构','53'),(4,'switch','网站开关',2,'开,关','0','54'),(5,'webtitle','网站标题',1,'','英特网络-在线培训机构','56'),(6,'domain','网站域名',1,'','www.intewl.com','57'),(7,'copyright','版权信息',5,'','英特网络','58'),(8,'file','备案号',5,'','闽ICP12345678','59'),(9,'logo','网站logo',6,'','sys/20190131/58a38189335812c5d4538f7fc0eb9eb9.png','55'),(10,'mobile','电话号码',1,'','0592-123456','61'),(11,'telphone','手机号码',1,'','18888888888','62'),(12,'address','地址',1,'','福建省厦门市','65'),(13,'contact','联系人',1,'','温先生','60'),(14,'weixin','微信二维码',6,'','sys/20190131/8d866ae7938f3be4916463ab78e9610a.png','63'),(15,'qq','qq',1,'','1901090033','64');
/*!40000 ALTER TABLE `qy_sys` ENABLE KEYS */;
