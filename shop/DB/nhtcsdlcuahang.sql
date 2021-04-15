-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 02:33 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhtcsdlcuahang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` int(11) NOT NULL,
  `MaDonDatHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `MaDonDatHang`, `MaSanPham`, `SoLuong`, `GiaBan`) VALUES
(17, 33, 65, 1, 350000),
(18, 33, 65, 1, 350000),
(19, 38, 68, 1, 29000),
(20, 40, 68, 1, 29000),
(21, 41, 68, 1, 29000),
(22, 42, 67, 1, 12000),
(23, 43, 65, 1, 350000),
(24, 44, 67, 1, 12000),
(25, 45, 65, 1, 350000),
(26, 48, 67, 1, 12000),
(27, 49, 67, 1, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `NgayDatHang` datetime NOT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `MaNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `MaKhachHang`, `NgayDatHang`, `TongThanhTien`, `MaTinhTrangDonDatHang`, `MaNhanVien`) VALUES
(30, 23, '2020-06-11 00:00:00', 0, 4, 1),
(32, 23, '2020-06-11 00:00:00', 0, 5, 1),
(33, 24, '2021-04-13 00:00:00', 350000, 1, NULL),
(37, 24, '2021-04-13 00:00:00', 0, 1, NULL),
(38, 25, '2021-04-13 00:00:00', 29000, 1, NULL),
(39, 26, '2021-04-13 00:00:00', 0, 1, NULL),
(40, 23, '2021-04-13 00:00:00', 29000, 1, NULL),
(41, 23, '2021-04-13 00:00:00', 29000, 1, NULL),
(42, 23, '2021-04-13 00:00:00', 12000, 1, NULL),
(43, 23, '2021-04-13 00:00:00', 350000, 1, NULL),
(44, 23, '2021-04-13 00:00:00', 12000, 1, NULL),
(45, 23, '2021-04-13 00:00:00', 350000, 1, NULL),
(46, 23, '2021-04-13 00:00:00', 0, 1, NULL),
(47, 23, '2021-04-13 00:00:00', 0, 1, NULL),
(48, 23, '2021-04-13 00:00:00', 12000, 1, NULL),
(49, 23, '2021-04-14 00:00:00', 12000, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `HoTen` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(4) NOT NULL DEFAULT 0,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoTen`, `DiaChi`, `SoDienThoai`, `BiXoa`, `username`, `pwd`) VALUES
(23, 'Trần Trung Kiên', '475A Điện Biên Phủ', '0772569510', 0, '', ''),
(24, 'Bùi Văn Tân', 'Hutech', '0969416407', 0, '', ''),
(25, 'tan', 'ấd', '123456', 0, 'user', '1234'),
(26, 'Tan', 'addsad', '0969416407', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(4) NOT NULL DEFAULT 0,
  `GioiThieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`, `GioiThieu`, `HinhURL`) VALUES
