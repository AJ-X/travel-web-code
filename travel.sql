-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-11 14:39:11
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- 表的结构 `travel_admin`
--

CREATE TABLE `travel_admin` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `travel_admin`
--

INSERT INTO `travel_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `travel_jingdian`
--

CREATE TABLE `travel_jingdian` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pic` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `message` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `travel_jingdian`
--

INSERT INTO `travel_jingdian` (`id`, `name`, `address`, `type`, `pic`, `message`) VALUES
(1, '热气球', '土耳其', '休闲', 'img_1.jpg', '热气球是个神奇的存在，提到它自动就会与浪漫、冒险、奇幻等一系列词汇联系到一起。毕竟在凡尔纳知名科幻小说里，主人公就是坐在一艘热气球上出发的。到现今，很多人的梦想清单里，热气球也属于毕生一定要tick的体验~'),
(2, '大剧院', '悉尼', '音乐', 'img_3.jpg', '表演艺术的殿堂，文化交流的大平台，文化创意产业的重要基地，大剧院造型独特的主体结构，体现了人与人、人与艺术、人与自然和谐共融、相得益彰的理念。'),
(3, ' 文艺之路', '田子坊', '文艺', 'img_2.jpg', '漫步街道上，心灵走向愉悦，触发心中的感触。走在内心中，看见街道上一点一滴美好的事，迈向光明;走在街道上，看见的不只是事物，而是未来人生的方向。'),
(4, '天一阁', '天一', '文化', 'img_4.jpg', '中国藏书文化的代表之作，以藏书文化为特色，融社会历史、艺术于一体的综合性博物馆，是中国现存最早的私家藏书楼，也是亚洲现有最古老的图书馆和世界最早的三大家族图书馆之一，被国务院公布为全国重点文物保护单位。'),
(5, '博物馆', '宁波', '文化', 'img_5.jpg', '以人类短暂如尘埃的生命，企图独自理解万物兴衰、文明涨落、宇宙运行的规律，不依赖前人积累，根本不可能办到。追寻真理需要长远且精确的布局，博物馆，为我们提供了可以勉强比肩缪斯的神圣场所。'),
(6, '芦苇天地', '安吉', '自然', 'img_7.jpg', '蒹葭苍苍，白露为霜。所谓伊人，在水一方。溯洄从之，道阻且长。溯游从之，宛在水中央。蒹葭凄凄，白露未晞。所谓伊人，在水之湄。溯洄从之，道阻且跻。溯游从之，宛在水中坻。'),
(7, '新街口', '南京', '商业', 'img_6.jpg', '新街口广场，是著名的商业中心，拥有百年历史，大小商家星罗棋布，高中低档全面覆盖，被誉为“中华第一商圈”，众多银行聚集于此，构成银行区，使这里成为中国的“华尔街”'),
(8, '碧海沙滩', '舟山', '休闲自然', 'img_8.jpg', '这是一个浸泡在蔚蓝色海水中的安静世界，一片碧蓝澄澈的海水，白色沙滩，热带植物，用粉刷棚屋、茅草屋顶、海滨深夜的情歌和落日下的美食共同筑起的伊甸园，一条充满浪漫、充满梦幻、充满遐想的风景线。');

-- --------------------------------------------------------

--
-- 表的结构 `travel_jingdianyuding`
--

CREATE TABLE `travel_jingdianyuding` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `zhuangtai` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '已预定，待审核'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `travel_jingdianyuding`
--

INSERT INTO `travel_jingdianyuding` (`id`, `username`, `name`, `time`, `zhuangtai`) VALUES
(1, '222', '博物馆', '1522938144', '预定成功'),
(2, '222', '博物馆', '1522938178', '预定成功'),
(3, '111', ' 文艺之路', '1522996462', '预定成功'),
(4, '111', '碧海沙滩', '1522996654', '预定成功'),
(5, '222', '天一阁', '1523021757', '预定成功'),
(6, '333', ' 文艺之路', '1523022519', '预定成功');

-- --------------------------------------------------------

--
-- 表的结构 `travel_jiudian`
--

