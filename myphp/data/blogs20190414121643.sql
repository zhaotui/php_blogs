-- MySQL dump 10.13  Distrib 5.5.38, for Win32 (x86)
--
-- Host: localhost    Database: blogs
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `article_id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '日志自增ID号',
  `article_name` varchar(128) NOT NULL COMMENT '文章名称',
  `article_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `article_ip` varchar(15) NOT NULL COMMENT '发布IP',
  `prope` tinyint(2) NOT NULL DEFAULT '0' COMMENT '属性',
  `user_id` mediumint(8) NOT NULL COMMENT '所属用户ID',
  `article_message` varchar(255) NOT NULL COMMENT '文章摘要',
  `article_content` text NOT NULL COMMENT '文章内容',
  `paixu` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`article_id`),
  UNIQUE KEY `article_id` (`article_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (14,'Speaking at Technarte  IN  Bilbao, Spain','2018-12-04 03:35:09','趣事与游记',1,0,'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely disappointed.This is dummy copy. It is not meant to b','<h2 class=\"header\" style=\"-webkit-font-smoothing: antialiased; padding: 0px 0px 15px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-size: 44px; font-family: Montserrat, Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(43, 43, 43); position: relative; letter-spacing: -2px; white-space: normal;\">Speaking at Technarte&nbsp;<br/><span class=\"italic\" style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-style: italic; font-size: 44px; font-family: Lora, Arial, Helvetica, sans-serif; vertical-align: baseline;\">in</span>&nbsp;Bilbao, Spain</h2><p class=\"large\" style=\"-webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 10px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-family: Lora, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; line-height: 1.5; transition: all 0.2s ease 0s; position: relative; color: rgb(136, 136, 136); white-space: normal; text-align: left !important;\">This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely disappointed.</p><p style=\"-webkit-font-smoothing: antialiased; padding-top: 0px; padding-bottom: 0px; margin-top: 0px; margin-bottom: 10px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-size: 15px; font-family: Lora, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; line-height: 1.5; transition: all 0.2s ease 0s; position: relative; color: rgb(136, 136, 136); white-space: normal; text-align: left !important;\">Our collection of modern&nbsp;<a href=\"http://undefined\" style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-size: 15px; font-family: inherit; vertical-align: baseline; color: rgb(85, 85, 85); text-decoration-line: underline; transition: all 0.2s ease 0s;\">hipster</a>&nbsp;photographic images. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In the 1980s, Vestibulum id ligula felisat euismod semper. Donec id elit non mi porta gravida at eget metos. Donec sed odio dui. Maecenas faucibus mollis interdum. Duis mollis est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam id dolor id nibh ultricies vehicula ut id elit.</p><ul class=\"unordered-list\" style=\"-webkit-font-smoothing: antialiased; padding: 10px 0px 15px 30px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-style: italic; font-size: 15px; font-family: Lora, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; list-style-position: initial; list-style-image: initial; line-height: 1.5; color: rgb(136, 136, 136); white-space: normal; text-align: left !important;\"><li style=\"-webkit-font-smoothing: antialiased; padding: 0px 0px 7px; margin: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-weight: 600; font-style: inherit; font-size: 15px; font-family: inherit; vertical-align: baseline;\">Game Design</span>: services include digital content and in-store digital experience</li><li style=\"-webkit-font-smoothing: antialiased; padding: 0px 0px 7px; margin: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-weight: 600; font-style: inherit; font-size: 15px; font-family: inherit; vertical-align: baseline;\">Creative R &amp; D</span>: combined strategic planning expertise with our creative resources.</li><li style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-weight: 600; font-style: inherit; font-size: 15px; font-family: inherit; vertical-align: baseline;\">Photography</span>: in-house 9,500 sqft photographic studio</li></ul><p style=\"-webkit-font-smoothing: antialiased; padding-top: 0px; padding-bottom: 0px; margin-top: 0px; margin-bottom: 10px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-size: 15px; font-family: Lora, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; line-height: 1.5; transition: all 0.2s ease 0s; position: relative; color: rgb(136, 136, 136); white-space: normal; text-align: left !important;\">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p><p><br/></p>',0),(13,'云霾在黑暗中发愁，竟忘记遮住太阳的就是自己','2018-12-04 03:33:42','趣事与游记',1,0,'有些决定，只需要一分钟，可是，却会用一辈子，去后悔那一分钟。','<p><br/></p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">总有一天，我会像束光一样，冲开桎梏，散发属于自己的光芒，照亮前行的路。 可惜这世界没有什么事毋须争取而会自然发生，所谓顺其自然，并不代表任何工夫都不做，而是做得不露痕迹，做得含蓄，不那么恶形恶状，争先恐后，已经叫做顺其自然。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　自己<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">喜欢</a>的日子，就是最美的日子；适合自己的活法，就是最好的活法。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　生活，其实并没有拖欠我们任何东西，所以我们没有必要总是板着脸给它看。我们应该感谢它，至少，它给了我们生存的空间。一路走来，经历过风和雨的洗礼，收获了很多，历经磨难，发现自己<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">成长</a>了，这就是生活给我们最好的礼物。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">心情</a>就像衣服，脏了就拿去洗洗，晒晒，阳光自然就会蔓延开来。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　当一切都已过去，我知道，我会把你忘记。心上的重担卸落，请你，请你原谅我。生命，原是要不断地受伤和不断地复原。世界，仍然是一个在温柔地<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">等待</a>着我<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">成熟</a>的果园。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　我唯一锲而不舍，愿意以自己的生命去<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">努力</a>的，只不过是保守我个人的心怀意念，在我有生之日，做一个真诚的人，不<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">放弃</a>对生活的热爱和<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">执着</a>，在有限的时空里，过无限广大的日子。 人的一生也正如太阳的一天。早晨为人们带来曙光，傍晚为人们带来黑暗。一天也就如此。有深，有浅，有起，有落，生活亦是这般变化的，晴天雨天都是必经。你能懂得，你便从容。</p><br/><p><br/></p>',2),(15,'《人间词话》：境界才是词之灵魂','2018-12-04 03:36:27','趣事与游记',1,0,'　诗词之美，美在淡雅灵秀，美在潇洒大气，美在意境天成。诗词的天空璀璨夺目，光芒万丈，历经千年而不衰，吸引着无数后来者陶醉其中。','<p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">诗词之美，美在淡雅灵秀，美在潇洒大气，美在意境天成。诗词的天空璀璨夺目，光芒万丈，历经千年而不衰，吸引着无数后来者陶醉其中。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　读诗词，不仅能让我们了解诗人的性情，体会他们的悲欢离合。好的诗词，还能陶冶我们的情操，提高我们的涵养，增长我们的见识。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　那么，什么样的诗词才是好的诗词呢？</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　词以境界为最上。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　言气质，言神韵，不如言境界。有境界而二者随之矣。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　境界才是词的精髓，好的词必定境界高远。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　所谓境界，就是一个人对<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">生活</a>的<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">感悟</a>和精神的修为。对<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">人生</a>的觉悟越高，境界也就越高。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　如苏轼的《水调歌头·明月几时有》中：</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　“人有悲欢离合，月有阴晴圆缺，此事古难全。”</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　短短十几字，却道出了人生<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">哲理</a>。</p><p style=\"color: rgb(0, 0, 0); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; text-align: start; white-space: normal;\">　　再如他的《念奴娇·赤壁怀古》，以景寓情，明明在<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">伤感</a>怀古，却能写得豪迈不羁。可见无论遇到什么艰难困苦，都打败不了一颗<a href=\"http://undefined\" style=\"color: rgb(51, 51, 51);\">乐观</a>豁达的心。</p><p><br/></p>',0),(28,'测试','2018-12-04 08:27:11','趣事与游记',1,0,'','啊实打实',5),(29,'JS工具库和基础库','2018-12-05 02:38:25','专业知识',0,0,'Underscore和Lodash是非常优秀的JavaScript工具库，提供了非常多的工具方法用于操作集合、数组、方法、对象等。但是，当我们现在进行开发时，很多时候我们利用的方法已经被ES5与ES6所支持了，如果希望减少依赖的话，可以根据目标浏览器来选择不用Lodash或者Underscore。','<p>\r\n    Underscore和Lodash是非常优秀的JavaScript工具库，提供了非常多的工具方法用于操作集合、数组、方法、对象等。但是，当我们现在进行开发时，很多时候我们利用的方法已经被ES5与ES6所支持了，如果希望减少依赖的话，可以根据目标浏览器来选择不用Lodash或者Underscore。\r\n</p>\r\n<p>\r\n    jQuery曾被誉为Web开发的瑞士军刀，是前端程序员的必备技能，解决了浏览器的兼容性问题，但是对DOM的随意操作会导致程序难以维护。随着各种现代框架的出现，jQuery的风头似乎正被掩盖，在google趋势上从2012年达到最高点后一路走低。不可否认的是，目前以及未来一段时间内，大多数Web应用仍然会依赖jQuery及其相关插件。\r\n</p>\r\n<p>\r\n    其它，跟Underscore和Lodash类似的还有Ramda，跟jQuery类似的有Prototype和Zepto。\r\n</p>\r\n<p>\r\n    为防止数据被无意更改而导致很隐晦的bug，可以考虑用Immutable.js，它可以将数据封装确保状态不被改变。\r\n</p>\r\n<p>\r\n    ---------------------&nbsp;\r\n</p>\r\n<p>\r\n    作者：李子无为&nbsp;\r\n</p>\r\n<p>\r\n    来源：CSDN&nbsp;\r\n</p>\r\n<p>\r\n    原文：https://blog.csdn.net/napolunyishi/article/details/79176176&nbsp;\r\n</p>\r\n<p>\r\n    版权声明：本文为博主原创文章，转载请附上博文链接！\r\n</p>\r\n<p style=\"text-align: left;\">\r\n    <br/>\r\n</p>',0),(30,'2017年Web前端技术综述','2018-12-05 06:32:23','专业知识',0,0,'Web前端应用发展的历史大概经历了三个阶段：第一个阶段使用的是简单的静态页面，第二个阶段使用得是ASP、JSP、PHP等动态脚本语言，第三个阶段是Web2.0阶段，其核心技术是AJAX，同时伴随着SPA的兴起。','<p>\r\n    <br/>\r\n</p>\r\n<p>\r\n    从ES6开始，JavaScript语言本身的标准化和发展进入新阶段。除了一些语法糖，如胖箭头、includes方法、class关键字等，让JS代码更加清爽外，新的extend继承方式、块变量等特性的引入则让JS更加像一门“正常”的语言。\r\n</p>\r\n<p>\r\n    异步操作似乎是JavaScript规范一直在孜孜解决的问题，从最早的回调函数，到Promise，到Generator函数，再到async，这些新特性一方面解决了回调地狱问题，另外一方面也让代码更加符合人类的串行思维方式。如果觉得Promise这种异步处理方式满足不了复杂的应用场景，可以考虑一下RxJS。引用官网的说法：RxJS是使用Observables的响应式编程的库，它使编写异步或基于回调的代码更容易。\r\n</p>\r\n<p>\r\n    尽管有些浏览器不支持ES5以后的JavaScript新特性，但有Babel在，尽管放手使用最新的ES特性。将Babel串到你的构建流程中，它会将新的特性转化为浏览器支持更好的ES5代码。\r\n</p>\r\n<p>\r\n    JavaScript的弱类型经常会导致一些bug，这时候可以使用Flow/JSHint等静态检查工具。为提高代码可读性，可以使用Prettier来美化代码。\r\n</p>\r\n<p>\r\n    TC39的长期不作为，让一批不甘被ES5束缚住手脚的“方言”涌现出来，或者叫flavor，如CoffeeScript、Dart、Elm、TypeScript、Reason等。这些语言的初衷或者是为弥补原生JavaScript语言特性的不足，将一些更高级的语法引入进来，或者直接采用一种更成熟的语法，然后编译为JavaScript。从目前发展来看，CoffeeScript、Dart已经衰落，而TypeScript、Reason正当红，这些语言中一些有价值的特性逐渐被ECMAScript纳入标准，但是是否会取代JavaScript或者多大程度上取代JavaScript还很难说。\r\n</p>\r\n<p>\r\n    上面的各种方言不管如何强大，最后还是要transpile到JavaScript，JS在浏览器端一路高歌猛进，独孤求败，似乎千秋大业已成。但在某个角落，一股反叛力量正在孕育，这就是由谷歌，微软，Mozilla，苹果等公司合作推出的WebAssembly！看看有多反动：“一种全新的跨浏览器Web中间表示层安全代码，为未来浏览器带来一种可执行的标准二进制数据格式，使得越来越多的开发者，不仅仅是JavaScript开发者，甚至是Rust，C#，Go语言的开发者，借助统一的编译机制，预先将这些语言开发的逻辑编译为浏览器可以执行的二进制代码格式，以此提高Web内容的性能和表现能力，同时为更多语言的开发者提供一种为Web开发内容的有效途径。” 注意，WebAssembly是可以在浏览器上直接执行的唯二语言。2017年，Chrome，Firefox，IE，Safari四个浏览器统一通过了WebAssembly的方案。如果说nodejs的出现让JavaScript的开发者能够染指后台开发的话，那么WebAssembly似乎要革了JavaScript的命，动摇了其在浏览器上的霸主地位，很多语言都能直接开发Web应用了。\r\n</p>\r\n<p>\r\n    ---------------------&nbsp;\r\n</p>\r\n<p>\r\n    作者：李子无为&nbsp;\r\n</p>\r\n<p>\r\n    来源：CSDN&nbsp;\r\n</p>\r\n<p>\r\n    原文：https://blog.csdn.net/napolunyishi/article/details/79176176&nbsp;\r\n</p>\r\n<p>\r\n    版权声明：本文为博主原创文章，转载请附上博文链接！\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>',0),(31,'Web前端开发技术的核心思想','2018-12-05 06:32:39','专业知识',0,0,'入门标准很简单，就一条：达到能参与 Web 前端实际项目的开发水平。请注意，是实际项目，这就需要了解如今的实际项目开发都用了哪些技术栈。HTML/CSS/JavaScript 这三大基础技术栈肯定是需要掌握的，但要能参与实际项目开发，肯定还要掌握其他一些主流的框架体系。','<p><br/></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\"><span class=\"bjh-p\">入门标准很简单，就一条：达到能参与 Web 前端实际项目的开发水平。请注意，是实际项目，这就需要了解如今的实际项目开发都用了哪些技术栈。HTML/CSS/JavaScript 这三大基础技术栈肯定是需要掌握的，但要能参与实际项目开发，肯定还要掌握其他一些主流的框架体系。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\"><span class=\"bjh-p\">几年前， jQuery + Bootstrap可以说是一统江湖，是前端领域的绝对霸主。而这几年，随着Angular、React、Vue等框架的兴起，变成了百家争鸣的局面。这几年，Web 前端的技术发展真是太快了，相应地，技术栈也就变得非常多，除了最基本的HTML/CSS/JavaScript，以及Vue/React/Angular等这些 JavaScript 框架和各自的生态体系，还有 CSS 预处理器Sass/Less/Stylus，还有TypeScript，还有grunt/webpack/gulp等各种打包构建工具，还有其他一大堆技术栈。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal;\"><span class=\"bjh-p\">这么多技术栈，我们不可能全都掌握，就算是资深的前端工程师，也只是精通其中一部分，比如，有些精通 Angular，有些掌握 React，有些则熟悉 Vue，很少有人对三种框架生态体系都非常了解。因此，我们入门也没必要每种框架都学习，只要挑选一种就够了。而且，作为全栈，我们学习一门技术更重要的是要学习技术背后的编程思想、设计思想、架构思想等。而不管是 Angular、React 还是 Vuew，其背后的核心设计思想都是组件化的设计，因此只要掌握一种框架，我们也就能学习到前端技术的核心思想了。</span></p><p><br/></p>',0),(32,'UI框架','2018-12-05 06:32:46','专业知识',0,0,'上一节提到过React和Vue.js都专注于MVC的View，那它们跟UI框架什么区别呢？上一节说的View只关心DOM对象的生成及交互响应，而这一节里面的框架、库则真正决定UI长什么样、是否美观。这里继续细分的话又可以分为CSS框架（包括预处理器）、UI控件库、数据可视化库等等。','<p>所谓CSS框架其实也就是提前写好的一些CSS，只要在你的HTML中加上对应的类，就能展现出CSS应用的效果。CSS框架虽然也很多，但是影响力比较大的仍旧是老牌的Bootstrap、Foundation、Semantic-ui等，可能由于一些公司有内部UI规范或者CSS还没复杂到需要框架的原因，在stateofjs调查中，很多人不用CSS框架。从CSS发展的趋势看，移动优先，响应式布局，支持网格布局和Flexbox技术，这些是最新CSS框架着力发展的方向。</p><p>CSS预处理工具的主要目的是弥补CSS语法不够强大，解决书写啰嗦，维护困难等问题。目前最主流的三个预处理器是SASS/SCSS、LESS和Stylus，主要特性是提供了变量、函数和mixin、import以及一些逻辑控制语法等。不同于SASS等工具， PostCSS通过强大的插件体系，可以对CSS进行各种不同的转换和处理，包括语法检查 stylelint 插件、交叉编译sugarss 插件)、命名改编以避免选择器冲突( modules 插件 )、模板 CSS 代码生成( autoprefixer 插件 )、文件压缩等等。</p><p>CSS-in-JS是一种用JavaScript编写CSS样式的技术，通过鼓励采用一种通用模式，编写样式以及应用样式的JavaScript组件，使样式和逻辑的关注点得到统一。该领域中的新秀，诸如JSS、emotion和styled-components，依靠工具来将CSS-in-JS代码转化成独立的CSS样式表，从而适合在浏览器里运行。</p><p>UI控件库提供诸如Grid、Calendar、Panel、Scheduler等Web控件，常见的如Sencha Ext JS、jQuery UI、KendoUI、ant.d（蚂蚁金服出品）等。除了基础控件库，还有动画库如Popmotion，图标库如Font Awesome等。</p><p>数据可视化库提供各种统计图表，如bar chart、timeseries chart、pie chart等，比较有名的是Highcharts和百度开源的Echarts，前者基于SVG，后者基于Canvas。如果这两个库还不够用，可以考虑用D3自造轮子。</p>',0),(33,'关于我们','2018-12-07 08:14:58','趣事与游记',0,0,'','<h2 class=\"header\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Montserrat, Arial, Helvetica, sans-serif; color: rgb(43, 43, 43); font-size: 44px; white-space: normal; -webkit-font-smoothing: antialiased; padding: 0px 0px 15px; text-rendering: optimizeLegibility; outline: 0px; border: 0px; vertical-align: baseline; position: relative; letter-spacing: -2px;\">关于我们</h2><p class=\"large\" style=\"margin-top: 0px; margin-bottom: 10px; color: rgb(136, 136, 136); white-space: normal; -webkit-font-smoothing: antialiased; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-family: Lora, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; line-height: 1.5; transition: all 0.2s ease 0s; position: relative; text-align: left !important;\">&nbsp; &nbsp; &nbsp;你好，陌生人，欢迎访问，我的个人博客，需要与我联系请留言。我是一名前端小白，热爱编程，喜欢打篮球，如果你想更好的了解我，请接着往下看:</p><p class=\"large\" style=\"margin-top: 0px; margin-bottom: 10px; color: rgb(136, 136, 136); white-space: normal; -webkit-font-smoothing: antialiased; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-family: Lora, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; line-height: 1.5; transition: all 0.2s ease 0s; position: relative; text-align: left !important;\">。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。</p><p class=\"large\" style=\"margin-top: 0px; margin-bottom: 10px; color: rgb(136, 136, 136); white-space: normal; -webkit-font-smoothing: antialiased; text-rendering: optimizeLegibility; outline: 0px; border: 0px; font-family: Lora, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; line-height: 1.5; transition: all 0.2s ease 0s; position: relative; text-align: left !important;\">嘻嘻，没有了，需要联系，请留言</p>',0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_sort`
--

DROP TABLE IF EXISTS `article_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_sort` (
  `sort_article_id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '文章自增ID',
  `user_id` mediumint(8) NOT NULL COMMENT '该分类所属用户',
  `sort_article_name` varchar(60) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`sort_article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_sort`
--

LOCK TABLES `article_sort` WRITE;
/*!40000 ALTER TABLE `article_sort` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_sort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stay_message`
--

DROP TABLE IF EXISTS `stay_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stay_message` (
  `stay_id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '留言表自增ID',
  `stay_title` varchar(10) NOT NULL COMMENT '留言标题',
  `stay_name` varchar(10) NOT NULL COMMENT '留言者姓名',
  `stay_phone` varchar(13) NOT NULL COMMENT '留言者电话',
  `message_content` varchar(255) NOT NULL COMMENT '留言内容',
  `message_stay_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '留言时间',
  PRIMARY KEY (`stay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay_message`
--

LOCK TABLES `stay_message` WRITE;
/*!40000 ALTER TABLE `stay_message` DISABLE KEYS */;
INSERT INTO `stay_message` VALUES (8,'撒大苏打s\'d\'s\'','撒大苏打','13086280098','实打实大苏打','2018-12-04 06:29:24'),(6,'sdsdsds','sdsdsdsds','13086280098','sdsdsdsdsdsd','2018-12-04 03:20:47'),(7,'实打实打算','实打实打算','13086280098','撒大苏打','2018-12-04 06:28:58'),(9,'速度速度速度速度','实打实大苏打','13086280098','大苏打实打实大苏打','2018-12-04 06:29:32'),(13,'sdasd ','sds ','13086280098','sdsdsd','2018-12-05 02:35:19'),(15,'撒大苏打','sd sd','13086280098','adsdsd','2018-12-05 02:35:46');
/*!40000 ALTER TABLE `stay_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `user_name` varchar(255) NOT NULL COMMENT '用户名称',
  `user_password` varchar(255) NOT NULL COMMENT '用户密码',
  `user_xp` varchar(13) NOT NULL COMMENT 'admin验证码',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'admin','13086280098','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-14 12:16:45