(17, 'Bánh Kem', 0, 'Bánh kem là loại bánh thơm ngon, đẹp mắt và có ý nghĩa quan trọng trong những ngày đặc biệt của con người như thôi nôi, cưới hỏi, sinh nhật, tiệc mừng….', 'gioi-thieu-banh-kem'),
(19, 'Bánh Bông Lan', 0, 'Bánh bông lan là những chiếc bánh dễ dàng nhận dạng nhất trong hầu hết tất cả các loại bánh, kích thước nhỏ, thường được nướng trong những chiếc cốc nhỏ.', 'banhbonglan.jpg'),
(21, 'Bánh Mỳ', 0, 'Bánh mỳ là món ăn nhanh vào mỗi buổi sáng. Bánh được làm từ bột mì, nước thường có thêm men và muối,...', 'ANHUPWEB-_636815866338081247_HasThumb'),
(22, 'Bánh Mặn', 0, 'Tuy không nhiều loại và không được phổ biến như bánh ngọt, các loại bánh mặn cũng rất đa dạng với nhiều hương vị độc đáo. Đặc biệt đối với những bạn không thích vị ngọt, béo của bánh ngọt thì bánh mặn quả là món quà vặt tuyệt vời dành cho bạn.', 'man2.jpg'),
(23, 'Bánh Tráng Miệng', 0, 'Bánh tráng miệng là một món ăn nhẹ, sau khi kết thúc một bữa ăn chính.', '1000x600p_636815852004031386_HasThumb'),
(24, 'Mini Cake', 0, 'Mini Cake thật ra rất đơn giản, hiểu nôm na là bánh kem cỡ nhỏ, bánh được trang trí dễ và đơn giản,...', 'ANHUPWEB-_636815857213519352_HasThumb'),
(25, 'Cookies', 0, 'Cookies là một loại bánh nhỏ và dẹt, được làm từ bột, đường, dầu ăn, bơ,..', 'ANHUPWEB-_636815867646246070_HasThumb (1)');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `TenDangNhap` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `TenDangNhap`, `MatKhau`, `HoTen`, `Email`, `SoDienThoai`, `BiXoa`) VALUES
(1, 'tan', '123', 'Bui Van Tan', 'tan@gmail.com', '0942123152', 0),
(2, 'dat8452', '123', 'Nguyễn Phan Tuấn Đạt', 'nguyendat8452@gmail.com', '0935646472', 0),
(5, 'tuanplum', '123', 'Nguyễn Văn Tuấn', 'plum123@gmail.com', '0772569510', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `thanh_vien`, `money`, `note`, `vnp_response_code`, `code_vnpay`, `code_bank`, `time`) VALUES
(1, '742874161', 'abc', 100000, 'chinh chuyển khoản', '00', '13401455', 'NCB', '2020-10-10 01:00:00'),
(2, '608324672', 'abc', 1000000, 'test chuyển khoản', '00', '13401811', 'NCB', '2020-10-11 21:00:00'),
(3, '1134065293', 'CT2', 150000, 'học phí', '00', '13407163', 'NCB', '2020-10-22 23:00:00'),
(4, '596509313', 'CT2', 5000000, 'học phí', '00', '13407176', 'NCB', '2020-10-23 00:00:00'),
(5, '70267166', 'CT2', 5000000, 'học phí', '00', '13407178', 'NCB', '2020-10-23 00:00:00'),
(6, '1672349048', 'CT1', 150000, 'học phí', '00', '13407729', 'NCB', '2020-10-23 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT 0,
  `SoLuotXem` int(11) DEFAULT 0,
  `NgayNhap` datetime DEFAULT NULL,
  `BiXoa` tinyint(4) NOT NULL DEFAULT 0,
  `GioiThieu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MaLoaiSanPham`, `Gia`, `SoLuongTon`, `SoLuongBan`, `SoLuotXem`, `NgayNhap`, `BiXoa`, `GioiThieu`, `MoTa`, `HinhURL`, `HinhURL2`) VALUES
