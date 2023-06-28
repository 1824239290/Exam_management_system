/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : ssm_db

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 28/06/2023 08:39:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'admin', '123');
INSERT INTO `account` VALUES (2, 's1', '123');
INSERT INTO `account` VALUES (3, 's2', '123');

-- ----------------------------
-- Table structure for judgment
-- ----------------------------
DROP TABLE IF EXISTS `judgment`;
CREATE TABLE `judgment`  (
  `jid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '判断题ID',
  `jname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '判断题目',
  `qid` int NOT NULL COMMENT '所属题库',
  `optionA` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '\'正确\'' COMMENT '选项A，默认为正确',
  `optionB` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '\'错误\'' COMMENT '选项B，默认为错误',
  `answer` enum('A','B') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '答案',
  `analysis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '解析',
  PRIMARY KEY (`jid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of judgment
-- ----------------------------
INSERT INTO `judgment` VALUES (3, 'dsasa', 2, '正确', '错误', 'B', 'SAD');
INSERT INTO `judgment` VALUES (4, 'ADS', 5, 'ASD', 'DAS', 'A', 'SAD');
INSERT INTO `judgment` VALUES (5, 'Java是一种纯面向对象编程语言', 6, '正确', '错误', 'A', 'Java是一种基于对象的编程语言，所有的代码都必须定义在类中');
INSERT INTO `judgment` VALUES (6, 'Spring是一种轻量级的Java开发框架', 6, '正确', '错误', 'A', 'Spring是一个轻量级的开源框架，用于支持Java应用程序的开发');
INSERT INTO `judgment` VALUES (7, 'Hibernate是一个Java持久化框架', 6, '正确', '错误', 'A', 'Hibernate是一个流行的Java持久化框架，用于简化数据库访问操作');
INSERT INTO `judgment` VALUES (8, 'Struts是一个Java Web应用框架', 6, '正确', '错误', 'A', 'Struts是一个基于MVC模式的Java Web应用框架，用于简化Web应用的开发');
INSERT INTO `judgment` VALUES (9, 'Apache Tomcat是一个JavaEE服务器', 6, '正确', '错误', 'A', 'Apache Tomcat是一个用于运行Java Web应用程序的开源服务器');
INSERT INTO `judgment` VALUES (10, 'Maven是一个构建工具，用于管理Java项目的依赖关系', 6, '正确', '错误', 'A', 'Maven是一个流行的构建工具，可自动处理Java项目的依赖关系');
INSERT INTO `judgment` VALUES (11, 'Spring Boot是一个用于快速开发Java应用程序的框架', 6, '正确', '错误', 'A', 'Spring Boot是一个简化Java应用程序开发的框架，提供了自动配置和快速启动的特性');
INSERT INTO `judgment` VALUES (12, 'avaServer Faces（JSF）是一种用于开发Java应用程序的Java Web框架', 6, '正确', '错误', 'B', 'Spring Boot是一个简化Java应用程序开发的框架，提供了自动配置和快速启动的特性');
INSERT INTO `judgment` VALUES (13, 'JavaServer Faces（JSF）是一种用于管理Java项目的Java Web框架', 6, '正确', '错误', 'B', 'JSF是JavaEE的一部分，用于构建动态用户界面的组件化框架');
INSERT INTO `judgment` VALUES (14, 'MyBatis是一种持久层框架，但不可与Java应用程序集成', 6, '正确', '错误', 'B', 'MyBatis是一个灵活的持久层框架，用于将Java对象映射到数据库记录');
INSERT INTO `judgment` VALUES (15, 'JavaServer Pages（JSP）是一种用于静态生成Web页面的Java技术', 6, '正确', '错误', 'B', 'JSP是一种脚本语言，用于在Java Web应用中以HTML方式生成动态内容');
INSERT INTO `judgment` VALUES (16, 'Spring Boot是一个基于Java语言的Web框架', 6, '正确', '错误', 'B', 'Spring Boot是一个用于快速开发Java应用程序的框架，不仅限于Web开发');
INSERT INTO `judgment` VALUES (17, 'MyBatis是一种流行的Java持久化框架，用于简化数据库访问操作', 6, '正确', '错误', 'A', 'MyBatis是一个常用的Java持久化框架，提供了简化数据库访问的功能');
INSERT INTO `judgment` VALUES (18, 'Hibernate是一个轻量级的Java开发框架，用于构建Web应用程序', 6, '正确', '错误', 'B', 'Hibernate是一个常用的Java持久化框架，用于简化数据库访问操作，不限于Web开发');
INSERT INTO `judgment` VALUES (19, 'Maven是一个流行的构建工具，用于管理Java项目的依赖关系', 6, '正确', '错误', 'A', 'Maven是一个常用的构建工具，可以自动处理Java项目的依赖关系');
INSERT INTO `judgment` VALUES (20, 'Apache Tomcat是一个JavaEE服务器', 6, '正确', '错误', 'A', 'Apache Tomcat是一个常用的开源服务器，用于运行Java Web应用程序');
INSERT INTO `judgment` VALUES (22, 'hjkcxhjkc', 5, 'ydjfgjah', 'sjhdsd', 'A', 'sd');
INSERT INTO `judgment` VALUES (24, 'DSADSAFSFGE', 7, '正确', '错误', 'A', '撒旦法发');

-- ----------------------------
-- Table structure for multiple
-- ----------------------------
DROP TABLE IF EXISTS `multiple`;
CREATE TABLE `multiple`  (
  `mid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '多选题ID',
  `mname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '多选题目',
  `qid` int NOT NULL COMMENT '所属题库',
  `optionA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项A',
  `optionB` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项B',
  `optionC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项C',
  `optionD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项D',
  `answer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '答案',
  `analysis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '解析',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of multiple
-- ----------------------------
INSERT INTO `multiple` VALUES (1, 'daswqeqw12哦', 2, 'ewqe23哦', '123wws哦', '324ed哦', 'e32w哦', 'DACB', 'wqeqw哦哦哦');
INSERT INTO `multiple` VALUES (3, 'asd', 5, 'ads', 'das', 'das', 'ads', 'AB', 'ASD');
INSERT INTO `multiple` VALUES (4, '下列哪些框架可以用于构建Java Web应用程序？（多选）', 6, 'Spring', 'Hibernate', 'Struts', ' Vue.js', 'ABC', 'Spring、Hibernate和Struts都是用于构建Java Web应用程序的框架');
INSERT INTO `multiple` VALUES (5, '下列哪些工具可用于构建和管理Java项目的依赖关系？（多选）', 6, 'Maven', 'Gradle', 'Ant', ' Jenkins', 'ABC', 'Maven、Gradle和Ant都是常用的构建和管理Java项目依赖关系的工具');
INSERT INTO `multiple` VALUES (6, '哪些Java框架可以用于进行面向切面编程？（多选）', 6, 'Spring', 'Hibernate', 'Struts', 'AspectJ', 'AD', 'Spring框架提供了面向切面编程的支持，而AspectJ是一个专门用于实现切面编程的框架');
INSERT INTO `multiple` VALUES (7, '下列哪些技术可用于前端开发？（多选）', 6, 'HTML', ' Java', 'CSS', 'JavaScript', 'ACD', 'HTML、CSS和JavaScript是常用的前端开发技术，而Java主要用于后端开发');
INSERT INTO `multiple` VALUES (8, '下列哪些框架属于JavaEE规范？（多选）', 6, 'Spring Boot', 'JSF', 'EJB', 'MyBatis', 'BC', 'JSF和EJB都属于JavaEE规范，而Spring Boot和MyBatis不是');
INSERT INTO `multiple` VALUES (10, 'FSAFASF', 7, 'DSADASDAS', 'DSADASDASD', 'SADASDASDSA', 'DASDAS', 'ACD', 'DASDAS');

-- ----------------------------
-- Table structure for notify
-- ----------------------------
DROP TABLE IF EXISTS `notify`;
CREATE TABLE `notify`  (
  `nid` int NOT NULL AUTO_INCREMENT COMMENT '通知ID',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标题',
  `contents` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '内容',
  `created_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notify
-- ----------------------------
INSERT INTO `notify` VALUES (2, 'java框架技术考试通知', '2023年6月24号开考', '2023-06-24 14:36:54');

-- ----------------------------
-- Table structure for qbank
-- ----------------------------
DROP TABLE IF EXISTS `qbank`;
CREATE TABLE `qbank`  (
  `qid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '题库ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题库名',
  `desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '题库详情',
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qbank
-- ----------------------------
INSERT INTO `qbank` VALUES (5, '语文', '语文试题库');
INSERT INTO `qbank` VALUES (6, 'Java框架技术', '考察涉及Java框架技术的理论知识');
INSERT INTO `qbank` VALUES (7, '测试题库627', '测试627');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL COMMENT '用户id',
  `pid` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tid` int NOT NULL,
  `selected` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `score` double NOT NULL,
  `date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (16, 2, 8, 'schose', 7, 'B', 0, '2023-06-24 11:12:10');
INSERT INTO `reply` VALUES (17, 2, 8, 'multiple', 3, 'AB', 5, '2023-06-24 11:12:10');
INSERT INTO `reply` VALUES (18, 2, 8, 'judgment', 4, 'A', 2, '2023-06-24 11:12:10');
INSERT INTO `reply` VALUES (19, 2, 1, 'schose', 6, 'D', 0, '2023-06-24 11:40:42');
INSERT INTO `reply` VALUES (20, 2, 1, 'schose', 3, 'C', 0, '2023-06-24 11:40:42');
INSERT INTO `reply` VALUES (21, 2, 1, 'schose', 5, 'C', 0, '2023-06-24 11:40:42');
INSERT INTO `reply` VALUES (22, 2, 1, 'schose', 4, 'B', 0, '2023-06-24 11:40:42');
INSERT INTO `reply` VALUES (23, 2, 1, 'multiple', 1, 'B', 0, '2023-06-24 11:40:42');
INSERT INTO `reply` VALUES (24, 2, 1, 'judgment', 3, 'A', 0, '2023-06-24 11:40:42');
INSERT INTO `reply` VALUES (25, 2, 9, 'schose', 4, 'A', 0, '2023-06-24 12:33:48');
INSERT INTO `reply` VALUES (26, 2, 9, 'schose', 3, 'B', 0, '2023-06-24 12:33:48');
INSERT INTO `reply` VALUES (27, 2, 9, 'schose', 5, 'B', 0, '2023-06-24 12:33:48');
INSERT INTO `reply` VALUES (28, 2, 9, 'schose', 6, 'B', 0, '2023-06-24 12:33:48');
INSERT INTO `reply` VALUES (29, 2, 9, 'multiple', 1, 'ABC', 0, '2023-06-24 12:33:48');
INSERT INTO `reply` VALUES (30, 2, 9, 'judgment', 3, 'A', 0, '2023-06-24 12:33:48');
INSERT INTO `reply` VALUES (31, 2, 10, 'schose', 4, 'A', 0, '2023-06-24 12:35:14');
INSERT INTO `reply` VALUES (32, 2, 10, 'schose', 3, 'A', 0, '2023-06-24 12:35:14');
INSERT INTO `reply` VALUES (33, 2, 10, 'schose', 5, 'A', 0, '2023-06-24 12:35:14');
INSERT INTO `reply` VALUES (34, 2, 10, 'schose', 6, 'A', 3, '2023-06-24 12:35:14');
INSERT INTO `reply` VALUES (35, 2, 10, 'multiple', 1, 'AB', 0, '2023-06-24 12:35:14');
INSERT INTO `reply` VALUES (36, 2, 10, 'judgment', 3, 'A', 0, '2023-06-24 12:35:14');
INSERT INTO `reply` VALUES (37, 2, 11, 'schose', 7, 'A', 3, '2023-06-24 12:58:55');
INSERT INTO `reply` VALUES (38, 2, 11, 'multiple', 3, 'C', 0, '2023-06-24 12:58:55');
INSERT INTO `reply` VALUES (39, 2, 11, 'judgment', 4, 'B', 0, '2023-06-24 12:58:55');
INSERT INTO `reply` VALUES (40, 2, 12, 'schose', 15, 'B', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (41, 2, 12, 'schose', 13, 'A', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (42, 2, 12, 'schose', 30, 'A', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (43, 2, 12, 'schose', 25, 'A', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (44, 2, 12, 'schose', 17, 'B', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (45, 2, 12, 'schose', 8, 'C', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (46, 2, 12, 'schose', 22, 'D', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (47, 2, 12, 'schose', 24, 'A', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (48, 2, 12, 'schose', 31, 'B', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (49, 2, 12, 'schose', 10, 'A', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (50, 2, 12, 'schose', 23, 'A', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (51, 2, 12, 'schose', 19, 'D', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (52, 2, 12, 'schose', 32, 'C', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (53, 2, 12, 'schose', 18, 'B', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (54, 2, 12, 'schose', 26, 'B', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (55, 2, 12, 'schose', 9, 'B', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (56, 2, 12, 'schose', 20, 'B', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (57, 2, 12, 'schose', 28, 'C', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (58, 2, 12, 'schose', 21, 'B', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (59, 2, 12, 'schose', 16, 'B', 3, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (60, 2, 12, 'multiple', 4, 'ABC', 5, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (61, 2, 12, 'multiple', 6, 'AD', 5, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (62, 2, 12, 'multiple', 5, 'AB', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (63, 2, 12, 'multiple', 8, 'AD', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (64, 2, 12, 'judgment', 12, 'A', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (65, 2, 12, 'judgment', 10, 'A', 2, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (66, 2, 12, 'judgment', 14, 'B', 2, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (67, 2, 12, 'judgment', 5, 'B', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (68, 2, 12, 'judgment', 19, 'A', 2, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (69, 2, 12, 'judgment', 7, 'A', 2, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (70, 2, 12, 'judgment', 20, 'A', 2, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (71, 2, 12, 'judgment', 16, 'A', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (72, 2, 12, 'judgment', 15, 'A', 0, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (73, 2, 12, 'judgment', 6, 'A', 2, '2023-06-24 14:23:09');
INSERT INTO `reply` VALUES (74, 2, 15, 'schose', 34, 'A', 3, '2023-06-27 22:40:46');
INSERT INTO `reply` VALUES (75, 2, 15, 'multiple', 10, 'ABCD', 0, '2023-06-27 22:40:46');
INSERT INTO `reply` VALUES (76, 2, 15, 'judgment', 24, 'A', 2, '2023-06-27 22:40:46');
INSERT INTO `reply` VALUES (77, 2, 16, 'schose', 34, 'A', 3, '2023-06-27 22:41:41');
INSERT INTO `reply` VALUES (78, 2, 16, 'multiple', 10, 'ACD', 5, '2023-06-27 22:41:41');
INSERT INTO `reply` VALUES (79, 2, 16, 'judgment', 24, 'A', 2, '2023-06-27 22:41:41');

-- ----------------------------
-- Table structure for schose
-- ----------------------------
DROP TABLE IF EXISTS `schose`;
CREATE TABLE `schose`  (
  `tid` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `tname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目',
  `optionA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项A',
  `optionB` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项B',
  `optionC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项C',
  `optionD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项D',
  `answer` enum('A','B','C','D') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '答案',
  `analysis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '解析',
  `qid` int NOT NULL COMMENT '所属题库',
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of schose
-- ----------------------------
INSERT INTO `schose` VALUES (3, 'tnsassaf哦哦哦 ', 'A哦哦哦', 'B哦哦哦', 'C哦哦哦', 'D哦哦哦', 'D', 'dfsgdfgssfdgsdfkladshfkjalsdhfkajlshflafhaksjfds哦哦哦', 2);
INSERT INTO `schose` VALUES (4, 'daswqeqw12', 'ewqe23', '123wws', '324ed', 'e32w', 'D', 'wqeqw', 2);
INSERT INTO `schose` VALUES (5, 'daswqeqw12', 'ewqe23', '123wws', '324ed', 'e32w', 'D', 'wqeqw', 2);
INSERT INTO `schose` VALUES (6, '5646', '4127', '3654', '9512', '8763', 'A', 'LOJP', 2);
INSERT INTO `schose` VALUES (7, 'dasdas', 'asd', 'das', 'ads', 'ads', 'A', 'sad', 5);
INSERT INTO `schose` VALUES (8, 'Spring框架的核心模块是：', 'Spring MVC', 'Spring Boot', 'Spring Core', 'Spring Data', 'C', 'Spring框架的核心模块是Spring Core，它提供了IoC容器和AOP等核心功能', 6);
INSERT INTO `schose` VALUES (9, '下列哪个是用于数据库访问的Java持久化框架', 'Struts', ' Hibernate', 'JSF', ' Spring Boot', 'B', 'Hibernate是一个流行的Java持久化框架，用于简化数据库访问操作', 6);
INSERT INTO `schose` VALUES (10, '哪个框架可用于构建RESTful风格的Web服务？', ' Spring MVC', 'Struts', 'Apache Tomcat', 'JSF', 'A', 'Spring MVC是一个用于构建Web应用的框架，可用于构建RESTful风格的Web服务', 6);
INSERT INTO `schose` VALUES (11, '下列哪个工具可用于管理Java项目的依赖关系？', 'Maven', ' Gradle', 'Ant', ' Jenkins', 'A', 'Maven是一个流行的构建工具，用于管理Java项目的依赖关系', 6);
INSERT INTO `schose` VALUES (12, 'Struts框架基于以下设计模式：', 'MVC', ' Singleton', ' Observer', 'Decorator', 'A', 'Struts框架基于MVC（Model-View-Controller）设计模式', 6);
INSERT INTO `schose` VALUES (13, '在Java Web开发中，以下哪个框架用于处理Web请求和构建RESTful服务？', 'Spring Boot', ' Hibernate', 'Struts', 'Apache Tomcat', 'A', 'Spring Boot是一个常用的Java框架，用于处理Web请求和构建RESTful服务', 6);
INSERT INTO `schose` VALUES (14, '以下哪个框架用于简化Java应用程序的配置和开发过程，提供了依赖注入和面向切面编程的支持？', ' JavaServer Faces（JSF）', 'MyBatis', 'Maven', 'Spring Framework', 'D', 'Spring Framework是一个常用的Java框架，用于简化Java应用程序的配置和开发过程，提供了依赖注入和面向切面编程的支持', 6);
INSERT INTO `schose` VALUES (15, '以下哪个框架用于简化Java应用程序的持久化操作，提供了对象关系映射（ORM）的功能？', ' Apache Tomcat', ' MyBatis', 'Struts', 'Hibernate', 'D', 'Hibernate是一个常用的Java框架，用于简化Java应用程序的持久化操作，提供了对象关系映射（ORM）的功能', 6);
INSERT INTO `schose` VALUES (16, '以下哪个工具用于管理Java项目的依赖关系，自动下载和配置项目所需的库文件？', 'Apache Tomcat', 'Maven', 'Spring Boot', 'JavaServer Faces（JSF）', 'B', 'Maven是一个常用的工具，用于管理Java项目的依赖关系，自动下载和配置项目所需的库文件', 6);
INSERT INTO `schose` VALUES (17, '以下哪个框架用于构建基于MVC模式的Java Web应用程序？', 'Struts', 'Spring MVC', ' MyBatis', 'Apache Tomcat', 'B', 'Spring MVC是一个常用的Java框架，用于构建基于MVC模式的Java Web应用程序', 6);
INSERT INTO `schose` VALUES (18, '以下哪个框架用于快速开发Java Web应用程序，提供了简化的开发模式和可选的注解支持？', ' Hibernate', ' Spring Boot', 'Maven', ' JavaServer Faces（JSF）', 'B', 'Spring Boot是一个常用的Java框架，用于快速开发Java Web应用程序，提供了简化的开发模式和可选的注解支持', 6);
INSERT INTO `schose` VALUES (19, '以下哪个框架用于构建动态用户界面的组件化应用程序？', 'Apache Tomcat', 'MyBatis', 'Struts', 'JavaServer Faces（JSF）', 'D', 'JavaServer Faces（JSF）是JavaEE的一部分，用于构建动态用户界面的组件化应用程序', 6);
INSERT INTO `schose` VALUES (20, '以下哪个框架用于构建前后端分离的Java Web应用程序？', ' Hibernate', 'Spring Framework', 'Struts', 'Apache Tomcat', 'B', 'Spring Framework是一个常用的Java框架，可用于构建前后端分离的Java Web应用程序', 6);
INSERT INTO `schose` VALUES (21, '以下哪个框架用于在Java应用程序中处理数据库访问操作？', 'Apache Tomcat', 'MyBatis', 'Spring Boot', 'JavaServer Faces（JSF）', 'B', 'MyBatis是一个常用的Java框架，用于在Java应用程序中处理数据库访问操作', 6);
INSERT INTO `schose` VALUES (22, '以下哪个框架用于构建Web应用程序的用户界面和控制逻辑层？', 'Maven', 'Hibernate', 'Struts', 'Spring MVC', 'D', 'Spring MVC是一个常用的Java框架，用于构建Web应用程序的用户界面和控制逻辑层', 6);
INSERT INTO `schose` VALUES (23, '下列哪个是用于构建企业级Java应用程序的开源框架？', 'Spring Framework', 'Apache Kafka', 'MongoDB', ' AngularJS', 'A', 'Spring Framework是一个用于构建企业级Java应用程序的开源框架', 6);
INSERT INTO `schose` VALUES (24, '下列哪个框架用于将Java对象映射到关系数据库中的表？', 'Hibernate', ' Gradle', 'Apache Spark', 'ReactJS', 'A', 'Hibernate是一个用于将Java对象映射到关系数据库中的表的框架', 6);
INSERT INTO `schose` VALUES (25, '下列哪个框架用于构建基于RESTful风格的Web服务？', ' Spring Boot', 'Apache Hadoop', 'Oracle Database', 'Vue.js', 'A', 'Spring Boot是一个用于构建基于RESTful风格的Web服务的框架', 6);
INSERT INTO `schose` VALUES (26, '下列哪个工具用于管理Java项目的依赖关系并自动下载所需的库文件？', 'Apache Tomcat', 'Maven', 'PostgreSQL', 'Ember.js', 'B', 'Maven是一个用于管理Java项目的依赖关系并自动下载所需的库文件的工具', 6);
INSERT INTO `schose` VALUES (27, '下列哪个框架用于构建可扩展的、模块化的Java应用程序？', 'Apache Struts', ' JavaFX', 'Spring Framework', 'Express.js', 'C', 'Spring Framework是一个用于构建可扩展的、模块化的Java应用程序的框架', 6);
INSERT INTO `schose` VALUES (28, '下列哪个框架用于简化Java应用程序的配置和开发过程，并提供了依赖注入的支持？', 'Apache Kafka', 'MyBatis', 'Spring Framework', 'Django', 'C', 'Spring Framework是一个用于简化Java应用程序的配置和开发过程的框架，并提供了依赖注入的支持', 6);
INSERT INTO `schose` VALUES (29, '下列哪个框架用于构建基于模型-视图-控制器（MVC）模式的Java Web应用程序？', 'Apache Tomcat', ' JSF (JavaServer Faces)', 'Apache Lucene', 'Thymeleaf', 'B', 'JSF（JavaServer Faces）是一个用于构建基于模型-视图-控制器（MVC）模式的Java Web应用程序的框架', 6);
INSERT INTO `schose` VALUES (30, '下列哪个框架用于构建响应式的用户界面和单页应用程序？', ' Apache Struts', 'AngularJS', 'Redis', 'Play Framework', 'B', 'AngularJS是一个用于构建响应式的用户界面和单页应用程序的框架', 6);
INSERT INTO `schose` VALUES (31, '下列哪个框架用于简化Java持久层操作，并提供了对象关系映射（ORM）功能？', ' Apache Kafka', 'MyBatis', ' Apache Cassandra', 'JHipster', 'B', 'MyBatis是一个用于简化Java持久层操作的框架，并提供了对象关系映射（ORM）功能', 6);
INSERT INTO `schose` VALUES (32, '下列哪个框架用于基于事件驱动的编程和处理消息流？', 'Apache Tomcat', 'Spring Integration', 'Oracle Database', 'Electron', 'B', 'Spring Integration是一个用于基于事件驱动的编程和处理消息流的框架', 6);
INSERT INTO `schose` VALUES (34, '地方官大使馆大使馆大使馆', '大概是个德国大使馆', '个大傻瓜大傻瓜', '第三个第四个是的', '第三个第四个是的', 'A', 'FASDFAS', 7);

-- ----------------------------
-- Table structure for testpaper
-- ----------------------------
DROP TABLE IF EXISTS `testpaper`;
CREATE TABLE `testpaper`  (
  `pid` int NOT NULL AUTO_INCREMENT COMMENT '试卷ID',
  `pname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '卷名',
  `date` datetime NULL DEFAULT NULL COMMENT '生成日期',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of testpaper
-- ----------------------------
INSERT INTO `testpaper` VALUES (1, '测试', '2023-06-18 11:14:29');
INSERT INTO `testpaper` VALUES (8, 'DSA', '2023-06-18 16:01:08');
INSERT INTO `testpaper` VALUES (9, '测试2', '2023-06-24 12:33:30');
INSERT INTO `testpaper` VALUES (10, '测试3', '2023-06-24 12:34:54');
INSERT INTO `testpaper` VALUES (11, '语文考试1', '2023-06-24 12:57:50');
INSERT INTO `testpaper` VALUES (12, 'java框架技术', '2023-06-24 14:18:09');
INSERT INTO `testpaper` VALUES (13, 'test2', '2023-06-24 15:23:18');
INSERT INTO `testpaper` VALUES (14, 'shix', '2023-06-25 22:45:31');
INSERT INTO `testpaper` VALUES (15, '测试试卷627', '2023-06-27 22:37:55');
INSERT INTO `testpaper` VALUES (16, '测试试卷6272', '2023-06-27 22:41:22');

-- ----------------------------
-- Table structure for testq
-- ----------------------------
DROP TABLE IF EXISTS `testq`;
CREATE TABLE `testq`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tpid` int NOT NULL,
  `qid` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of testq
-- ----------------------------
INSERT INTO `testq` VALUES (1, 1, 3, 'judgment');
INSERT INTO `testq` VALUES (2, 1, 1, 'multiple');
INSERT INTO `testq` VALUES (3, 1, 6, 'schose');
INSERT INTO `testq` VALUES (4, 1, 3, 'schose');
INSERT INTO `testq` VALUES (5, 1, 5, 'schose');
INSERT INTO `testq` VALUES (6, 1, 4, 'schose');
INSERT INTO `testq` VALUES (22, 8, 4, 'judgment');
INSERT INTO `testq` VALUES (23, 8, 3, 'multiple');
INSERT INTO `testq` VALUES (24, 8, 7, 'schose');
INSERT INTO `testq` VALUES (25, 9, 3, 'judgment');
INSERT INTO `testq` VALUES (26, 9, 1, 'multiple');
INSERT INTO `testq` VALUES (27, 9, 4, 'schose');
INSERT INTO `testq` VALUES (28, 9, 3, 'schose');
INSERT INTO `testq` VALUES (29, 9, 5, 'schose');
INSERT INTO `testq` VALUES (30, 9, 6, 'schose');
INSERT INTO `testq` VALUES (31, 10, 3, 'judgment');
INSERT INTO `testq` VALUES (32, 10, 1, 'multiple');
INSERT INTO `testq` VALUES (33, 10, 4, 'schose');
INSERT INTO `testq` VALUES (34, 10, 3, 'schose');
INSERT INTO `testq` VALUES (35, 10, 5, 'schose');
INSERT INTO `testq` VALUES (36, 10, 6, 'schose');
INSERT INTO `testq` VALUES (37, 11, 4, 'judgment');
INSERT INTO `testq` VALUES (38, 11, 3, 'multiple');
INSERT INTO `testq` VALUES (39, 11, 7, 'schose');
INSERT INTO `testq` VALUES (40, 12, 12, 'judgment');
INSERT INTO `testq` VALUES (41, 12, 10, 'judgment');
INSERT INTO `testq` VALUES (42, 12, 14, 'judgment');
INSERT INTO `testq` VALUES (43, 12, 5, 'judgment');
INSERT INTO `testq` VALUES (44, 12, 19, 'judgment');
INSERT INTO `testq` VALUES (45, 12, 7, 'judgment');
INSERT INTO `testq` VALUES (46, 12, 20, 'judgment');
INSERT INTO `testq` VALUES (47, 12, 16, 'judgment');
INSERT INTO `testq` VALUES (48, 12, 15, 'judgment');
INSERT INTO `testq` VALUES (49, 12, 6, 'judgment');
INSERT INTO `testq` VALUES (50, 12, 4, 'multiple');
INSERT INTO `testq` VALUES (51, 12, 6, 'multiple');
INSERT INTO `testq` VALUES (52, 12, 5, 'multiple');
INSERT INTO `testq` VALUES (53, 12, 8, 'multiple');
INSERT INTO `testq` VALUES (54, 12, 15, 'schose');
INSERT INTO `testq` VALUES (55, 12, 13, 'schose');
INSERT INTO `testq` VALUES (56, 12, 30, 'schose');
INSERT INTO `testq` VALUES (57, 12, 25, 'schose');
INSERT INTO `testq` VALUES (58, 12, 17, 'schose');
INSERT INTO `testq` VALUES (59, 12, 8, 'schose');
INSERT INTO `testq` VALUES (60, 12, 22, 'schose');
INSERT INTO `testq` VALUES (61, 12, 24, 'schose');
INSERT INTO `testq` VALUES (62, 12, 31, 'schose');
INSERT INTO `testq` VALUES (63, 12, 10, 'schose');
INSERT INTO `testq` VALUES (64, 12, 23, 'schose');
INSERT INTO `testq` VALUES (65, 12, 19, 'schose');
INSERT INTO `testq` VALUES (66, 12, 32, 'schose');
INSERT INTO `testq` VALUES (67, 12, 18, 'schose');
INSERT INTO `testq` VALUES (68, 12, 26, 'schose');
INSERT INTO `testq` VALUES (69, 12, 9, 'schose');
INSERT INTO `testq` VALUES (70, 12, 20, 'schose');
INSERT INTO `testq` VALUES (71, 12, 28, 'schose');
INSERT INTO `testq` VALUES (72, 12, 21, 'schose');
INSERT INTO `testq` VALUES (73, 12, 16, 'schose');
INSERT INTO `testq` VALUES (74, 13, 7, 'judgment');
INSERT INTO `testq` VALUES (75, 13, 14, 'judgment');
INSERT INTO `testq` VALUES (76, 13, 10, 'judgment');
INSERT INTO `testq` VALUES (77, 13, 5, 'judgment');
INSERT INTO `testq` VALUES (78, 13, 12, 'judgment');
INSERT INTO `testq` VALUES (79, 13, 16, 'judgment');
INSERT INTO `testq` VALUES (80, 13, 18, 'judgment');
INSERT INTO `testq` VALUES (81, 13, 15, 'judgment');
INSERT INTO `testq` VALUES (82, 13, 13, 'judgment');
INSERT INTO `testq` VALUES (83, 13, 19, 'judgment');
INSERT INTO `testq` VALUES (84, 13, 6, 'multiple');
INSERT INTO `testq` VALUES (85, 13, 4, 'multiple');
INSERT INTO `testq` VALUES (86, 13, 5, 'multiple');
INSERT INTO `testq` VALUES (87, 13, 8, 'multiple');
INSERT INTO `testq` VALUES (88, 13, 10, 'schose');
INSERT INTO `testq` VALUES (89, 13, 30, 'schose');
INSERT INTO `testq` VALUES (90, 13, 17, 'schose');
INSERT INTO `testq` VALUES (91, 13, 13, 'schose');
INSERT INTO `testq` VALUES (92, 13, 8, 'schose');
INSERT INTO `testq` VALUES (93, 13, 27, 'schose');
INSERT INTO `testq` VALUES (94, 13, 15, 'schose');
INSERT INTO `testq` VALUES (95, 13, 19, 'schose');
INSERT INTO `testq` VALUES (96, 13, 21, 'schose');
INSERT INTO `testq` VALUES (97, 13, 18, 'schose');
INSERT INTO `testq` VALUES (98, 13, 16, 'schose');
INSERT INTO `testq` VALUES (99, 13, 25, 'schose');
INSERT INTO `testq` VALUES (100, 13, 22, 'schose');
INSERT INTO `testq` VALUES (101, 13, 24, 'schose');
INSERT INTO `testq` VALUES (102, 13, 9, 'schose');
INSERT INTO `testq` VALUES (103, 13, 29, 'schose');
INSERT INTO `testq` VALUES (104, 13, 32, 'schose');
INSERT INTO `testq` VALUES (105, 13, 12, 'schose');
INSERT INTO `testq` VALUES (106, 13, 20, 'schose');
INSERT INTO `testq` VALUES (107, 13, 28, 'schose');
INSERT INTO `testq` VALUES (108, 14, 4, 'judgment');
INSERT INTO `testq` VALUES (109, 14, 22, 'judgment');
INSERT INTO `testq` VALUES (110, 14, 3, 'multiple');
INSERT INTO `testq` VALUES (111, 14, 7, 'schose');
INSERT INTO `testq` VALUES (112, 15, 24, 'judgment');
INSERT INTO `testq` VALUES (113, 15, 10, 'multiple');
INSERT INTO `testq` VALUES (114, 15, 34, 'schose');
INSERT INTO `testq` VALUES (115, 16, 24, 'judgment');
INSERT INTO `testq` VALUES (116, 16, 10, 'multiple');
INSERT INTO `testq` VALUES (117, 16, 34, 'schose');

SET FOREIGN_KEY_CHECKS = 1;
