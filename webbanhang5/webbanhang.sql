-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2021 lúc 05:45 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(144, 127, 214, 1, 214, '214.00', '15'),
(145, 128, 216, 1, 138, '138.00', ''),
(146, 129, 214, 1, 214, '214.00', '15'),
(147, 129, 216, 0, 110, '0.00', '15'),
(148, 130, 220, 1, 14, '14.00', '15,16'),
(149, 131, 219, 5, 79, '395.00', ''),
(150, 132, 219, 5, 79, '395.00', ''),
(151, 133, 214, 1, 214, '214.00', '15,16'),
(152, 133, 216, 0, 110, '0.00', '15,16'),
(153, 134, 219, 1, 79, '79.00', ''),
(154, 135, 212, 1, 75, '75.00', '15,16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(15, 'Bọc LAPTOP', 10),
(16, 'Gói quà tặng', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhthucthanhtoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(127, 'thanh@gmail.com', '2021-06-26', 'Thanh Truong', 'Hà Nội', '1234567890', 'ATM', '224.00'),
(128, 'duongmphuong0311@gmail.com', '2021-10-25', 'Dương Minh Phương', 'Đà Nẵng', '0812701335', 'Live', '0.00'),
(129, 'duongmphuong0311@gmail.com', '2021-10-25', 'Dương Minh Phương', 'Hà Tĩnh', '0812701335', 'ATM', '334.00'),
(130, 'duongmphuong0311@gmail.com', '2021-10-29', 'Dương Minh Phương', 'Hà Tĩnh', '0812701335', 'ATM', '44.00'),
(131, 'duongmphuong0311@gmail.com', '2021-10-29', 'Dương Minh Phương', 'Đà Nẵng', '0812701335', 'Live', '0.00'),
(132, 'duongmphuong0311@gmail.com', '2021-10-29', 'Dương Minh Phương', 'Đà Nẵng', '0812701335', 'Live', '0.00'),
(133, 'dmphuong@gmail.com', '2021-11-15', 'Dương Minh Phương', 'Hà Tĩnh', '123456789', 'Live', '354.00'),
(134, 'hanhat0608@gmail.com', '2021-11-15', 'Hoàng Anh Nhật', 'Taiwan', '0123123123', 'ATM', '0.00'),
(135, 'dmphuong@gmail.com', '2021-11-15', 'Dương Minh Phương', 'Hà Tĩnh', '123456789', 'ATM', '105.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('dmphuong@gmail.com', 123, 'Dương Minh Phương', '123456789'),
('duongmphuong0311@gmail.com', 3112002, 'Dương Minh Phương', '0812701335'),
('thanh@gmail.com', 123, 'Thanh Truong', '1234567890'),
('trumtvtk2002@gmail.com', 123, 'Nguyễn Quang Tiên', '0971096373'),
('tungvu@gmail.com', 123, 'Vũ Đình Tùng', '0123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`ID`, `Ten`) VALUES
(17, 'MSI'),
(18, 'ACER'),
(20, 'LENOVO'),
(21, 'MACBOOK'),
(24, 'ASUS'),
(25, 'DELL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL,
  `tacgia` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`, `tacgia`) VALUES
(221, 'Acer Nitro 5 AN515-45-R3SM', 23.49, 'Acer Nitro 5 AN515-45-R3SM.png', 18, '<p>Laptop Acer Nitro 5 AN515 45 R3SM R5 (NH.QBMSV.005) c&oacute; vẻ ngo&agrave;i h&igrave;nh hầm hố đặc trưng của d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\">laptop gaming</a>, cấu h&igrave;nh mạnh mẽ chạy mượt c&aacute;c tựa game được c&aacute;c game thủ ưa th&iacute;ch với con chip AMD Ryzen 5 v&agrave; card đồ họa NVIDIA GeForce GTX 1650 4GB.</p>\r\n', '2021-12-04', 1, 22.11, '8 GBDDR4 2 khe (1 khe 8GB + 1 khe rời)3200 MHz'),
(222, 'MacBook Pro 2021', 52.99, 'MacBook Pro 2021.png', 21, '<h2><strong>Macbook Pro 14 inch - Chi&ecirc;́c Macbook đáng mong đợi nh&acirc;́t 2021</strong></h2>\r\n\r\n<p>K&ecirc;́ thừa những tinh hoa từ đời MacBook t&ocirc;́t nh&acirc;́t cùng với những n&acirc;ng c&acirc;́p đáng k&ecirc;̉ trong nhi&ecirc;̀u năm qua,&nbsp;<strong>Macbook Pro 14 inch</strong>&nbsp;dự ki&ecirc;́n sẽ là m&acirc;̃u laptop làm cho giới c&ocirc;ng ngh&ecirc;̣ &quot;phát s&ocirc;́t&quot;, cũng như là c&ocirc;̃ máy xử lý c&ocirc;ng vi&ecirc;̣c t&ocirc;́i ưu hi&ecirc;̣u quả.</p>\r\n\r\n<h3><strong>Thi&ecirc;́t k&ecirc;́ lưng máy phẳng t&ocirc;́i giản, màn hình XDR Retina 14 inch rực rỡ</strong></h3>\r\n', '2021-12-04', 0, 0, 'RAM 32GB'),
(223, 'MacBook Air 2020 M1', 28.999, 'MacBook Air 2020 M1.png', 21, '<p><strong>Chiếc&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/macbook-air\">MacBook Air</a>&nbsp;c&oacute; hiệu năng đột ph&aacute; nhất từ trước đến nay đ&atilde; xuất hiện. Bộ vi xử l&yacute;&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tat-tan-tat-ve-chip-apple-m1-bo-vi-xu-ly-dinh-cao-moi-danh-cho-mac-128095\">Apple M1</a>&nbsp;ho&agrave;n to&agrave;n mới đưa sức mạnh của&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/macbook-air-13-2020-m1-256gb\">MacBook Air M1</a>&nbsp;13 inch vượt xa khỏi mong đợi người d&ugrave;ng, c&oacute; thể chạy được những t&aacute;c vụ nặng v&agrave; thời lượng pin đ&aacute;ng kinh ngạc.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-12-04', 0, 0, '8 GB, LPDDR4'),
(224, 'Laptop Acer Aspire 3', 16.999, 'Laptop Acer Aspire 3.png', 18, '<p><strong>Chiếc laptop thuộc d&ograve;ng Aspire 3 của&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/acer\">nh&agrave; Acer</a>&nbsp;giờ đ&acirc;y đ&atilde; được n&acirc;ng cấp vượt trội về cấu h&igrave;nh với bộ vi xử l&yacute; Intel Core i5 thế hệ thứ 10 v&agrave; cả card đồ họa rời, mang đến một sản phẩm thực sự mạnh mẽ ở mức gi&aacute; b&aacute;n dễ chịu.</strong></p>\r\n', '2021-12-04', 1, 15.999, ' 8 GB, DDR4, 2400 MHz'),
(225, 'Laptop MSI Gaming GF63', 22.999, 'Laptop MSI Gaming GF63.png', 17, '<p><a href=\"https://fptshop.com.vn/may-tinh-xach-tay/msi-gaming-gf63-thin-10sc-481vn-i7-10750h\"><strong>MSI Gaming GF63</strong></a><strong><a href=\"https://fptshop.com.vn/may-tinh-xach-tay/msi-gaming-gf63-thin-10sc-481vn-i7-10750h\">&nbsp;Thin 10SC 481VN</a>&nbsp;</strong><strong>l&agrave; chiếc laptop gaming rất đ&aacute;ng mua ở ph&acirc;n kh&uacute;c 20 triệu đồng khi vừa nhỏ gọn di động, lại vừa trang bị bộ vi xử l&yacute; Intel Core i7 10750H si&ecirc;u mạnh, đi c&ugrave;ng card đồ họa rời GTX 1650 chuy&ecirc;n game.</strong></p>\r\n', '2021-12-04', 1, 19.999, ' 8 GB, DDR4, 3200 MHz'),
(226, 'Laptop MSI Gaming Bravo 15', 21.999, 'Laptop MSI Gaming Bravo 15.png', 17, '<p><strong>L&agrave; chiếc laptop gaming rất đ&aacute;ng mua ở ph&acirc;n kh&uacute;c 20 triệu đồng khi vừa nhỏ gọn di động, lại vừa trang bị bộ vi xử l&yacute; Intel Core i7 10750H si&ecirc;u mạnh, đi c&ugrave;ng card đồ họa rời GTX 1650 chuy&ecirc;n game.</strong></p>\r\n', '2021-12-04', 1, 20.999, '8 GB, DDR4, 3200 MHz'),
(227, 'Laptop Lenovo Gaming 3', 28.999, 'Laptop Lenovo Gaming 3.png', 20, '<p><a href=\"https://fptshop.com.vn/may-tinh-xach-tay/lenovo-gaming-3-15ihu6-i7-11370h-rtx3050-4gb\"><strong>Lenovo Gaming 3 15IHU6</strong></a><strong>&nbsp;thuộc thế hệ IdeaPad Gaming 3i Gen 6 mới nhất từ nh&agrave; Lenovo, trang bị những linh kiện h&agrave;ng đầu hiện nay như bộ vi xử l&yacute; Intel Core i7 thế hệ thứ 11 hay&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/for-gamers/card-do-hoa-rtx-30-series-co-gi-khac-biet-so-voi-rtx-20-series-134903\">card đồ họa rời RTX 30 series</a>, cho bạn hiệu suất chơi game đỉnh cao trong một sản phẩm di động.</strong></p>\r\n', '2021-12-04', 1, 27.999, ' 8 GB, DDR4, 3200 MHz'),
(228, 'Laptop Dell Vostro V3400', 21.999, 'Gaming Dell Vostro 7580.png', 25, '<p><strong><a href=\"https://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v3400-i5-1135g7-mx330-win10\">Dell Vostro V3400</a>&nbsp;hướng trực tiếp đến những gi&aacute; trị d&agrave;nh cho người d&ugrave;ng, từ bộ vi xử l&yacute; Intel thế hệ thứ 11 mạnh mẽ, SSD dung lượng cao 512GB, m&agrave;n h&igrave;nh Full HD sắc n&eacute;t cho đến&nbsp;<a href=\"https://fptshop.com.vn/linh-kien/vga\">card đồ họa rời</a>&nbsp;chuy&ecirc;n nghiệp.</strong></p>\r\n', '2021-12-04', 1, 20.999, '8 GB, DDR4, 3200 MHz'),
(229, 'Laptop Asus TUF Gaming FX506LH HN002T', 21.999, 'Laptop Asus TUF Gaming FX506LH HN002T.png', 24, '<p><strong><a href=\"https://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-gaming-fx506lh-hn002t-i5-10300h\">Asus TUF Gaming FX506LH HN002T</a>&nbsp;thuộc d&ograve;ng&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-gaming\">laptop chơi game Asus TUF</a>, cho bạn sự mạnh mẽ, bền bỉ kh&ocirc;ng chỉ thiết kế bề ngo&agrave;i m&agrave; cả hiệu năng b&ecirc;n trong. Với Asus TUF Gaming FX506, bạn sẽ l&agrave; một chiến binh thực sự trong tr&ograve; chơi y&ecirc;u th&iacute;ch.</strong></p>\r\n', '2021-12-04', 1, 19.999, ' 8 GB, DDR4, 2933 MHz');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhaxuatban` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
