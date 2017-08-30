-- phpMyAdmin SQL Dump
-- version 4.6.6deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2017-08-30 21:16:59
-- 服务器版本： 5.6.30-1
-- PHP Version: 5.6.26-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_run`
--

-- --------------------------------------------------------

--
-- 表的结构 `Enrol`
--

CREATE TABLE `Enrol` (
  `id` int(10) NOT NULL COMMENT 'id自增',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `time` int(10) NOT NULL COMMENT '报名日期',
  `run_time` int(10) NOT NULL COMMENT '跑步时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报名信息表';

-- --------------------------------------------------------

--
-- 表的结构 `Money`
--

CREATE TABLE `Money` (
  `id` int(10) NOT NULL COMMENT 'ID自增长',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `come` varchar(128) NOT NULL COMMENT '来源',
  `date` int(10) NOT NULL COMMENT '时间',
  `money` float(10,2) NOT NULL COMMENT '金钱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='余额详情表';

--
-- 转存表中的数据 `Money`
--

INSERT INTO `Money` (`id`, `user_id`, `come`, `date`, `money`) VALUES
(1, 1, '0', 0, 0.00),
(2, 2, '0', 0, 0.00),
(3, 3, '0', 0, 0.00),
(4, 4, '0', 0, 0.00),
(5, 5, '0', 0, 0.00),
(6, 6, '0', 0, 0.00),
(7, 7, '0', 0, 0.00),
(8, 8, '0', 0, 0.00),
(9, 9, '0', 0, 0.00),
(10, 10, '0', 0, 0.00),
(11, 11, '0', 0, 0.00),
(12, 12, '0', 0, 0.00),
(13, 13, '0', 0, 0.00),
(14, 14, '0', 0, 0.00),
(15, 15, '0', 0, 0.00),
(16, 16, '0', 0, 0.00),
(17, 17, '0', 0, 0.00),
(18, 18, '0', 0, 0.00),
(19, 1, '报名费', 0, 20.00),
(20, 2, '报名费', 0, 20.00),
(21, 7, '报名费', 0, 20.00),
(22, 8, '报名费', 0, 20.00),
(23, 10, '报名费', 0, 20.00),
(24, 11, '报名费', 0, 20.00),
(25, 12, '报名费', 0, 20.00),
(26, 16, '报名费', 0, 20.00);

-- --------------------------------------------------------

--
-- 表的结构 `Run`
--

CREATE TABLE `Run` (
  `id` int(10) NOT NULL COMMENT 'id自增长',
  `user_id` varchar(128) NOT NULL COMMENT '用户id',
  `time` int(10) NOT NULL COMMENT '跑步用时/秒',
  `length` float(10,2) NOT NULL COMMENT '跑步距离',
  `img` varchar(255) NOT NULL COMMENT '跑步图片',
  `date` int(10) NOT NULL COMMENT '跑步日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Run`
--

INSERT INTO `Run` (`id`, `user_id`, `time`, `length`, `img`, `date`) VALUES
(4, '7', 2849, 3.02, '1504092980.png', 1504092980),
(5, '12', 4046, 3.03, '1504093016.png', 1504093016),
(6, '2', 3345, 3.05, '1504093102.png', 1504093102),
(7, '10', 2605, 5.19, '1504093142.png', 1504093142),
(8, '8', 1529, 3.58, '1504093218.png', 1504093218),
(9, '11', 3659, 10.06, '1504093309.png', 1504093309),
(10, '1', 1122, 3.02, '1504093351.png', 1504093351),
(11, '16', 2478, 3.13, '1504093402.png', 1504093402),
(12, '1', 6732, 8.03, '1504093454.png', 1504093454),
(13, '9', 3183, 3.69, '1504093797.png', 1504093797),
(14, '7', 1271, 3.04, '1504093834.png', 1504093834),
(15, '11', 2772, 7.56, '1504093864.png', 1504093864),
(16, '8', 1558, 3.03, '1504093906.png', 1504093906),
(17, '10', 2183, 3.67, '1504093961.png', 1504093961),
(18, '12', 1527, 3.00, '1504093990.png', 1504093990),
(19, '2', 1793, 3.05, '1504094035.png', 1504094035),
(20, '16', 2800, 4.34, '1504094071.png', 1504094071),
(21, '7', 1296, 3.01, '1504094102.png', 1504094102),
(22, '8', 1160, 3.04, '1504094214.png', 1504094214),
(23, '2', 1500, 3.11, '1504094247.png', 1504094247),
(24, '10', 2100, 4.00, '1504094291.png', 1504094291),
(25, '9', 2002, 4.00, '1504094366.png', 1504094366),
(26, '12', 1495, 3.00, '1504094428.png', 1504094428),
(27, '16', 2105, 3.18, '1504094458.png', 1504094458),
(28, '13', 1500, 3.00, '1504094544.png', 1504094544),
(29, '11', 900, 3.00, '1504094610.png', 1504094610),
(30, '1', 1500, 3.00, '1504094744.png', 1504094744),
(31, '1', 0, 0.00, '0', 0),
(32, '2', 0, 0.00, '0', 0),
(33, '3', 0, 0.00, '0', 0),
(34, '4', 0, 0.00, '0', 0),
(35, '5', 0, 0.00, '0', 0),
(36, '6', 0, 0.00, '0', 0),
(37, '7', 0, 0.00, '0', 0),
(38, '8', 0, 0.00, '0', 0),
(39, '9', 0, 0.00, '0', 0),
(40, '10', 0, 0.00, '0', 0),
(41, '11', 0, 0.00, '0', 0),
(42, '12', 0, 0.00, '0', 0),
(43, '13', 0, 0.00, '0', 0),
(44, '14', 0, 0.00, '0', 0),
(45, '15', 0, 0.00, '0', 0),
(46, '16', 0, 0.00, '0', 0),
(47, '17', 0, 0.00, '0', 0),
(48, '18', 0, 0.00, '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `User`
--

CREATE TABLE `User` (
  `id` int(10) NOT NULL COMMENT 'id自增',
  `nickname` varchar(128) NOT NULL COMMENT '昵称',
  `realname` varchar(128) NOT NULL COMMENT '真实姓名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `User`
--

INSERT INTO `User` (`id`, `nickname`, `realname`) VALUES
(1, '木饭', '范未浩'),
(2, 'Alex', '张俊毅'),
(3, 'Celin', '肖心怡'),
(4, '勇哥', '黄勇'),
(5, '跃迁', '郭强'),
(6, '波波', '许艳博'),
(7, '英浩', '李英浩'),
(8, '大利', '梁运利'),
(9, '曹立', '曹立'),
(10, 'Gaven', '龚克分'),
(11, '顺哥', '韦子顺'),
(12, '阳仔', '张晨阳'),
(13, '娟娟', '范亚娟'),
(14, '阿锅', '郭嘉欣'),
(15, '挣钱', '支政权'),
(16, '花花', '屠春花'),
(17, '阿鱼', '刘煜'),
(18, '江聪', '江聪');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Enrol`
--
ALTER TABLE `Enrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Money`
--
ALTER TABLE `Money`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Run`
--
ALTER TABLE `Run`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `Enrol`
--
ALTER TABLE `Enrol`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id自增';
--
-- 使用表AUTO_INCREMENT `Money`
--
ALTER TABLE `Money`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID自增长', AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `Run`
--
ALTER TABLE `Run`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id自增长', AUTO_INCREMENT=49;
--
-- 使用表AUTO_INCREMENT `User`
--
ALTER TABLE `User`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id自增', AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
