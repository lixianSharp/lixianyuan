/*
Navicat MySQL Data Transfer

Source Server         : remoteLinuxMySql
Source Server Version : 50641
Source Host           : 118.24.123.209:3306
Source Database       : lixianyuanorg

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2018-12-01 20:58:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bkyblog`
-- ----------------------------
DROP TABLE IF EXISTS `bkyblog`;
CREATE TABLE `bkyblog` (
  `bkyblogId` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`bkyblogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?????';

-- ----------------------------
-- Records of bkyblog
-- ----------------------------

-- ----------------------------
-- Table structure for `casualnote`
-- ----------------------------
DROP TABLE IF EXISTS `casualnote`;
CREATE TABLE `casualnote` (
  `casualNoteId` varchar(50) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`casualNoteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��';

-- ----------------------------
-- Records of casualnote
-- ----------------------------

-- ----------------------------
-- Table structure for `gossip`
-- ----------------------------
DROP TABLE IF EXISTS `gossip`;
CREATE TABLE `gossip` (
  `gossipId` varchar(50) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`gossipId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����';

-- ----------------------------
-- Records of gossip
-- ----------------------------

-- ----------------------------
-- Table structure for `leavemsg`
-- ----------------------------
DROP TABLE IF EXISTS `leavemsg`;
CREATE TABLE `leavemsg` (
  `leavemsgid` varchar(50) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `leavetime` datetime DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`leavemsgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����\r\n';

-- ----------------------------
-- Records of leavemsg
-- ----------------------------
INSERT INTO `leavemsg` VALUES ('149443d5-694f-45b3-9428-bec47649f417', '小桥', '1289853698@qq.con', '我喜欢你。', '2018-10-07 07:30:34', null);
INSERT INTO `leavemsg` VALUES ('184c9ad9-286e-401d-841b-c26e3bc65d0b', '蓝育芳', '1255102082@qq.com', '是不是傻', '2018-10-04 11:44:26', null);
INSERT INTO `leavemsg` VALUES ('6d9d6766-bb2f-400c-a542-ee9ea8dacf07', 'Andrew', 'jianjiang_chen@126.com', '贤元，加油，赶紧找个妹子了解一下人类繁衍的奥秘吧', '2018-10-06 15:26:35', null);
INSERT INTO `leavemsg` VALUES ('844cada6-78dd-4391-9eff-ae2761550013', '小桥', '1289853698@qq.con', '大傻逼', '2018-10-07 07:32:33', null);
INSERT INTO `leavemsg` VALUES ('aa89cd5c-9421-44c4-bdf5-4c3ba15b9ec8', '赵崇', 'jianjiang_chen@126.com', '贤元！共勉！', '2018-10-06 15:35:47', null);

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `photoId` varchar(50) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `photoUrl` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`photoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������';

-- ----------------------------
-- Records of photo
-- ----------------------------

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyid` varchar(50) NOT NULL,
  `replyname` varchar(20) DEFAULT NULL,
  `replycontent` varchar(300) DEFAULT NULL,
  `replytime` datetime DEFAULT NULL,
  `leavemsgid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`replyid`),
  KEY `FK_Reference_1` (`leavemsgid`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`leavemsgid`) REFERENCES `leavemsg` (`leavemsgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������';

-- ----------------------------
-- Records of reply
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `sys_permission_id` bigint(20) NOT NULL COMMENT '��',
  `name` varchar(128) DEFAULT NULL COMMENT '����',
  `type` varchar(32) DEFAULT NULL COMMENT '�����menu,button,',
  `percode` varchar(128) DEFAULT NULL COMMENT '�������',
  PRIMARY KEY (`sys_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` varchar(36) NOT NULL,
  `sys_role_id` varchar(32) DEFAULT NULL COMMENT '��id',
  `sys_permission_id` bigint(20) DEFAULT NULL COMMENT '��id',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_3` (`sys_permission_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`sys_permission_id`) REFERENCES `sys_permission` (`sys_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `sys_user_id` varchar(36) NOT NULL COMMENT '��',
  `usercode` varchar(32) DEFAULT NULL COMMENT '��',
  `username` varchar(64) DEFAULT NULL COMMENT '��',
  `password` varchar(32) DEFAULT NULL COMMENT '��',
  PRIMARY KEY (`sys_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(36) NOT NULL,
  `sys_sys_user_id` varchar(36) DEFAULT NULL COMMENT '��',
  `sys_user_id` varchar(32) DEFAULT NULL,
  `sys_role_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_2` (`sys_sys_user_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`sys_sys_user_id`) REFERENCES `sys_user` (`sys_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for `ydyblog`
-- ----------------------------
DROP TABLE IF EXISTS `ydyblog`;
CREATE TABLE `ydyblog` (
  `ydyblogId` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ydyblogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����';

-- ----------------------------
-- Records of ydyblog
-- ----------------------------
INSERT INTO `ydyblog` VALUES ('009513b8-f9aa-4cd8-8e45-33c7d011aaab', 'JavaSE-枚举', 'http://note.youdao.com/noteshare?id=7f12ac2cdf10e38a815f1d5bc5ffac80');
INSERT INTO `ydyblog` VALUES ('16551016-67dd-4641-9587-be0101700ab5', 'JavaSE-《Java编程思想》阅读笔记', 'http://note.youdao.com/noteshare?id=aff9607db78264685cc4ed0c826a09e1');
INSERT INTO `ydyblog` VALUES ('1a591b56-8a50-45f2-9336-4cd1d7a80be2', 'JavaScript-', 'http://note.youdao.com/noteshare?id=9728027e96d718850745cd58a1bb7698');
INSERT INTO `ydyblog` VALUES ('2380dee2-d2f8-4b55-aea0-55cac38a156c', 'JavaSE-多线程基础', 'http://note.youdao.com/noteshare?id=8982f9fa03eb00bb2c499a3171065b52');
INSERT INTO `ydyblog` VALUES ('24434adf-a2fa-4269-a943-376ccd073534', 'MongoDB-基础', 'http://note.youdao.com/noteshare?id=1b4b486cb449ad8fd8a6b54c0e1f63c3');
INSERT INTO `ydyblog` VALUES ('2b52b674-28de-4b14-8801-f764687c2a8e', 'Design_Model-', 'https://i.cnblogs.com/posts?categoryid=1272532');
INSERT INTO `ydyblog` VALUES ('394a342d-fec5-4423-9123-08b09aadd93f', 'Spring', 'http://note.youdao.com/noteshare?id=27405eee7a96db641901e032d8139e78');
INSERT INTO `ydyblog` VALUES ('3a6ac3ad-dddd-4229-a050-747b8abaef37', 'Shiro-', 'http://note.youdao.com/noteshare?id=d1b53389722dfd969348f156027760b5');
INSERT INTO `ydyblog` VALUES ('3f1134ce-2bdb-4f54-a4bb-174e5a3ab7d8', 'JavaSE-类加载器', 'http://note.youdao.com/noteshare?id=cf63ee2e13e6f8d120a3b5dc90928792');
INSERT INTO `ydyblog` VALUES ('421b5337-cc61-43cf-b467-47a83a78887d', 'Hibernate-', 'http://note.youdao.com/noteshare?id=91c2fd88fd7b0a186f8efbe865e9a48f');
INSERT INTO `ydyblog` VALUES ('48cee467-213a-4381-972a-784d38a73d3d', 'Java_More-java面试题', 'http://note.youdao.com/noteshare?id=feb375c8cb5b975031c6dc410d0a0095');
INSERT INTO `ydyblog` VALUES ('49f7d572-175b-48d7-8bed-4168e6270b5a', '前端More-正则表达式', 'http://note.youdao.com/noteshare?id=5ebf2db0484e531752a66905a2356648');
INSERT INTO `ydyblog` VALUES ('4ba57cb1-b702-46fa-8087-ab27a6127801', 'JavaSE-泛型', 'http://note.youdao.com/noteshare?id=ababdd7d2090047aa13cf8e544b9b652');
INSERT INTO `ydyblog` VALUES ('513ef121-8b61-47e3-a64d-6611555fa883', 'JavaSE-异常', 'http://note.youdao.com/noteshare?id=5a1512ac7fce1c081ccffa4017824732');
INSERT INTO `ydyblog` VALUES ('52bb217e-a6fc-4217-987d-258a1aad0eb6', 'JavaSE-注解', 'http://note.youdao.com/noteshare?id=c494751b1b6e57051ba11afbf277d607');
INSERT INTO `ydyblog` VALUES ('58d20709-e3b1-43a3-9659-b552c3208f84', 'JavaEE-JSP', 'http://note.youdao.com/noteshare?id=7121edc714c685de3d284a84c80c1d82');
INSERT INTO `ydyblog` VALUES ('58ff1994-07c0-412d-9b57-81a9c27ea69c', 'JavaSE-IO', 'http://note.youdao.com/noteshare?id=2d71bccfb280dc3ff28c21baaae971be');
INSERT INTO `ydyblog` VALUES ('60a5589b-e3d4-4e74-9519-70b8ae98e905', 'angular-', 'http://note.youdao.com/noteshare?id=f172deda96d0783c1af8f03e7c5ec81a');
INSERT INTO `ydyblog` VALUES ('63c0e13b-370b-49f4-a24b-e4e07449c248', 'Vue-一些扩展知识总结', 'http://note.youdao.com/noteshare?id=7946e6c60ae8df1e1de06158c4df9fdc');
INSERT INTO `ydyblog` VALUES ('63fdeb49-3d95-444d-8ca0-c75636b85b6b', 'Oracle-', 'http://note.youdao.com/noteshare?id=72d9ecfa97a42174c95e7c7c06025f58');
INSERT INTO `ydyblog` VALUES ('65f64ba8-f25a-4080-a748-5a8f812c4e55', 'JavaSE-集合(Map、List)及对集合的操作', 'http://note.youdao.com/noteshare?id=e47c42f09fb1e26a36936a58db0a86e2');
INSERT INTO `ydyblog` VALUES ('72e198b8-eca7-47fa-b1ba-6ae91cc1abf8', 'JavaSE- 同时安装jdk1.8和jdk1.7的解决方案', 'http://note.youdao.com/noteshare?id=988b29886b9943e7b381474b2724cdfc');
INSERT INTO `ydyblog` VALUES ('88ba05c4-29f9-485f-afaf-04fdc30d6cfe', 'JavaSE-代理', 'http://note.youdao.com/noteshare?id=512d72a09624ef73769295725c33806c');
INSERT INTO `ydyblog` VALUES ('8c380d03-a3ea-4efc-bea1-21396a8bd0bd', 'Tomcat-Tomcat7的学习', 'http://note.youdao.com/noteshare?id=c2d6aad92e4a3cb0a789c7facfda05a7');
INSERT INTO `ydyblog` VALUES ('8ce4bb8d-b496-45cf-b110-e6f5c0989fb5', 'Vue-基础', 'http://note.youdao.com/noteshare?id=f12454247425587f8a017accd131991b');
INSERT INTO `ydyblog` VALUES ('8d71fd00-32f6-42c5-8388-bd24ae48b064', 'Node', 'http://note.youdao.com/noteshare?id=82a4270d4ebfb3a9379a695ec34c6c5e');
INSERT INTO `ydyblog` VALUES ('8f18338d-7116-44d4-bfc3-59adf31a7397', 'JavaSE-内部类', 'http://note.youdao.com/noteshare?id=087c195846218ac23fa26c943de83cce');
INSERT INTO `ydyblog` VALUES ('9cbe908f-ac3e-46c6-a0e1-7495b822571d', 'MySQL-基础语法', 'http://note.youdao.com/noteshare?id=9aea05cd4eaa6b9a06af59e36e388022');
INSERT INTO `ydyblog` VALUES ('a986de67-e0c0-4020-96a2-aa1f4bfc5d5d', 'Vue-项目实战', 'http://note.youdao.com/noteshare?id=8e81a25184a8f8f59557863816b585ce');
INSERT INTO `ydyblog` VALUES ('ad037245-4263-486d-9d6d-dc046251ddaf', 'SpringMVC-', 'http://note.youdao.com/noteshare?id=3578c21bf033e2e3bbcdcb357f7fb193');
INSERT INTO `ydyblog` VALUES ('b399d8d7-bf3e-4fcf-9041-b0bf6ed13644', 'Linux-linux基础学习', 'http://note.youdao.com/noteshare?id=9104f48600c39b953cd0bd962cca7e99');
INSERT INTO `ydyblog` VALUES ('b4c422d7-2d44-4f73-bfdb-1f8e359e3a68', 'jQuery', 'http://note.youdao.com/noteshare?id=3d6492a7559d8044667173410789ffb5');
INSERT INTO `ydyblog` VALUES ('bf64b920-03dc-4fcf-9fc9-a9e874aed8c1', 'Mybatis-', 'http://note.youdao.com/noteshare?id=156d1893f3f8aabe052379266c925982');
INSERT INTO `ydyblog` VALUES ('d24ab871-3d74-40f2-95b7-0b7b95ae3d17', 'JavaSE-反射', 'http://note.youdao.com/noteshare?id=fb69440eeee08015c0782e618bf9000c');
INSERT INTO `ydyblog` VALUES ('d6f7639c-993a-43be-b6fe-8d4e06436676', 'JavaSE-关于Junit测试的注意事项', 'http://note.youdao.com/noteshare?id=52ef22f253b59e884c3e491b71e7b85b');
INSERT INTO `ydyblog` VALUES ('db43c43c-0cf9-4e52-86ea-318c7fe7ac7f', 'JVM-Java虚拟机', 'http://note.youdao.com/noteshare?id=8274315def2b72e9fbe3cebb5f1f5879');
INSERT INTO `ydyblog` VALUES ('dc3493f9-6c38-47f2-85c5-f73d57b305e2', 'JavaSE-XML解析及其使用方式', 'http://note.youdao.com/noteshare?id=25cc5a6b0d049c6409a41e0ca0de5deb');
INSERT INTO `ydyblog` VALUES ('f183cbe9-8f22-422d-aa9c-ea19cdd3996c', 'Redis-', 'http://note.youdao.com/noteshare?id=ed3acd226b520c1a1ff3f118a8c6c942');
