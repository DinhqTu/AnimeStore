-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2022 at 11:50 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `anime_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(8) NOT NULL auto_increment,
  `image` varchar(30) collate utf8_unicode_ci NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `content` text collate utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `title`, `content`, `date`) VALUES
(1, 'boss1.jpg', 'ANIME SHOP COMEBACK', 'Sau ít ngày nhập viện vì hóa đá, nay ông chủ SHOP ANIME đã trở lại và tuyên bố bán vì đam mê. Bất chấp hết mọi thử thách!!', '2022-11-05'),
(2, 'khaitruong.jpg', 'KHAI TRƯƠNG CỬA HÀNG!!! ', 'Ngày 26/10 vừa qua, SHOP ANIME khai trương chi nhánh mới, rất nhiều bạn trẻ và hot toptopker đã đến nhưng không mua hàng mà thay vào đó là chơi giveaway quá đà khiến chủ SHOP ANIME tiếc tiền và rơi vào tình trạng nguy kịch. Hiện không biết sống chết ra sao', '2022-11-05'),
(6, 'blog1.jpg', 'Diện mạo mới của ANIME SHOP', 'Bất ngờ chưa bà dà! Shop khai trương có 1 tuần đổi thay đổi bày trí 7 lần. Diện mạo mới, sản phẩm mới với phương châm: Khách hàng là thượng đế ! Tận tâm với khách hàng, không chỉ vì bạn mà còn vì doanh thu của chúng tôi.', '2022-11-19'),
(7, 'blog2.jpg', 'HÀNG VỀ, HÀNG VỀ.', 'Dữ dị sao! Mô hình Luffy khổng lồ về tới gòi nè mấy par. Ui là chời! Cao gì mà tới 180cm khác nào tỉ lệ 1:1. Chất liệu siêu xịn luôn đó.', '2022-11-09'),
(8, 'blog3.jpeg', 'Mua 1 tặng 1 đống luôn ', 'Ủa là sao dị chời! Bất ngờ hong thử mà mua 1 món đi gòi biết. Mua 1 món hàng bất kỳ ở shop bạn sẽ được tặng ngay 1 vé trò chơi trúng quà cực khủng như trúng Vietllot luôn. Thấy ghê hơm!', '2022-11-05'),
(9, 'blog4.jpg', 'Góc checkin trong mơ', 'Anh trai quốc dân Sabo đã về đến sảnh A của SHOP. Khách hàng đến ANIME SHOP chơi được tự do checkin với mô hình Sabo cao 186cm. Không những vậy khi checkin đăng tải lên mạng xã hội bất kỳ bạn sẽ nhận ngay 1 phiếu mua hàng với giá trị lên đến 999.000 đồng', '2022-11-01'),
(10, 'blog5.jpg', 'KHÔNG GIAN TRƯNG BÀY', 'QUAO! Phòng trưng bày đỉnh cao nhất Sài Gòn. Không gian sang, xịn, mịn.', '2022-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(8) NOT NULL auto_increment,
  `name` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL,
  `desc` text character set utf8 collate utf8_unicode_ci NOT NULL,
  `banner` varchar(255) character set utf8 collate utf8_unicode_ci NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `desc`, `banner`, `img1`, `img2`, `img3`, `img4`) VALUES
(1, 'One Piece', 'One Piece là bộ truyện tranh dành cho thiếu niên của tác giả nổi tiếng Oda Eiichiro. Bộ manga này được chuyển thể thành một series anime nhiều tập hài hước, đặc sắc. Phim Đảo Hải Tặc mở đầu câu chuyện bằng cảnh xử tử vua hải tặc Gol D. Roger.', 'logobrand.png', 'bg_one1.jpg', 'bg_one2.jpg', 'bg_one3.jpg', 'bg_one4.jpg'),
(2, 'Dragon Ball', 'Dragon Ball là bộ truyện tranh nhiều tập được viết và vẽ minh họa bởi Toriyama Akira. Loạt truyện tranh bắt đầu xuất bản hàng tuần trong tạp chí Weekly Shōnen Jump từ năm 1984 đến 1995 với 519 chương và sau đó được xuất bản trong 42 tập truyện dày bởi nhà xuất bản Shueisha.', 'logobrand2.png', 'bg_ball1.jpg', 'bg_ball2.jpg', 'bg_ball3.jpg', 'bg_ball4.jpg'),
(3, 'Naruto', 'Naruto là câu chuyện về Uzumaki Naruto, một ninja trẻ với ước mơ trở thành Hokage, người lãnh đạo của làng Lá để tìm kiếm sự công nhận từ mọi người. 12 năm trước, hồ ly 9 đuôi tấn công làng Lá, Hokage Đệ Tứ đã đánh bại và phong ấn hồ ly 9 đuôi vào con trai của chính mình - Naruto nhằm kết thúc cuộc...', 'logobrand3.jpg', 'bg_na1.jpg', 'bg_na2.jpg', 'bg_na3.jpg', 'bg_na4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(8) NOT NULL auto_increment,
  `productID` int(8) NOT NULL,
  `userID` int(8) NOT NULL,
  `quantity` int(8) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `productID` (`productID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(8) NOT NULL auto_increment,
  `userID` int(8) NOT NULL,
  `fullname` varchar(255) collate utf8_unicode_ci NOT NULL,
  `address` varchar(255) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(255) collate utf8_unicode_ci NOT NULL,
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `userID`, `fullname`, `address`, `phone`, `email`) VALUES
(1, 20, 'Nguyễn Văn Nhật', 'Long Bình Biên Hoà Đồng Nai', '0382244897', 'nhat@gmail.com'),
(2, 1, '1', '1', '1', '1'),
(3, 30, 'Đinh Quốc Tú SIêu cấp', '20/5 Trần Quốc Tuấn P1 Gò Vấp TP.HCM', '0382244897', 'donhumau123@gmail.com'),
(4, 1, '1', '1', '1', '1'),
(5, 1, '132', 'address', 'phone', 'email.'),
(11, 23, 'Bảo Ngọc', '123 TQT', '123456', 'pewpew'),
(12, 30, 'Đinh Quốc Tú SIêu cấp', '20/5 Trần Quốc Tuấn P1 Gò Vấp TP.HCM', '0382244897', 'donhumau123@gmail.com'),
(13, 0, 'Yang Mai', '03', '03', 'yangmai123.com'),
(16, 34, 'test', '1234', '1234', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(8) NOT NULL auto_increment,
  `productID` int(8) NOT NULL,
  `orderID` varchar(35) collate utf8_unicode_ci NOT NULL,
  `quantity` int(8) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(30) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `productID` (`productID`),
  KEY `orderID` (`orderID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=61 ;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `productID`, `orderID`, `quantity`, `price`, `status`) VALUES
(15, 2, 'U20_ID75609', 1, 650, '1'),
(22, 1, 'U20ID7561846', 1, 999, '1'),
(23, 2, 'U20ID7561993', 1, 650, '1'),
(24, 1, 'U20ID7561993', 1, 999, '1'),
(25, 2, 'U20ID7562145', 1, 650, '1'),
(26, 1, 'U20ID7562145', 1, 999, '1'),
(27, 2, 'U20ID7562209', 1, 650, '2'),
(28, 1, 'U20ID7562209', 1, 999, '0'),
(29, 2, 'U20ID7562267', 1, 650, ''),
(30, 1, 'U20ID7562267', 1, 999, '2'),
(31, 3, 'U20ID7562332', 1, 120, '2'),
(32, 2, 'U20ID7584241', 1, 650, ''),
(33, 3, 'U20ID7584241', 1, 120, ''),
(34, 35, 'U29ID7754122', 1, 1200, ''),
(35, 35, 'U29ID7754148', 1, 1200, ''),
(36, 4, 'U29ID7754217', 1, 180, ''),
(37, 4, 'U29ID7754264', 3, 180, ''),
(38, 8, 'U20ID7878227', 1, 299, ''),
(39, 37, 'U20ID7878227', 1, 1000, ''),
(40, 7, 'U20ID7878317', 1, 299, ''),
(41, 4, 'U20ID7878317', 1, 180, ''),
(42, 37, 'U20ID7879807', 1, 1000, ''),
(43, 8, 'U20ID7879807', 1, 299, '1'),
(44, 7, 'U30ID7880474', 1, 299, ''),
(45, 37, 'U30ID7880604', 1, 1000, '1'),
(46, 5, 'U30ID7880604', 1, 199, '1'),
(47, 3, 'U30ID7880801', 1, 120, ''),
(48, 4, 'U30ID7880801', 1, 180, ''),
(49, 2, 'U30ID7881217', 1, 650, ''),
(50, 4, 'U30ID7881217', 1, 180, ''),
(51, 3, 'U23ID7920702', 1, 120, ''),
(52, 2, 'U23ID7920740', 1, 650, ''),
(53, 6, 'U23ID7921051', 1, 99, ''),
(54, 37, 'U23ID7921529', 1, 1000, ''),
(55, 3, 'U23ID7921529', 1, 120, ''),
(56, 6, 'U23ID7921612', 1, 99, ''),
(57, 3, 'U23ID7921612', 1, 120, ''),
(58, 38, 'U23ID7921693', 1, 1300, ''),
(59, 39, 'U23ID7921883', 1, 200, ''),
(60, 3, 'U32ID8060749', 1, 120, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `userID` int(8) NOT NULL,
  `quantity` varchar(8) collate utf8_unicode_ci NOT NULL,
  `totalprice` double NOT NULL,
  `payment` varchar(8) collate utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `orderID` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`orderID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`userID`, `quantity`, `totalprice`, `payment`, `date`, `orderID`) VALUES
(20, '0', 10, '0', '0000-00-00', 'rderID'),
(20, '2', 120, '0', '0000-00-00', 'U20_ID23414'),
(20, '2', 1649, '1', '2022-11-04', 'U20_ID7560769'),
(20, '2', 1649, '1', '2022-11-04', 'U20_ID75609'),
(20, '2', 1649, '1', '2022-11-04', 'U20ID7560982'),
(20, '2', 1649, '1', '2022-11-04', 'U20ID7561223'),
(20, '2', 1649, '1', '2022-11-04', 'U20ID7561846'),
(20, '2', 1649, '0', '2022-11-04', 'U20ID7561993'),
(20, '2', 1649, '0', '2022-11-04', 'U20ID7562145'),
(20, '2', 1649, '0', '2022-11-04', 'U20ID7562209'),
(20, '2', 1649, '0', '2022-11-04', 'U20ID7562267'),
(20, '1', 120, '0', '2022-11-04', 'U20ID7562332'),
(20, '2', 770, '1', '2022-11-05', 'U20ID7584241'),
(20, '2', 1299, '0', '2022-11-08', 'U20ID7878227'),
(20, '2', 479, '1', '2022-11-08', 'U20ID7878317'),
(20, '2', 1299, '0', '2022-11-08', 'U20ID7879807'),
(23, '1', 120, '0', '2022-11-08', 'U23ID7920702'),
(23, '1', 650, '0', '2022-11-08', 'U23ID7920740'),
(23, '1', 99, '0', '2022-11-08', 'U23ID7920910'),
(23, '1', 99, '1', '2022-11-08', 'U23ID7921051'),
(23, '2', 1120, '0', '2022-11-08', 'U23ID7921529'),
(23, '2', 219, '0', '2022-11-08', 'U23ID7921612'),
(23, '1', 1300, '0', '2022-11-08', 'U23ID7921693'),
(23, '1', 200, '0', '2022-11-08', 'U23ID7921883'),
(29, '1', 1200, '1', '2022-11-07', 'U29ID7754122'),
(29, '1', 1200, '0', '2022-11-07', 'U29ID7754148'),
(29, '1', 180, '1', '2022-11-07', 'U29ID7754217'),
(29, '3', 540, '1', '2022-11-07', 'U29ID7754264'),
(30, '1', 299, '0', '2022-11-08', 'U30ID7880474'),
(30, '2', 1199, '0', '2022-11-08', 'U30ID7880604'),
(30, '2', 300, '1', '2022-11-08', 'U30ID7880801'),
(30, '2', 830, '0', '2022-11-08', 'U30ID7881217'),
(32, '1', 120, '0', '2022-11-10', 'U32ID8060749');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(8) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `lastPrice` double NOT NULL,
  `des` text collate utf8_unicode_ci NOT NULL,
  `idBrand` varchar(255) collate utf8_unicode_ci NOT NULL,
  `quantity` varchar(255) collate utf8_unicode_ci NOT NULL,
  `image` varchar(255) collate utf8_unicode_ci NOT NULL,
  `origin` varchar(255) collate utf8_unicode_ci NOT NULL,
  `size` varchar(255) collate utf8_unicode_ci NOT NULL,
  `material` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idBrand` (`idBrand`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `lastPrice`, `des`, `idBrand`, `quantity`, `image`, `origin`, `size`, `material`) VALUES
(2, 'Luffy Gear 5', 650, 700, '\r\n<h2 class="h2_product">Mô hình Vua Hải Tặc Luffy</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '20', 'one2.jpg', 'Nhật Bản', '200', 'Foam'),
(3, 'Mô Hình Kakashi', 120, 190, '\r\n<h2 class="h2_product">Mô hình Kakashi</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '15', 'naruto3.png', 'Việt Nam', '175', 'PVC'),
(4, 'Mô Hình Pain', 180, 200, '\r\n<h2 class="h2_product">Mô hình Pain</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '35', 'naruto1.png', 'Trung Quốc', '99', 'Foam'),
(5, 'Hoả Quyền ACE', 199, 299, '\r\n<h2 class="h2_product">Mô hình Hoả Quyền ACE</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '99', 'one3.jpg', 'Việt Nam', '200', 'PVC'),
(6, 'Mô Hình Goku', 99, 120, '<h2 class="h2_product">Mô hình GOKU</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '2', '09', 'ball3.jpg', 'Việt Nam', '234', 'Kim Loại'),
(7, 'Goku và Rồng Thần', 299, 333, '<h2 class="h2_product">Mô hình Rống thần trái đất và goku</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '2', '03', 'ball2.jpg', 'Trung Quốc', '325', 'PVC'),
(8, 'Goku Siêu Cấp', 299, 500, '\r\n<h2 class="h2_product">Mô hình Goku Siêu Cấp</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '2', '120', 'ball1.jpg', 'Nhật Bản', '123', 'PVC'),
(35, 'Ace', 1200, 1500, '\r\n<h2 class="h2_product">Mô hình Hoả Quyền Ace</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '8', 'ace.png', 'Nhật Bản', '42', 'PVC'),
(37, 'Sabo', 1000, 1299, '\r\n<h2 class="h2_product">Mô hình Chỉ Huy Sabo</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '4', 'sabo.png', 'Nhật Bản', '42', 'PVC'),
(38, 'Marco', 1300, 1500, '\r\n<h2 class="h2_product">Mô hình Đội Trưởng Marco</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '5', 'marco.png', 'Nhật Bản', '60', 'PVC'),
(39, 'LuffyG5Chipi', 200, 299, '\r\n<h2 class="h2_product">Mô hình Luffy Chi bi</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '12', 'LuffyG5chipi.png', 'Nhật Bản', '20', 'Resin'),
(40, 'Luffy', 1600, 1799, '\r\n<h2 class="h2_product">Mô hình Luffy Siêu Ngầu</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '1', 'Luffy1m8.png', 'Nhật Bản', '180', 'PVC'),
(41, 'Zoro', 300, 500, '<h2 class="h2_product">Mô hình thợ săn hải tặc Roronoa Zoro</h2>\r\n\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul>\r\n\r\n\r\n<h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '4', 'zoro.png', 'Nhật Bản', '60', 'PVC'),
(42, 'Râu Trắng', 5000, 7000, '\r\n<h2 class="h2_product">Mô hình Bố Già Râu Trắng</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '2', 'RT.png', 'Nhật Bản', '60', 'Resin'),
(43, 'NicoRobin', 450, 500, '\r\n<h2 class="h2_product">Mô hình Đứa Con Của Quỷ</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '3', 'robin.png', 'Nhật Bản', '50', 'PVC'),
(45, 'Sasuke', 85, 100, '\r\n<h2 class="h2_product">Mô hình SUSANO TOÀN CHÂN THỂ</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '5', 'sasuke1.png', 'Nhật Bản', '60', 'PVC'),
(46, 'Uzumaki Naruto và Cửu vĩ Kurama', 1200, 1500, '\r\n<h2 class="h2_product">Mô hình Naruto và cửu vỹ hồ ly</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '5', 'naruto5.png', 'Nhật Bản', '42', 'PVC'),
(47, 'Itachi', 500, 700, '\r\n<h2 class="h2_product">Mô hình UCHI HA</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '3', 'naruto6.png', 'Nhật Bản', '60', 'PVC'),
(48, 'Sasuke', 299, 499, '\r\n<h2 class="h2_product">Mô hình Sasuke\r\n</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '2', 'naruto7.png', 'Nhật Bản', '42', 'Resin');
INSERT INTO `product` (`id`, `name`, `price`, `lastPrice`, `des`, `idBrand`, `quantity`, `image`, `origin`, `size`, `material`) VALUES
(49, 'RORONOA ZORO', 999, 1999, '\r\n<h2 class="h2_product">Mô hình Thợ Săn Hải Tặc</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '1', '5', 'zoro2.jpg', 'Nhật Bản', '60', 'PVC'),
(50, 'SonGoku SSJ3', 500, 700, '\r\n<h2 class="h2_product">Mô hình Goku Siêu sayyyaaaa</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '2', '4', 'goku4.jpg', 'Việt Nam', '60', 'PVC'),
(51, 'Black Goku', 999, 1299, 'Black Goku có khuôn mặt hiện lên sự độc ác với ngoại hình giống với Songoku, điều khác biệt đó chính là Black Goku thường hay đeo một chiếc bông tai trái và một chiếc nhẫn thời gian trên tay.', '2', '4', 'goku1.jpg', 'Việt Nam', '58', 'Resin'),
(52, 'Goku and Vegeta', 599, 799, 'Vegeta và Goku thủ thế, Vegeta ra đòn trước, anh chưởng lien tục về phía Goku, làm Goku phải dùng hai tay di chuyển để đẩy đòn tấn công đi, sau đó Vegeta xuất hiện và đấm Goku 1 cái, nhưng hai tay anh đã chặn đòn tấn công đó, lập tức Goku phản đòn. ', '2', '5', 'goku5.jpg', 'Nhật Bản', '80', 'PVC'),
(53, 'Pink Goku', 299, 599, 'Pink Goku là một biến thân khác của Black Goku tuy sức mạnh yếu hơn nhưng tốc độ, mưu trí cao hơn. Với bộ não 200IQ anh đã thao túng cả Rồng Thần làm việc cho mình.', '2', '2', 'goku3.jpg', 'Việt Nam', '46', 'Kim Loại'),
(54, 'Beerus', 899, 999, 'Mô hình Beerus đã khắc hoạ nhân vật với vòng tròn hào quang sau lưng bên dưới bệ đá là nguồn năng lượng toả ra xung quanh, đế chân còn được đính thêm một viên ngọc quý xanh lam trông cực kỳ cuốn hút.', '2', '8', 'goku7.png', 'Nhật Bản', '56', 'Resin'),
(55, 'Vegeto', 499, 699, 'Mô hình đã thiết kế độc đáo với vẻ ngoài của anh chàng này ấn tượng với gam màu xanh (blue) sáng. Luồng điện xung quanh cơ thể và bể đá năng lượng bên dưới chân anh đều được tạo hình cực kỳ chi tiết và tinh tế với tư thế đang bắn ra một nguồn sức mạnh để hạ đối thủ.', '2', '6', 'goku2.jpg', 'Việt Nam', '60', 'PVC'),
(56, 'Rồng Thần ', 1299, 1399, 'Rồng thần của Trái Đất có thể cho ta một điều ước bất kỳ. Sau khi thực hiện xong điều ước, ngọc rồng phân ra bảy phương khác nhau. Sau khi Rồng thiêng được Ốc Tiêu hoàn sinh, thay vì cho 1 điều ước như trước kia, Rồng thiêng sẽ cho ta 3 điều ước như Rồng Namek.', '2', '4', 'goku6.jpg', 'Nhật Bản', '98', 'Resin'),
(57, 'Uchiha Itachi ', 120, 200, '\r\n<h2 class="h2_product">Mô hình Uchiha Khử gia tộc</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '20', 'naruto9.jpg', 'Trung Quốc', '325', 'PVC'),
(58, 'Naruto và Những người thầy ', 120, 200, '\r\n<h2 class="h2_product">Mô hình Naruto cùng những vị thầy của mình</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '20', 'naruto10.jpg', 'Việt Nam', '325', 'PVC'),
(59, 'Mô hình Obito và những người bạn', 120, 200, '\r\n<h2 class="h2_product">Mô hình Obito và những người bạn</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '20', 'naruto11.jpg', 'Nhật Bản', '35', 'PVC'),
(60, 'Mô hình Pain và những người bạn', 120, 200, '\r\n<h2 class="h2_product">Mô hình Pain và những người bạn</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '20', 'naruto12.jpg', 'Nhật Bản', '305', 'Resin'),
(61, 'Mô hình sasuku', 120, 200, '\r\n<h2 class="h2_product">Mô hình sasuke</h2>\r\n<p>Mô hình one piece của CLOUD STORE tốt nhất trên thị trường với tính năng nổi bật: anti-crack(chống nứt khi va đập), bề mặt phủ sơn ( tạo độ sắc nét, chống xước), sản xuất bằng nhựa abs… (an toàn khi sử dụng). \r\n    CLOUD STORE là shop chuyên về mô hình one piece chính hãng, figure anime,nhân vật anime manga nổi tiếng chất lượng cao, giá hợp lý, mẫu mã đa dạng. Các sản phẩm  đều được đóng gói cẩn thận, cam kết đổi trả , sản phẩm giống mô tả </p>\r\n<h4 class="h4_product">MÔ TẢ SẢN PHẨM</h4>\r\n<ul>\r\n    <li> Thiết kế bắt mắt, màu sơn sắc nét </li>\r\n    <li> Mô hình anime mới nhất</li>\r\n    <li> Độ bền cao</li>\r\n    <li> Chất liệu nhựa ABS an toàn, không độc hại.</li>\r\n    <li> Kích Thước: 21cm</li>\r\n    <li> Khối lượng: 800gram</li>\r\n    <li> Mô hình anime: Figure One Piece</li>\r\n    <li> Phụ kiện đi kèm: Hộp đựng </li>\r\n    <li> Bề mặt nhựa nhám giúp cầm dễ hơn </li>\r\n</ul><h4 class="h4_product">THÔNG TIN SẢN PHẨM</h4>\r\n<p>One Piece là bộ manga dành cho lứa tuổi thiếu niên của tác giả Oda Eiichiro, được đăng định kì trên tạp chí Weekly Shonen Jump, ra mắt lần đầu trên ấn bản số 34 vào ngày 19 tháng 7 năm 1997. Bản tankōbon của truyện do Nhà xuất bản Sheisha phát hành với tập đầu tiên vào ngày 24 tháng 12 năm 1997. \r\n    Bộ phim anime one piece kể về cuộc hành trình của Monkey D. Luffy – thuyền trưởng của băng hải tặc Mũ Rơm và các đồng đội của cậu. \r\n    Luffy - nhân vật anime tìm kiếm vùng biển bí ẩn nơi cất giữ kho báu lớn nhất thế giới, với mục tiêu trở thành Tân Vua Hải Tặc.</p>\r\n<h4 class="h4_product">CAM KẾT  </h4>\r\n<ul>\r\n    <li> Mô hình zoro one piece của CLOUD STORE  là những sản phẩm chất lượng</li>\r\n    <li> Sản phẩm giống mô tả.</li>\r\n    <li> Số lượng tồn kho được cập nhật chính xác 100%.</li>\r\n    <li> Được phép đổi trả nếu không hài lòng trong vòng 3 ngày nhận hàng.</li>\r\n    <li> Thời gian chuẩn bị hàng trong vòng 24h.</li>\r\n</ul>', '3', '20', 'naruto13.jpg', 'Việt Nam', '120', 'Foam');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(8) NOT NULL auto_increment,
  `userID` int(8) NOT NULL,
  `productID` int(8) NOT NULL,
  `content` text collate utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `userID` (`userID`),
  KEY `productID` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `review`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL auto_increment,
  `email` varchar(255) collate utf8_unicode_ci NOT NULL,
  `password` varchar(255) collate utf8_unicode_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `permission` varchar(8) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `permission`) VALUES
(20, 'c', '356a192b7913b04c54574d18c28d46e6395428ab', 'a', '0'),
(22, 'abc@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'abc', '1'),
(23, 'test@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'test', ''),
(24, 'thuonglol', '356a192b7913b04c54574d18c28d46e6395428ab', 'thuong', '0'),
(25, '123@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'Nhat', ''),
(27, 'puhne@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'puhne', '1'),
(28, 'ss', '356a192b7913b04c54574d18c28d46e6395428ab', 'ss', ''),
(29, 'a', '356a192b7913b04c54574d18c28d46e6395428ab', 'a', ''),
(30, 'DinhTu@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab', 'DinhTu', ''),
(31, 'yangmai@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'yang', ''),
(34, '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'test', ''),
(35, 'ap', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', 'ap', '');
