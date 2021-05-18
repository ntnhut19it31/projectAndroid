-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2019 lúc 02:00 AM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appfoodtea`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(1000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 1, 1, 'Mỳ cay Hàn Quốc', 12000, 1),
(2, 2, 2, 'TOKIBOKI', 12000, 2),
(3, 3, 3, 'Trà sữa trân châu đường đen', 12000, 2),
(4, 2, 2, 'TOKIBOKI', 12000, 2),
(5, 3, 3, 'Trà sữa trân châu đường đen', 12000, 2),
(6, 2, 2, 'TOKIBOKI', 12000, 2),
(7, 3, 3, 'Trà sữa trân châu đường đen', 12000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`) VALUES
(1, 'hoky', 1262616266, 'hoky@gmail.com'),
(2, 'butky', 126266266, 'butky@gmail.com'),
(3, 'hobutky', 121226261, 'hobutky@gmail.com'),
(4, 'hobutky', 121226261, 'hobutky@gmail.com'),
(5, 'hobutky', 121226261, 'hobutky@gmail.com'),
(6, 'hobutky', 121226261, 'hobutky@gmail.com'),
(7, 'hobutky', 121226261, 'hobutky@gmail.com'),
(8, 'hobutky', 121226261, 'hobutky@gmail.com'),
(9, 'hobutky', 121226261, 'hobutky@gmail.com'),
(10, 'hobutky', 121226261, 'hobutky@gmail.com'),
(11, 'Admin', 126261626, 'admin@gmail.com'),
(12, 'Ky', 12626216, 'ky@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Trà Sữa', 'http://icons.iconarchive.com/icons/graphicloads/food-drink/128/can-icon.png'),
(2, 'Đồ Ăn Vặt', 'http://icons.iconarchive.com/icons/graphicloads/food-drink/128/dish-2-icon.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, ' Mỳ cay Hàn Quốc', 12000, 'https://static.hotdeal.vn/images/1024/1024486/500x500/263053-mi-cay-chinh-hieu-han-quoc-tai-chi-ri-san-7-cap-do.jpg', 'Ngon lam', 2),
(2, 'TOKIBOKI', 10000, 'http://maikitchen.net/data/images/article/bnh-np-cay-hn-quc-maikitchen.jpg', 'Banh ngon lam', 2),
(3, 'Trà sữa trân châu đường đen', 12000, 'https://static.vietnammm.com/images/restaurants/vn/NQ01R1R/products/mon-sua-tuoi-tran-chau-duong-den.png', 'Các món sữa tươi kết hợp với trân châu đường đen vẫn chưa có dấu hạ nhiệt tại Việt Nam.\r\nChỉ đơn giản là sữa tươi không đường béo béo hòa cùng vị ngọt ngào của thứ đường đen từ xứ sở Kim Chi,\r\nvà kết hợp cùng với trân châu dẻo dai chỉ vậy thôi đó mà lại thu hút đến kỳ lạ.\r\nBạn có đang bỏ lỡ cơn sốt này không? Hãy đến HANDY để cùng thưởng thức thức uống tuyệt vời này nhé.', 1),
(4, 'Nem rán ', 10000, 'https://www.edupapers.net/wp-content/uploads/2018/10/nem-ran.jpg', 'Sản phẩm ngon ơi là ngon', 2),
(5, 'Trà sữa trân châu dừa', 10000, 'https://cdn.jamja.vn/blog/wp-content/uploads/2017/08/tra-sua-cu-nang-e1503393555879.jpeg', 'Sản phẩm ngon ơi là ngon', 1),
(6, 'Trà sữa thái', 12000, 'https://i.imgur.com/VY6itJel.jpg', 'Sản phẩm ngon ơi là ngon', 1),
(7, 'Trà sữa socola', 10000, 'http://store.bobapop.com.vn/resource/uploads/2016/09/10-socola-600x600.jpg', 'Sản phẩm ngon ơi là ngon', 1),
(8, 'Chân gà sốt cay Hàn Quốc', 35000, 'https://kenh14cdn.com/2017/chan-ga-5-1511222255976.jpg', 'Ngon ơi là ngon nè', 2),
(9, 'Chân gà hầm mât ong', 65000, 'https://2.bp.blogspot.com/-BgWTkCV-wCw/XEufJ-ySCLI/AAAAAAAAHf4/sNgK57DE93w7AkYN1CUpRpyxy62AKLxswCLcBGAs/s1600/51029392_2239927899599567_8682195063658250240_n.jpg', 'Ngon ơi là ngon nè', 2),
(10, 'Bánh mì nướng muối ớt', 15000, 'https://www.vntrip.vn/cam-nang/wp-content/uploads/2017/10/banh-mi-nuong-muoi-ot.jpg', 'Ngon ơi là ngon nè', 2),
(11, 'Gà phô mai', 10000, 'https://media.cooky.vn/recipe/g3/29152/s800x500/recipe-cover-r29152.jpg', 'Ngon ơi là ngon nè', 2),
(12, 'Trà sữa trân châu trắng', 15000, 'https://images.foody.vn/res/g73/721439/s750x750/201881413561-tra-sua-tran-chau-trang.jpg', 'Ngon ơi là ngon nè', 2),
(13, 'Trà sữa trân châu đường đen', 20000, 'https://static.vietnammm.com/images/restaurants/vn/NQ01R1R/products/mon-sua-tuoi-tran-chau-duong-den.png', 'Ngon ơi là ngon nè', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(20) NOT NULL,
  `matkhau` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