(65, 'Bánh Kem Chocolate', 17, 350000, 10, 0, 24, NULL, 0, 'Bánh làm từ 4 lớp gato trắng kết hợp với 4 lớp kem tươi. Bánh phủ bên ngoài bởi 1 lớp kem tươi chocolate , có phụ kiện gắn kèm sinh động', 'Thành phần chính:\r\n\r\n- Gato\r\n\r\n- Kem tươi.', 'kem1.jpg', 'kem1.jpg'),
(66, 'Bánh Sừng', 22, 12000, 10, 0, 0, NULL, 0, 'Bánh được làm từ những lớp bột mỏng cán đều xếp trồng lên nhau. ', 'Thành phần:\r\n\r\n- Bột mỳ\r\n\r\n- Bơ\r\n\r\n- Đường\r\n\r\n- Muối', 'man1.jpg', 'man1.jpg'),
(67, 'Ngàn lớp việt quất', 22, 12000, 100, 0, 14, NULL, 0, '', 'Thành phần chính: \r\n\r\n- Bột mỳ\r\n\r\n- Bơ\r\n\r\n- Mứt Việt Quất\r\n\r\n- Phụ gia', 'man2.jpg', 'man2.jpg'),
(68, 'Bánh Chese Cake', 19, 29000, 100, 0, 7, NULL, 0, 'Bánh Cheese Cake: Lấy nguồn cảm hứng từ xứ sở hoa Anh Đào, chiếc bánh thơm mùi phô mai nhưng không quá béo ngậy, phù hợp với khẩu vị của người Việt.', 'Thành phần: Kem phomai, sữa, kem tươi, trứng gà, bột mỳ, bột ngô, chanh vàng, đường.', 'gato1.jpg', 'gato1.jpg'),
(69, 'Bánh Butter Cake', 19, 25000, 100, 0, 0, NULL, 0, 'Bánh Butter Cake là loại bánh cổ điển phổ biến tại Mỹ, với sự cải tiến của đầu bếp Nhật, bạn sẽ được trải nghiệm hương vị hài hòa trong từng miếng bánh. Kết cấu bánh mềm ẩm, xốp nhẹ mịn, dễ ăn là lựa chọn lý tưởng cho các bữa ăn nhẹ của bạn.', 'Thành phần: Đường xay sữa, trứng, bơ, sữa, bột nở, bộ sô da, bột mỳ, vani', 'buttercake.jpg', 'buttercake.jpg'),
(70, 'Bánh Cuộn Kem Tươi Trà Xanh', 19, 30000, 100, 0, 0, NULL, 0, 'Bánh cuộn kem tươi: Món ăn nhẹ phổ biến và ưa thích của mỗi gia đình người Nhật, nhân kem tươi béo ngậy cùng lớp bông lan mềm mịn sẽ khác hẳn với các loại nhân kem thông thường. Fresh Garden có hai phiên bản: Bánh cuộn vani và trà xanh cho bạn lựa chọn.', 'Thành phần: trà xanh,đường xay sữa, bơ,sữa,bột mỳ', 'Banh-cuon_636995547737069421_HasThumb.jpg', 'Banh-cuon_636995547737069421_HasThumb.jpg'),
(71, 'Bánh Cuộn Dâu', 19, 20000, 100, 0, 0, NULL, 0, 'Bánh cuộn dâu miếng mềm mịn, xốp, xếp cuộn tròn với nhau thành hình xoắn ốc pha trộn một lớp mứt dâu ngọt ngào.', 'Thành phần: Chiffon vani, mứt dâu', '1000x600p_636815853273133975_HasThumb.jpg', '1000x600p_636815853273133975_HasThumb.jpg'),
(72, 'Bánh Chiffon Trà Xanh', 19, 35000, 1000, 0, 0, NULL, 0, 'Bánh chiffon 3 vị là sự kết hợp độc đáo từ 3 hương vị socola, cà phê, vani kết hợp với nhau. Bánh nhẹ mềm, xốp ẩm, dễ ăn', 'Thành phần: Chiffon cà phê, chiffon vani, chiffon socola, sốt sữa bò trắng', '1000x600p_636815852602595622_HasThumb.jpg', '1000x600p_636815852602595622_HasThumb.jpg'),
(73, 'Bánh Chiffon Vani', 19, 30000, 100, 0, 0, NULL, 0, 'Bánh chiffon vani nhẹ mềm, xốp ẩm thơm nồng vị trứng, ở giữa phủ một lớp kem sữa tạo độ ngọt nhẹ trong từng miếng bánh', 'Thành phần: Chiffon vani, sốt sữa bò trắng', '1000x600p_636815853556460180_HasThumb.jpg', '1000x600p_636815853556460180_HasThumb.jpg'),
(74, 'Bánh Kem Pink Lady', 17, 350000, 50, 0, 0, NULL, 0, 'Bánh size 8: 350.000đ Bánh size 10: 490.000đ', 'Thành phần: Bánh kem tươi cốt bánh vani nhân kem vani, trang trí bánh macaron và hoa hồng khô', 'Pink-lad_637068295123091355_HasThumb.jpg', 'Pink-lad_637068295123091355_HasThumb.jpg'),
(75, 'Bánh Kem Flower Fruit', 17, 280000, 25, 0, 0, NULL, 0, 'Flower Fruit Cake với cốt bánh vanilla 3 lớp cùng lớp mứt táo, trang trí thêm những bông hoa lily đẹp mắt cho buổi tiệc thêm hoàn hảo hơn.', 'Thành phần: Bánh kem tươi cốt bánh vanilla 3 lớp, nhân mứt táo, trang trí mứt chuối, kẹo đường và socola', 'Pink-lad_637068295123091355_HasThumb.jpg', 'Pink-lad_637068295123091355_HasThumb.jpg'),
(76, 'Bánh Kem Teedy Bear', 17, 280000, 55, 0, 1, NULL, 0, 'Nằm trong BTS bánh kem ngộ nghĩnh từ Fresh Garden, với cốt bánh socola 4 lớp với lớp nhân táo đặc biệt, lớp kem socola cùng với bàn tay khéo léo của người thợ đã tạo hình nên chiếc bánh kem hình mặt chú gấu vô cùng dễ thương và bắt mắt.', 'Thành phần: Bánh kem tươi cốt bánh socola 4 lớp, nhân mứt táo 1 lớp ở giữa, trang trí hình mặt gấu Teddy', 'Teddy-Bee_637067357693359419_HasThumb.jpg', 'Teddy-Bee_637067357693359419_HasThumb.jpg'),
(77, 'Bánh Miếng Opera', 23, 35000, 20, 0, 0, NULL, 0, 'Bánh miếng Opera thuộc dòng bánh Tiramisu, bánh là sự hòa quyện giữa các hương vị hoàn hảo tạo nên miếng chiếc mềm, mịn và ngọt ngào.', 'Thành phần: Bột mỳ, đường, trứng, bơ, cà phê, bột hạnh nhân, rượu Kahlua, kem bơ cà phê, socola ganache, socola trang trí', '1000x600p_636815852004031386_HasThumb.jpg', '1000x600p_636815852004031386_HasThumb.jpg'),
(78, 'Panna Cotta', 17, 30000, 25, 0, 0, NULL, 0, 'Panna Cotta là món tráng miệng hấp dẫn với hương vị chua ngọt, thích hợp là món tráng miệng cho ngày cuối tuần', 'Thành phần: Panna Cotta là món tráng miệng hấp dẫn với hương vị chua ngọt, thích hợp là món tráng miệng cho ngày cuối tuần', 'Untitled-_636827105957267382_HasThumb.jpg', 'Untitled-_636827105957267382_HasThumb.jpg'),
(79, 'Bánh Tiramisu', 23, 35000, 30, 0, 1, NULL, 0, 'Bánh miếng Tiramisu,thuộc dòng bánh lạnh được mọi người ưa chuộng. Với lớp bánh mềm, mịn hương vị hòa quyện cùng lớp kem béo ngậy.', 'Thành phần: Cream cheese, trứng, bột hạnh nhân, cà phê, rượu Kahlua, bơ, kem tươi, cacao, bánh quy, đường, vani, gelatin, ...', '1000x600p_636815851793069320_HasThumb.jpg', '1000x600p_636815851793069320_HasThumb.jpg'),
(80, 'Sữa Chua', 23, 20000, 200, 0, 0, NULL, 0, 'Sữa chua lên men tự nhiên chứa nhiều dinh dưỡng cho ngày hè, mang lại cảm giác mát lạnh sảng khoái', 'Thành phần: Sữa chua không đường, sữa tươi, đường, sữa đặc, kem sữa (whipping cream)', 'Untitled-_636826292225777883_HasThumb.jpg', 'Untitled-_636826292225777883_HasThumb.jpg'),
(81, 'BÁNH QUY BƠ MỨT DÂU RỪNG', 25, 35000, 50, 0, 0, NULL, 0, 'Bánh quy bơ mứt dâu rừng được làm từ nguyên liệu cao cấp. Bánh giòn xốp, hương vị béo ngậy của bơ hoà quyện với vị ngọt dâu rừng. Bánh quy phù hợp với buổi tiệc trà và cà phê.', 'Thành phần: Bơ, bột mỳ, trứng, đường, mứt dâu rừng', 'ANHUPWEB-_636815867244793108_HasThumb.jpg', 'ANHUPWEB-_636815867244793108_HasThumb.jpg'),
(82, 'BÁNH QUY CÀ PHÊ HẠNH NHÂN', 25, 45000, 20, 0, 0, NULL, 0, 'Bánh quy cà phê hạnh nhân được làm từ nguyên liệu cao cấp. Bánh giòn xốp, hương vị cà phê hoà quyện với vị bùi ngậy của hạnh nhân. Bánh quy phù hợp với buổi tiệc trà và cà phê.\r\n', 'Thành phần: Hạnh nhân, bột nở, soda, cafe, sữa bột, bơ, đường, trứng, bột mỳ', 'ANHUPWEB-_636815867646246070_HasThumb (1).jpg', 'ANHUPWEB-_636815867646246070_HasThumb (1).jpg'),
(83, 'BÁNH QUY VANI HẠNH NHÂN', 25, 45000, 200, 0, 0, NULL, 0, 'Bánh quy vani hạnh nhân được làm từ nguyên liệu cao cấp. Bánh giòn tan, hương vị béo của bơ hoà quyện với vị bùi ngậy của hạnh nhân. Bánh quy phù hợp với buổi tiệc trà và cà phê.\r\n', 'Thành phần: Bột mỳ, đường, muối, trứng, sữa bột, bơ, hạnh nhân, vani, bột nở', 'ANHUPWEB-_636815867969504559_HasThumb.jpg', 'ANHUPWEB-_636815867969504559_HasThumb.jpg'),
(84, 'SANDWICH GIĂM BÔNG PHOMAI', 24, 29000, 50, 0, 0, NULL, 0, 'Sandwich giăm bông phô mai thơm lừng vị phomai, cùng với miếng giăm bông đầy hấp dẫn.\r\n', 'Thành phần: Bột bánh mỳ gối (bột mỳ, men, muối, bơ, đường, trứng gà, nước), giăm bông, phomai, sốt Mayonnaise, trứng ...', 'ANHUPWEB-_636815857213519352_HasThumb.jpg', 'ANHUPWEB-_636815857213519352_HasThumb.jpg'),
(85, 'PIZZA GIĂM BÔNG NẤM', 24, 29000, 20, 0, 0, NULL, 0, 'Bánh pizza giăm bông nấm với những nguyên liệu từ nấm tươi ngon và hấp dẫn đối với những tín đồ sành ăn\r\n', 'Thành phần: Bột pizza (bột mỳ, muối, men, nước, đường, dầu), giăm bông, nấm, phomai, rau hỗn hợp, sốt cà chua', 'ANHUPWEB-_636815858101210125_HasThumb.jpg', 'ANHUPWEB-_636815858101210125_HasThumb.jpg'),
(86, 'BÁNH TƯƠI XÚC XÍCH', 24, 20000, 20, 0, 0, NULL, 0, 'Bánh tươi sử dụng nguyên liệu cao cấp. Vỏ bánh mềm mịn cuộn lớp xúc xích và phomai tươi.\r\n', 'Thành phần: Bột bánh mỳ tươi (bột mỳ, đường, men, sữa bột, trứng gà, muối, bơ, nước), xúc xích (thịt gà & thịt lợn), phomai, ...', 'ANHUPWEB-_636815858932337663_HasThumb.jpg', 'ANHUPWEB-_636815858932337663_HasThumb.jpg'),
(87, 'BÁNH MỲ BAGUETTE', 21, 10000, 100, 0, 0, NULL, 0, 'Bánh mỳ baguette thơm ngon chuẩn Pháp. Vỏ bánh giòn, ruột mềm, thơm ngậy vị bơ\r\n', 'Thành phần: Bột mỳ, men, muối, nước.', 'ANHUPWEB-_636815866338081247_HasThumb.jpg', 'ANHUPWEB-_636815866338081247_HasThumb.jpg'),
(88, 'BÁNH MÌ GỐI ĐEN', 21, 39000, 200, 0, 1, NULL, 0, 'Bánh được làm từ bột mì đen, hương vị đậm đà. Bánh có hàm lượng chất xơ cao, phù hợp với người ăn kiêng, tiểu đường.\r\n', 'Thành phần: Bột mỳ đen, bột mỳ đen (14.5%), đường, sữa bột, bơ, muối, men, phụ gia bánh mỳ, nước.', 'Banh-goi-_636984597259563737_HasThumb.jpg', 'Banh-goi-_636984597259563737_HasThumb.jpg'),
(89, 'BÁNH MÌ NGUYÊN CÁM', 21, 39000, 200, 0, 0, NULL, 0, 'Bánh được làm từ bột mì nguyên cám, giữ nguyên được hàm lượng vitamin và khoáng chất. Bánh phù hợp với người ăn kiêng, tiểu đường. Bánh cần được bảo quản ở nhiệt độ phòng, tránh ánh sáng trực tiếp từ mặt trời. Khi bánh chưa được sử dụng hết, Quý khách vui', 'Thành phần: Bột mỳ, bột mỳ nguyên cám (17%), đường, sữa bột, bơ, muối, men, phụ gia bánh mỳ, nước.', 'Banh-mi-g_636984598402528103_HasThumb.jpg', 'Banh-mi-g_636984598402528103_HasThumb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrangdondathang`
--

CREATE TABLE `tinhtrangdondathang` (
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `TenTinhTrangDonDatHang` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtrangdondathang`
--

INSERT INTO `tinhtrangdondathang` (`MaTinhTrangDonDatHang`, `TenTinhTrangDonDatHang`) VALUES
(1, 'Mới đặt hàng'),
(2, 'Đang xử lý'),
(3, 'Đang giao hàng'),
(4, 'Đã thanh toán'),
(5, 'Đã hủy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `cpassword`) VALUES
(1, 'tan', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_KhachHang1_idx` (`MaKhachHang`),
  ADD KEY `fk_DonDatHang_TinhTrangDonDatHang1_idx` (`MaTinhTrangDonDatHang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham_idx` (`MaLoaiSanPham`);

--
-- Indexes for table `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  ADD PRIMARY KEY (`MaTinhTrangDonDatHang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  MODIFY `MaChiTietDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `MaDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  MODIFY `MaTinhTrangDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_KhachHang1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrangDonDatHang1` FOREIGN KEY (`MaTinhTrangDonDatHang`) REFERENCES `tinhtrangdondathang` (`MaTinhTrangDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_SanPham_LoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