CREATE TABLE `travel_jiudian` (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `money` int(20) NOT NULL,
  `pic` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `travel_jiudian`
--

INSERT INTO `travel_jiudian` (`id`, `name`, `money`, `pic`) VALUES
(2, '欢乐假日房', 500, '20180421\\87d4ed4c13c721ee5305940ef7d4a30e.jpg'),
(3, '休闲娱乐房', 420, '20180415\\46fcb450f31948febc467f4085396606.jpg'),
(4, '临海经典房', 620, '20180415\\6362aa86217fe8fc5bae66251bc6ffe4.jpg'),
(5, '舟山景点房', 120, '20180415\\3792cce96b4cb99ccb1438203522c33e.jpg'),
(6, '海景大床房', 1320, '20180415\\6baea2fbafb46102b10e67fdfefa6da2.jpg'),
(7, '皇冠假日酒店', 390, '20180415\\7030c1c58b3e15dcc142a12f4bfa5852.jpg'),
(8, '欢乐假日酒店', 499, '20180415\\7ec559cd51f6392a0208a056ff8e567e.jpg'),
(9, '休闲假日酒店', 399, '20180415\\80258c1d29487117b7f74d9382cc5cc7.jpg'),
(10, '临海假日酒店', 699, '20180415\\40fe673b3f2b63fde9bfd7d123a73d28.jpg'),
(11, '半岛假日酒店', 299, '20180415\\d4acb1b26ff43718ad5e4ccf208b74c8.jpg'),
(12, '海景假日酒店', 550, '20180415\\4000fa0836bd47bf99209b61baed7040.jpg'),
(13, '皇庭假日酒店', 800, '20180415\\d99603d8c80cd13f94035fca2887ee62.jpg'),
(14, '欢乐假日酒店', 320, '20180415\\d4d374bf27820dae0722c94c80e46c80.jpg'),
(16, '舟山假日酒店', 320, '20180415\\6c8ddbbb16a7286b06ae8bfdd574d050.jpg'),
(17, '海景假日酒店', 620, '20180415\\1371dc2e87f66b0e4d9a3238b4ee55d4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `travel_jiudianyuding`
--

CREATE TABLE `travel_jiudianyuding` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `travel_jiudianyuding`
--

INSERT INTO `travel_jiudianyuding` (`id`, `username`, `name`, `time`) VALUES
(1, '111', '欢乐假日房', '1522999465'),
(2, '222', '南海大酒店', '1523021870'),
(3, '333', '休闲假日酒店', '1523022610');

-- --------------------------------------------------------

--
-- 表的结构 `travel_liuyan`
--

CREATE TABLE `travel_liuyan` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `travel_liuyan`
--

INSERT INTO `travel_liuyan` (`id`, `username`, `phone`, `message`, `time`) VALUES
(6, '222', '12345678909', '222', '1523021613'),
(7, '111', '12345678909', '111111', '1523022280');

-- --------------------------------------------------------

--
-- 表的结构 `travel_user`
--

CREATE TABLE `travel_user` (
  `id` tinyint(4) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `travel_user`
--

INSERT INTO `travel_user` (`id`, `username`, `password`) VALUES
(1, '111', '111'),
(2, '222', '222'),
(3, '333', '333');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `travel_admin`
--
ALTER TABLE `travel_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_jingdian`
--
ALTER TABLE `travel_jingdian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_jingdianyuding`
--
ALTER TABLE `travel_jingdianyuding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_jiudian`
--
ALTER TABLE `travel_jiudian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_jiudianyuding`
--
ALTER TABLE `travel_jiudianyuding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_liuyan`
--
ALTER TABLE `travel_liuyan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_user`
--
ALTER TABLE `travel_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `travel_admin`
--
ALTER TABLE `travel_admin`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `travel_jingdian`
--
ALTER TABLE `travel_jingdian`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `travel_jingdianyuding`
--
ALTER TABLE `travel_jingdianyuding`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `travel_jiudian`
--
ALTER TABLE `travel_jiudian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `travel_jiudianyuding`
--
ALTER TABLE `travel_jiudianyuding`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `travel_liuyan`
--
ALTER TABLE `travel_liuyan`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `travel_user`
--
ALTER TABLE `travel_user`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
