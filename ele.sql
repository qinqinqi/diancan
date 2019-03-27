-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-03-26 15:22:46
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ele`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类的id',
  `cname` varchar(10) NOT NULL COMMENT '分类的名称',
  `cthumb` varchar(100) NOT NULL COMMENT '分类的图片',
  `corder` int(11) NOT NULL COMMENT '分类的排序',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`cid`, `cname`, `cthumb`, `corder`) VALUES
(1, '美食', 'list1.png', 1),
(2, '下午茶', 'list2.png', 2),
(3, '商超便利', 'list3.png', 3),
(4, '果蔬生鲜', 'list4.png', 4),
(5, '新店特惠', 'list5.png', 5),
(6, '大牌简餐', 'list6.png', 6),
(7, '会员领红包', 'list7.png', 7),
(8, '医药健康', 'list8.png', 8),
(9, '甜品饮品', 'list9.png', 9),
(10, '浪漫鲜花', 'list10.png', 10),
(11, '地方小吃', 'list1.png', 11);

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(20) NOT NULL COMMENT '商品的名称',
  `gthumb` varchar(100) NOT NULL COMMENT '商品的缩略图',
  `gprice` float NOT NULL COMMENT '商品的价格',
  `gnumber` int(11) NOT NULL COMMENT '商品的库存',
  `tid` int(11) NOT NULL COMMENT '商品所属的分类',
  `gcount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`gid`, `gname`, `gthumb`, `gprice`, `gnumber`, `tid`, `gcount`) VALUES
(1, '干妈炒饭', 'goods1.webp', 12, 20, 1, 0),
(2, '紫菜蛋花汤', 'goods2.webp', 3, 200, 1, 0),
(3, '扬州炒饭配泡菜', 'goods3.webp', 14, 100, 1, 0),
(4, '招牌卤猪蹄', 'goods4.webp', 20, 20, 1, 0),
(5, '特色卤大鸡腿', 'goods5.webp', 2.5, 20, 1, 0),
(6, '卤鸡蛋', 'goods6.webp', 0.5, 20, 2, 0),
(7, '青菜香菇素包子', 'goods7.webp', 1.5, 20, 2, 0),
(8, '小炒肉焖面', 'goods8.webp', 13, 20, 3, 0),
(9, '皮蛋', 'goods9.webp', 2.5, 20, 4, 0),
(10, '干妈炒饭', 'goods1.webp', 12, 20, 2, 0),
(11, '干妈炒饭', 'goods1.webp', 12, 20, 5, 0),
(12, '紫菜蛋花汤', 'goods2.webp', 3, 200, 3, 0),
(13, '紫菜蛋花汤', 'goods2.webp', 3, 200, 3, 0),
(14, '特色卤大鸡腿', 'goods5.webp', 2.5, 20, 4, 0),
(15, '小炒肉焖面', 'goods8.webp', 2.5, 20, 6, 0),
(16, '小炒肉焖面', 'goods8.webp', 2.5, 20, 6, 0),
(17, '招牌卤猪蹄', 'goods4.webp', 20, 20, 7, 0),
(18, '卤鸡蛋', 'goods6.webp', 0.5, 20, 8, 0),
(19, '干妈炒饭', 'goods1.webp', 12, 20, 9, 0);

-- --------------------------------------------------------

--
-- 表的结构 `goodstype`
--

CREATE TABLE IF NOT EXISTS `goodstype` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(10) NOT NULL COMMENT '类型的名称',
  `torder` int(11) NOT NULL COMMENT '类型的排序',
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `goodstype`
--

INSERT INTO `goodstype` (`gid`, `tname`, `torder`, `sid`) VALUES
(1, '热销', 1, 1),
(2, '优惠套餐', 2, 1),
(3, '折扣', 3, 1),
(4, '品牌故事', 4, 1),
(5, '新品网红辣椒酱', 5, 1),
(6, '特色豪华套餐', 6, 1),
(7, '港式铁板炒饭', 7, 1),
(8, '土豪加料区', 8, 1),
(9, '炒饭伴侣', 9, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sat`
--

CREATE TABLE IF NOT EXISTS `sat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺和type的关系',
  `sid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `sat`
--

INSERT INTO `sat` (`id`, `sid`, `tid`) VALUES
(1, 1, 3),
(2, 1, 5),
(3, 1, 4),
(4, 2, 1),
(5, 3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) NOT NULL COMMENT '店铺名',
  `slogo` varchar(50) NOT NULL COMMENT '店铺logo',
  `sbg` varchar(100) NOT NULL COMMENT '店铺背景',
  `sdescription` varchar(100) NOT NULL COMMENT '店铺描述',
  `sstar` float NOT NULL COMMENT '店铺评分',
  `sbrand` int(11) NOT NULL COMMENT '是否为品牌',
  `stype` int(11) NOT NULL COMMENT '配送方式',
  `schargingFee` float NOT NULL COMMENT '起送费',
  `sdistributionFee` float NOT NULL COMMENT '配送费',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`sid`, `sname`, `slogo`, `sbg`, `sdescription`, `sstar`, `sbrand`, `stype`, `schargingFee`, `sdistributionFee`) VALUES
(1, '周先生的饭', 'logo1.webp', 'bg1.webp', '我们用心做好每一份饭', 5, 0, 0, 20, 2.5);

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '小分类id',
  `tname` varchar(10) NOT NULL COMMENT '小分类名称',
  `cid` int(11) NOT NULL COMMENT '大分类',
  `torder` int(11) NOT NULL COMMENT '分类排序',
  `tthumb` varchar(500) NOT NULL COMMENT '小分类缩略图',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`tid`, `tname`, `cid`, `torder`, `tthumb`) VALUES
(1, '汉堡披萨', 1, 1, 'list1.png'),
(2, '香锅冒菜', 1, 2, 'list1.png'),
(3, '简餐便当', 1, 3, 'list1.png'),
(4, '日韩料理', 1, 4, 'list1.png'),
(5, '面试粥点', 1, 5, 'list1.png'),
(6, '轻食西餐', 1, 6, 'list1.png'),
(7, '小吃炸串', 1, 7, 'list1.png'),
(8, '地方菜系', 1, 8, 'list1.png');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `phone`) VALUES
(1, 'admin', 'admin', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
