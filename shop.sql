-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2017 at 07:20 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `url_hinh` varchar(255) NOT NULL,
  `url_to` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `url_hinh`, `url_to`, `status`) VALUES
(1, 'http://www.mindspeakit.com/wp-content/uploads/2016/02/PHP.jpg', 'google.com', 1),
(2, 'http://www.itvedant.com/wp-content/uploads/2013/09/php-banner.jpg', 'facebook.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `idHD` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `GiaLucMua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `idHD`, `idSP`, `Soluong`, `GiaLucMua`) VALUES
(1, 3, 14, 5, 13999000),
(2, 3, 13, 6, 18500000),
(3, 4, 14, 8, 13999000),
(4, 4, 20, 5, 5690000);

-- --------------------------------------------------------

--
-- Table structure for table `chungloai`
--

CREATE TABLE `chungloai` (
  `idCL` int(11) NOT NULL,
  `TenCL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chungloai`
--

INSERT INTO `chungloai` (`idCL`, `TenCL`) VALUES
(1, 'Laptop'),
(8, 'Điện thoại');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `idHD` int(11) NOT NULL,
  `TenKH` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`idHD`, `TenKH`, `DiaChi`, `Phone`, `TongTien`, `NgayTao`) VALUES
(1, 'Hung', '90 Le Thi Rieng', '0933969108', 50000, '2017-03-24 00:00:00'),
(2, 'Hung', 'haskdhjkasldhjaks jaksldjklas;', '0933969108', 180995000, '2017-03-24 21:16:31'),
(3, 'Hung', 'haskdhjkasldhjaks jaksldjklas;', '0933969108', 180995000, '2017-03-24 21:17:05'),
(4, 'ABC', '408 Trần Phú Quận 5 TPHCM', '0933969108', 140442000, '2017-03-24 21:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `KhachHang`
--

CREATE TABLE `KhachHang` (
  `idKH` int(11) NOT NULL,
  `TenKH` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Pass` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `SoDienThoai` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `mabaomat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KhachHang`
--

INSERT INTO `KhachHang` (`idKH`, `TenKH`, `Email`, `Pass`, `DiaChi`, `SoDienThoai`, `active`, `mabaomat`) VALUES
(1, 'Hưng', 'kimhung120589@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '90 Le thi rieng', '09233888118', 0, ''),
(3, 'Hưng', 'kimhung_duong@yahoo.com', '4297f44b13955235245b2497399d7a93', 'jakshdjkasld', '0933999666', 0, ''),
(4, 'Hưng', 'abc@fmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'asd', '2190381209380', 0, ''),
(5, 'ABC', 'ab2c@fmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '123', '123213', 0, ''),
(7, 'Van B', 'anguyen@gmail.comb', 'c4ca4238a0b923820dcc509a6f75849b', '123', '12312312', 0, ''),
(8, 'Van c', 'cnguyen@gmail.comb', 'c4ca4238a0b923820dcc509a6f75849b', '123', '12312312', 0, ''),
(9, 'Nhat', 'nhat@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'abc xyz', '12312312', 0, '299388a2453f4ba0c12ec2645582b9af'),
(10, 'Nhựt', 'nhat.khoapham93@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '121221', '12121221', 0, '0627d756f401991c1c119f9b1699708d');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(10) NOT NULL,
  `tensp` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` tinyint(4) NOT NULL,
  `giatien` int(15) NOT NULL,
  `hinh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8_unicode_ci,
  `theloaisp_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tensp`, `soluong`, `giatien`, `hinh`, `noidung`, `theloaisp_id`) VALUES
(7, 'IPhone7 32GB', 100, 19000000, 'http://didongthongminh.vn/images/products/2015/12/10/original/ip6-trg_1449689717.jpg', '<p>iPhone 7 ra mắt đ&atilde; l&agrave;m m&atilde;n nh&atilde;n người h&acirc;m mộ khi sở hữu nhiều n&acirc;ng cấp đ&aacute;ng gi&aacute;. Camera đột ph&aacute; chụp ảnh chất lượng cao, t&iacute;nh năng chống nước, vi xử l&yacute; mạnh mẽ hơn, &acirc;m thanh đỉnh cao&hellip; Tất cả vẫn khiến người d&ugrave;ng kh&ocirc;ng khỏi mơ ước sở hữu.</p>\r\n', 1),
(10, 'iPhone 6s Plus 128GB', 100, 27500000, 'http://didongthongminh.vn/images/products/2015/12/10/original/ip6-trg_1449689717.jpg', '<p>Apple iPhone 6s Plus l&agrave; chiếc iPhone m&agrave;n h&igrave;nh lớn nhất, cho bạn l&agrave;m được nhiều việc hơn tr&ecirc;n kh&ocirc;ng gian rộng lớn. Hơn nữa, những t&iacute;nh năng mới như 3D Touch, Live Photos hay camera 12MP xuất sắc sẽ mang đến sự h&agrave;i l&ograve;ng nhất cho bạn khi sử dụng một chiếc smartphone thực sự cao cấp.</p>\r\n', 1),
(11, 'iPhone 6 Plus 16GB', 100, 13999000, 'http://didongthongminh.vn/images/products/2015/12/10/original/ip6-trg_1449689717.jpg', '<p>iPhone 6 Plus l&agrave; một phi&ecirc;n bản iPhone m&agrave;n h&igrave;nh lớn nhất cao cấp nhất của Apple từ trước đến nay, nhưng n&oacute; kh&ocirc;ng chỉ đơn thuần l&agrave; lớn hơn về k&iacute;ch thước m&agrave; c&ograve;n tốt hơn về mọi mặt. Thiết kế kim loại cao cấp bao phủ m&agrave;n h&igrave;nh Retina Full HD tuyệt đẹp; mạnh mẽ hơn, nhưng lại tiết kiệm pin hơn; những sự phối hợp giữa phần cứng v&agrave; phần mềm ho&agrave;n hảo, tạo ra một thế hệ mới nhất của iPhone v&agrave; tốt hơn bất cứ sản phẩm n&agrave;o trước đ&acirc;y</p>\r\n', 1),
(12, 'iPhone 5s 16GB', 100, 6999000, 'http://didongthongminh.vn/images/products/2015/12/10/original/ip6-trg_1449689717.jpg', '<p>iPhone 5S l&agrave; bản n&acirc;ng cấp v&ocirc; c&ugrave;ng đ&aacute;ng gi&aacute; từ Apple với cấu h&igrave;nh mạnh gấp đ&ocirc;i iPhone 5, chip xử l&yacute; 64 bit đầu ti&ecirc;n tr&ecirc;n điện thoại, v&ograve;ng Touch ID nhận dạng v&acirc;n tay cực đỉnh, m&aacute;y ảnh n&acirc;ng cấp tuyệt đẹp, tối ưu phần mềm v&agrave; phần cứng hơn nữa, v&agrave; rất nhiều cải tiến kh&aacute;c.</p>\r\n', 1),
(13, 'iPhone 6 64GB', 100, 18500000, 'http://didongthongminh.vn/images/products/2015/12/10/original/ip6-trg_1449689717.jpg', '<p>Gi&aacute; tốt</p>\r\n', 1),
(14, 'iPhone SE 64GB', 100, 13999000, 'http://didongthongminh.vn/images/products/2015/12/10/original/ip6-trg_1449689717.jpg', '<p>Giống như người đ&agrave;n anh iPhone 5S, SE vẫn mang một thiết kế rất sang trọng v&agrave; thời trang, đồng thời cấu h&igrave;nh lại mạnh mẽ như iPhone 6S/6S Plus, c&ugrave;ng với rất nhiều t&iacute;nh năng mới được bổ sung, hứa hẹn sẽ l&agrave; sản phẩm tuyệt vời tiếp theo m&agrave; Apple d&agrave;nh đến người d&ugrave;ng.</p>\r\n', 1),
(15, 'iPhone 4s 16GB', 98, 5000000, 'http://didongthongminh.vn/images/products/2015/12/10/original/ip6-trg_1449689717.jpg', '<p>Đẹp</p>\r\n', 1),
(16, 'iPhone 3s 16GB', 100, 20000000, 'http://didongthongminh.vn/images/products/2015/12/10/original/ip6-trg_1449689717.jpg', '<p>Bao rẻ</p>\r\n', 1),
(17, 'Samsung Galaxy S7', 100, 15990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>Ch&iacute;nh thức ra mắt tại sự kiện MWC 2016 tổ chức tại Barcelona (T&acirc;y Ban Nha), smartphone Samsung Galaxy S7 sở hữu nhiều sự thay đổi nổi bật ở cả thiết kế, cấu h&igrave;nh v&agrave; những t&iacute;nh năng đi k&egrave;m. Chiếc điện thoại n&agrave;y hứa hẹn sẽ tạo n&ecirc;n sự b&ugrave;ng nổ trong ph&acirc;n kh&uacute;c cao cấp v&agrave; mang lại những th&agrave;nh c&ocirc;ng tiếp theo cho h&atilde;ng điện thoại H&agrave;n Quốc.</p>\r\n', 2),
(18, 'Galaxy Note 5', 100, 13990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>L&agrave; bản n&acirc;ng cấp ho&agrave;n hảo của Galaxy Note 4, Samsung Galaxy Note5 mang đến cho người d&ugrave;ng những trải nghiệm tuyệt vời nhất tr&ecirc;n một chiếc điện thoại di động. Kh&ocirc;ng chỉ dừng lại ở thiết kế sang trọng, m&agrave;n h&igrave;nh 2K với d&agrave;i m&agrave;u rộng c&ugrave;ng độ tương phản cao, m&aacute;y c&ograve;n sở hữu cấu h&igrave;nh khủng với RAM 4GB v&agrave; con chip l&otilde;i 8 Exynos 7420 đầy mạnh mẽ.</p>\r\n', 2),
(19, 'Galaxy A7 (2016)', 100, 8990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>Samsung Galaxy A7 (2016) l&agrave; phi&ecirc;n bản tiếp nối cho mẫu Galaxy A7 thế hệ đầu ti&ecirc;n. Kh&ocirc;ng chỉ g&acirc;y ấn tượng bởi vẻ ngo&agrave;i cao cấp v&agrave; sang trọng hơn hẳn so với người tiền nhiệm, chiếc điện thoại n&agrave;y c&ograve;n hứa hẹn sẽ mang đến cho người d&ugrave;ng những trải nghiệm sử dụng ho&agrave;n hảo nhờ cấu h&igrave;nh được n&acirc;ng cấp đ&aacute;ng kể, c&ugrave;ng với đ&oacute; l&agrave; sự xuất hiện ho&agrave;n to&agrave;n mới của cảm biến nhận dạng v&acirc;n tay.</p>\r\n', 2),
(20, 'Galaxy A3 2016', 100, 5690000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>Samsung Galaxy A3 2016 l&agrave; sản phẩm nằm trong bộ ba Galaxy A 2016 của Samsung được h&eacute; lộ v&agrave;o những th&aacute;ng cuối năm 2015. Ngo&agrave;i việc sở hữu ng&ocirc;n ngữ thiết kế c&oacute; nhiều kh&aacute;c biệt so với model Galaxy A3 trước đ&acirc;y, chiếc điện thoại n&agrave;y c&ograve;n được n&acirc;ng cấp rất nhiều về cấu h&igrave;nh v&agrave; những t&iacute;nh năng đi k&egrave;m để mang đến cho người d&ugrave;ng những trải nghiệm tốt hơn.</p>\r\n', 2),
(21, 'Galaxy A5 (2016)', 112, 7990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>Sau th&agrave;nh c&ocirc;ng của Galaxy A5 vỏ kim loại nguy&ecirc;n khối, Samsung một lần nữa l&agrave;m người d&ugrave;ng phải h&aacute;o đức chờ đ&oacute;n bởi những n&acirc;ng cấp ho&agrave;nh tr&aacute;ng ở phi&ecirc;n bản Galaxy A5 (2016). Một diện mạo ho&agrave;n to&agrave;n mới sang trọng v&agrave; cao cấp hơn, hiệu năng cực mạnh, bảo mật cấp cao c&ugrave;ng nhiều trang bị đ&aacute;ng gi&aacute;, Galaxy A5 (2016) hứa hẹn tạo n&ecirc;n cơn sốt ở ph&acirc;n kh&uacute;c tầm trung thời gian sắp tới.</p>\r\n', 2),
(22, 'Galaxy J7 Prime', 123, 6300000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>Samsung Galaxy J7 Prime ra mắt với mục đ&iacute;ch đ&aacute;nh mạnh v&agrave;o ph&acirc;n kh&uacute;c smartphone tầm trung hiện nay. Sở hữu m&agrave;n h&igrave;nh lớn 5.5 inch Full HD, vi xử l&yacute; 8 nh&acirc;n xung nhịp 1.6 GHz với 3 GB RAM chạy tr&ecirc;n nền Android 6.0.1 c&ugrave;ng bộ đ&ocirc;i camera 13 MP/8 MP chất lượng, tất cả chỉ trong một mức gi&aacute; dễ chịu của ph&acirc;n kh&uacute;c.</p>\r\n', 2),
(23, 'Galaxy J7 2016', 123, 5400000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>Galaxy J7 2016 l&agrave; chiếc điện thoại tầm trung mới của Samsung với mức gi&aacute; hợp l&iacute; c&ugrave;ng thiết kế v&ocirc; c&ugrave;ng nổi bật, camera c&oacute; khả năng chụp thiếu s&aacute;ng tốt, cấu h&igrave;nh mạnh mẽ, hứa hẹn trở th&agrave;nh một sản phẩm đ&aacute;p ứng ho&agrave;n hảo nhu cầu sử dụng của người d&ugrave;ng.</p>\r\n', 2),
(24, 'Samsung Galaxy J5 2016', 123, 5000000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>Galaxy J5 2016 l&agrave; mẫu smartphone tầm trung mới của Samsung sở hữu mức gi&aacute; hợp l&iacute;, thừa hưởng những đường n&eacute;t thiết kế mềm mại từ những người tiền nhiệm, c&ugrave;ng với đ&oacute; l&agrave; camera c&oacute; khả năng chụp thiếu s&aacute;ng tốt, độ ph&acirc;n giải cao c&ugrave;ng cấu h&igrave;nh mạnh mẽ, Galaxy J5 2016 hứa hẹn sẽ trở th&agrave;nh một sự lựa chọn s&aacute;ng gi&aacute; cho người d&ugrave;ng.</p>\r\n', 2),
(25, 'Samsung Galaxy J7', 123, 4500000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>Với những t&iacute;nh năng tuyệt vời của Galaxy J7, bạn c&oacute; thể trải nghiệm chất lượng h&igrave;nh ảnh v&agrave; video vượt trội với m&agrave;n h&igrave;nh Super AMOLED 5.5 inch v&ocirc; c&ugrave;ng sắc n&eacute;t, chất lượng phần cứng nổi bật v&agrave; khả năng chụp ảnh linh hoạt</p>\r\n', 2),
(26, 'Samsung E-1200', 123, 350000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2015/12/11/635854272590343110_note5-g1.jpg', '<p>H&agrave;ng Vip</p>\r\n', 2),
(28, 'Nokia Lumia 1020', 123, 5000000, 'http://duymobile.vn/wp-content/uploads/2016/01/thay-man-hinh-microsoft-lumia-950-XL-1.jpg', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/nokia-lumia-1020-id21648.jpg\" style=\"height:400px; width:400px\" /></p>\r\n', 3),
(29, 'Nokia Lumia 925', 123, 4000000, 'http://duymobile.vn/wp-content/uploads/2016/01/thay-man-hinh-microsoft-lumia-950-XL-1.jpg', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/nokia-lumia-925-id20297.jpg\" style=\"height:400px; width:400px\" /></p>\r\n', 3),
(30, 'Microsoft Lumia 640 XL', 123, 3600000, 'http://duymobile.vn/wp-content/uploads/2016/01/thay-man-hinh-microsoft-lumia-950-XL-1.jpg', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/635873294852868860_640xl-w.jpg\" style=\"height:400px; width:400px\" />Đẹp</p>\r\n', 3),
(31, 'Nokia Lumia 625', 123, 3000000, 'http://duymobile.vn/wp-content/uploads/2016/01/thay-man-hinh-microsoft-lumia-950-XL-1.jpg', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/213.jpeg\" style=\"height:400px; width:400px\" /></p>\r\n', 3),
(32, 'Nokia Lumia 520', 123, 1400000, 'http://duymobile.vn/wp-content/uploads/2016/01/thay-man-hinh-microsoft-lumia-950-XL-1.jpg', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/nokia-lumia-520-id15740.jpg\" style=\"height:400px; width:400px\" /></p>\r\n', 3),
(33, 'Nokia 230', 123, 13999000, 'http://duymobile.vn/wp-content/uploads/2016/01/thay-man-hinh-microsoft-lumia-950-XL-1.jpg', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/635851727687294278_230-b1.jpg\" style=\"height:400px; width:400px\" /></p>\r\n', 3),
(34, 'Microsoft Lumia 435', 123, 1000000, 'http://duymobile.vn/wp-content/uploads/2016/01/thay-man-hinh-microsoft-lumia-950-XL-1.jpg', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/213.jpeg\" style=\"height:400px; width:400px\" /></p>\r\n', 3),
(36, 'Nokia 215 Dual Sim', 123, 850000, 'http://duymobile.vn/wp-content/uploads/2016/01/thay-man-hinh-microsoft-lumia-950-XL-1.jpg', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/635737675851495335_215-hot.jpg\" style=\"height:430px; width:510px\" /></p>\r\n', 3),
(37, 'HTC Desire 628', 123, 4800000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p><img alt=\"\" src=\"http://localhost/www/teach/2009/project/storage/ckfinder/files/635994209164729425_628-w1.jpg\" style=\"height:400px; width:400px\" /></p>\r\n', 4),
(38, 'HTC One A9', 121, 9000000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>HTC One A9 l&agrave; mẫu smartphone chiến lược của HTC để cạnh tranh với c&aacute;c thương hiệu kh&aacute;c v&agrave;o dịp cuối năm 2015. Đ&acirc;y l&agrave; chiếc điện thoại đầu ti&ecirc;n tr&ecirc;n thế giới được c&agrave;i sẵn Android 6.0 Marshmallow ngay khi xuất xưởng, ngo&agrave;i ra n&oacute; c&ograve;n sở hữu cảm biến v&acirc;n tay v&agrave; một cấu h&igrave;nh mạnh với vi xử l&yacute; 8 nh&acirc;n Snapdragon 617.</p>\r\n', 4),
(39, 'HTC One E9 Dual SIM', 123, 5500000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>M&agrave;n h&igrave;nh lớn 5.5 inch Full HD si&ecirc;u n&eacute;t, cấu h&igrave;nh mạnh mẽ c&ugrave;ng camera sau chất lượng, camera trước chụp selfie xuất sắc v&agrave; nhiều t&iacute;nh năng hấp dẫn kh&aacute;c h&ograve;a quyện trong một thiết kế sang trọng v&agrave; cao cấp. Tất cả đều c&oacute; mặt tr&ecirc;n HTC One E9 Dual SIM.</p>\r\n', 4),
(40, 'HTC Desire 820G Plus Dual SIM', 12, 3790000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>HTC Desire 820G Plus Dual SIM l&agrave; phi&ecirc;n bản smartphone tầm trung sở hữu sự c&aacute;ch t&acirc;n ấn tượng về thiết kế, c&ugrave;ng với đ&oacute; một cấu h&igrave;nh mạnh mẽ c&ugrave;ng nhiều t&iacute;nh năng nổi bật để mang đến trải nghiệm tốt nhất cho những người d&ugrave;ng trẻ.</p>\r\n', 4),
(41, 'HTC Desire 526G', 127, 1990000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>&nbsp;</p>\r\n\r\n<p>Thiết kế đơn giản, năng động, m&agrave;n h&igrave;nh qHD 4.7 inch rực rỡ c&ugrave;ng bộ vi xử l&yacute; tốc độ cao v&agrave; bộ đ&ocirc;i camera sắc n&eacute;t, HTC Desire 526G sẽ mang đến cho bạn mọi c&ocirc;ng cụ chỉnh sửa với c&aacute;c t&iacute;nh năng v&agrave; phần mềm mạnh mẽ m&agrave; bạn lu&ocirc;n tr&ocirc;ng đợi với mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn.</p>\r\n', 4),
(42, 'HTC Desire 630 Dual SIM', 127, 5000000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>M&agrave;n h&igrave;nh lớn 5.5 inch Full HD si&ecirc;u n&eacute;t, cấu h&igrave;nh mạnh mẽ c&ugrave;ng camera sau chất lượng, camera trước chụp selfie xuất sắc v&agrave; nhiều t&iacute;nh năng hấp dẫn kh&aacute;c h&ograve;a quyện trong một thiết kế sang trọng v&agrave; cao cấp. Tất cả đều c&oacute; mặt tr&ecirc;n HTC One E9 Dual SIM.</p>\r\n', 4),
(43, 'HTC Desire 10 pro dual sim', 123, 8000000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>đẹp</p>\r\n', 4),
(44, 'HTC One ME Dual sim', 123, 5000000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>đẹp</p>\r\n', 4),
(45, 'HTC One (M8 EYE)', 127, 4000000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>đẹp</p>\r\n', 4),
(46, 'HTC Desire EYE', 123, 10000000, 'http://www.htc.com/managed-assets/shared/desktop/smartphones/htc-desire-510/en_CA/A11_3V_Gray_CA.png', '<p>đẹp</p>\r\n', 4),
(47, 'Asus Zenfone 3 ZE520KL', 123, 8000000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>ZenFone 3 với thiết kế đổi mới ho&agrave;n to&agrave;n, cao cấp hơn v&agrave; t&iacute;ch hợp vi xử l&yacute; của Qualcomm. Với thay đổi n&agrave;y, sản phẩm mới của ASUS nổi bật hơn hẳn những đối thủ c&ugrave;ng ph&acirc;n kh&uacute;c</p>\r\n', 5),
(48, 'Asus Zenfone 3 Max', 127, 4500000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>ZenFone 3 Max hướng đến đối tượng kh&aacute;ch h&agrave;ng cần một chiếc smartphone pin tr&acirc;u để sử dụng thoải m&aacute;i trong nhiều ng&agrave;y v&agrave; đặc biệt l&agrave; gi&aacute; b&aacute;n kh&ocirc;ng qu&aacute; cao nhưng lại hội tụ được đầy đủ c&aacute;c yếu tố tối ưu.</p>\r\n', 5),
(49, 'Asus ZenFone Go (ZC500TG)', 123, 3000000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>Asus Zenfone Go l&agrave; mẫu smartphone gi&aacute; rẻ được Asus giới thiệu lần đầu ti&ecirc;n tại thị trường Ấn Độ v&agrave;o th&aacute;ng 9/2015. Chiếc điện thoại n&agrave;y đ&aacute;nh dấu sự thay đổi quan trọng của c&ocirc;ng ty Đ&agrave;i Loan khi lần đầu ti&ecirc;n một mẫu Zenfone của họ được trang bị vi xử l&yacute; đến từ MediaTek.</p>\r\n', 5),
(50, 'Asus Zenfone Laser LTE', 123, 2800000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>Asus ZenFone 2 Laser 5.0 LTE l&agrave; d&ograve;ng smartphone tầm trung xuất sắc từ Asus được t&iacute;ch hợp chuẩn kết nối 4G đầu ti&ecirc;n trong tầm gi&aacute; dưới 4 triệu đồng tại Việt Nam nhằm đ&oacute;n đầu xu hướng kết nối kh&ocirc;ng d&acirc;y tốc độ cao.</p>\r\n', 5),
(51, 'Asus Zenfone 3 ZE552KL', 123, 9000000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>ZenFone 3 ZE552KL l&agrave; phi&ecirc;n bản kh&aacute;c của ZenFone 3, c&oacute; m&agrave;n h&igrave;nh lớn hơn, cho trải nghiệm sống động hơn.</p>\r\n', 5),
(52, 'Asus Zenfone Max', 123, 4000000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>Zenfone Max l&agrave; mẫu smartphone tầm trung tiếp theo của thương hiệu Đ&agrave;i Loan Asus, sở hữu nhiều điểm mới mẻ trong phong c&aacute;ch thiết kế v&agrave; một cấu h&igrave;nh mạnh mẽ ph&ugrave; hợp với tầm gi&aacute;. Đặc biệt, m&aacute;y c&ograve;n được trang bị dung lượng pin khủng l&ecirc;n đến 5000 mAh, đồng thời cho ph&eacute;p người d&ugrave;ng sử dụng như một cục sạc dự ph&ograve;ng cho điện thoại kh&aacute;c.</p>\r\n', 5),
(53, 'Asus Zenfone 2 - ZE551ML', 123, 3500000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>Sau những th&agrave;nh c&ocirc;ng của bộ ba ZenFone 4-5-6, Asus tiếp tục ra mắt sản phẩm Asus ZenFone 2 với rất nhiều n&acirc;ng cấp mạnh mẽ cả về thiết kế v&agrave; phần cứng, mang đến cho bạn một sản phẩm tuyệt vời trong tầm gi&aacute; phải chăng.</p>\r\n', 5),
(54, 'Asus Zenfone Go 4.5 ZB452KG', 123, 1700000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>Asus Zenfone Go 4.5 ZB452KG l&agrave; phi&ecirc;n bản Zenfone Go mới của thương hiệu Đ&agrave;i Loan d&agrave;nh cho ph&acirc;n kh&uacute;c gi&aacute; rẻ trong năm 2016. Với thiết kế thời trang c&ugrave;ng một hiệu năng ph&ugrave; hợp với tầm gi&aacute;, chiếc điện thoại n&agrave;y sẽ l&agrave; sự lựa chọn ph&ugrave; hợp cho những người d&ugrave;ng trẻ c&aacute; t&iacute;nh, năng động.</p>\r\n', 5),
(55, 'Asus Zenfone 3 Ultra', 127, 5000000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>đẹp</p>\r\n', 5),
(56, 'Asus Zenfone 3 Deluxe', 127, 6000000, 'http://fptshop.com.vn/Uploads/images/2015/asus_zenfone_go.jpg', '<p>Ra mắt ZenFone 3 Deluxe, ASUS dần bước v&agrave;o thị trường smartphone cao cấp một c&aacute;ch ấn tượng. Sản phẩm c&oacute; thiết kế nh&ocirc;m nguy&ecirc;n khối sang trọng, vi xử l&yacute; mới nhất Snapdragon 820 c&ugrave;ng 6GB RAM v&agrave; bộ nhớ ROM tuỳ chọn l&ecirc;n đến 256GB.</p>\r\n', 5),
(57, '111', 111, 111, '111', '111', 1),
(58, '111', 111, 111, '111', '111', 1),
(59, '111', 111, 111, '111', '111', 1),
(60, '111', 111, 111, '111', '111', 1),
(61, 'Thêm mới nè', 22, 9999, 'Thêm mới nè', 'Thêm mới nè', 1);

-- --------------------------------------------------------

--
-- Table structure for table `theloai_sanpham`
--

CREATE TABLE `theloai_sanpham` (
  `id_theloai` int(10) NOT NULL,
  `ten_theloai` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idCL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai_sanpham`
--

INSERT INTO `theloai_sanpham` (`id_theloai`, `ten_theloai`, `idCL`) VALUES
(1, 'Apple', 8),
(3, 'Nokia', 8),
(4, 'HTC', 8),
(5, 'Asus', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `password`, `level`) VALUES
(2, 'admin', '$2y$10$TvDRS4OFQfRF9xKqBgtnW.Ypd0Dbq0MkAf440h/Njrd0RgsehY7QK', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chungloai`
--
ALTER TABLE `chungloai`
  ADD PRIMARY KEY (`idCL`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idHD`);

--
-- Indexes for table `KhachHang`
--
ALTER TABLE `KhachHang`
  ADD PRIMARY KEY (`idKH`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Indexes for table `theloai_sanpham`
--
ALTER TABLE `theloai_sanpham`
  ADD PRIMARY KEY (`id_theloai`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chungloai`
--
ALTER TABLE `chungloai`
  MODIFY `idCL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `KhachHang`
--
ALTER TABLE `KhachHang`
  MODIFY `idKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `theloai_sanpham`
--
ALTER TABLE `theloai_sanpham`
  MODIFY `id_theloai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
