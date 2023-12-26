-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2023 lúc 01:41 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dataonline2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sodienthoai` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `tongtien` decimal(10,0) DEFAULT NULL,
  `trangthai` int(2) NOT NULL DEFAULT 0,
  `ngaydat` date NOT NULL DEFAULT current_timestamp(),
  `momo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id` int(11) NOT NULL,
  `url` varchar(250) NOT NULL,
  `thongtin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id`, `url`, `thongtin`) VALUES
(1, 'https://static.kfcvietnam.com.vn/images/content/home/carousel/lg/GiangSinh.webp?v=gz2EQg', 'GIảm giá tháng'),
(2, 'https://static.kfcvietnam.com.vn/images/content/home/carousel/lg/GaQueKem.webp?v=gz2EQg', 'Giảm giá kfc'),
(3, 'https://static.kfcvietnam.com.vn/images/content/home/carousel/lg/GiangSinh.webp?v=gz2EQg', 'GIảm giá tháng'),
(4, 'https://static.kfcvietnam.com.vn/images/content/home/carousel/lg/GaQueKem.webp?v=gz2EQg', 'Giảm giá kfc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Trang chính', 'https://th.bing.com/th/id/R.081d0874590c8e5a6d916b6793338118?rik=VmLAFwopoAdGGg&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2013%2f03%2fhome-symbol-icon_328834.jpg&ehk=l5gVaCB32s4fh1%2fprCXy%2f9oht5Et3NmL6yAdhuxJ9j8%3d&risl=&pid=ImgRaw&r=0'),
(2, 'Món ăn', 'https://banner2.cleanpng.com/20180127/bdq/kisspng-fried-chicken-buffalo-wing-french-fries-food-cartoon-hand-painted-fried-chicken-wings-5a6cbee82892a6.0732006915170762001662.jpg'),
(3, 'Nước ngọt', 'https://png.pngtree.com/png-clipart/20200701/original/pngtree-softdrink-illustration-in-icon-drawn-style-png-image_5385556.jpg'),
(4, 'Đơn hàng', 'https://th.bing.com/th/id/OIP.6XBvyykZoIIPPS98ASkCfQHaHk?rs=1&pid=ImgDetMain');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(11) NOT NULL,
  `tensp` varchar(255) DEFAULT NULL,
  `giasp` decimal(10,0) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `loai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES
(1, 'Combo nhóm 1 ', 172000, 'https://static.kfcvietnam.com.vn/images/items/lg/D6.jpg?v=gz2EQg', '3 Miếng Gà + 1 Burger Zinger/Burger Tôm/Burger Phi-lê Gà Quay + 2 Lon Pepsi', '1'),
(4, '2 miếng gà rán', 70000, 'https://static.kfcvietnam.com.vn/images/items/lg/2-Fried-Chicken.jpg?v=gz2EQg', '2 Miếng Gà Giòn Cay/Gà Truyền Thống/Gà Giòn Không Cay', '1'),
(5, 'Pepsi Lon', 15000, 'https://static.kfcvietnam.com.vn/images/items/lg/Pepsi-Can.jpg?v=gz2EQg', 'Pepsi Lon', '2'),
(6, '7UP LON', 15000, 'https://static.kfcvietnam.com.vn/images/items/lg/7Up-Can.jpg?v=gz2EQg', '7up Lon', '2'),
(7, 'Milo Hộp', 20000, 'https://static.kfcvietnam.com.vn/images/items/lg/milo-box-hd.jpg?v=gz2EQg', 'Milo Hộp', '2'),
(8, 'AQUAFINA 500ML', 15000, 'https://static.kfcvietnam.com.vn/images/items/lg/Aquafina-500ml.jpg?v=gz2EQg', 'Aquafina 500ml', '2'),
(9, 'Trà Đào', 20000, 'https://static.kfcvietnam.com.vn/images/items/lg/Peach-Tea.jpg?v=gz2EQg', 'Trà đào tươi mát', '2'),
(10, 'TRÀ CHANH LIPTON (LỚN)', 20000, 'https://static.kfcvietnam.com.vn/images/items/lg/Lipton.jpg?v=gz2EQg', 'Trà chanh LipTon ', '2'),
(12, '1 miếng gà rán', 35000, 'https://static.kfcvietnam.com.vn/images/items/lg/1-Fried-Chicken.jpg?v=gz2EQg', '1 Miếng Gà Giòn Cay/Gà Truyền Thống/Gà Giòn Không Cay', '1'),
(13, 'COMBO SALAD HẠT', 19000, 'https://static.kfcvietnam.com.vn/images/items/lg/D4-new.jpg?v=4PRQ73', '1 Miếng Gà + 1 Salad Hạt + 1 Lon Pepsi', '1'),
(14, 'Burger Gà Quay FLAVA', 54000, 'https://static.kfcvietnam.com.vn/images/items/lg/Burger-Flava.jpg?v=gz2EQg', '1 Burger Gà Quay Flava', '1'),
(15, 'Burger ZINGER', 54000, 'https://static.kfcvietnam.com.vn/images/items/lg/Burger-Zinger.jpg?v=gz2EQg', '1 Burger Zinger', '1'),
(16, '3 miếng gà Nuggets', 27000, 'https://static.kfcvietnam.com.vn/images/items/lg/3_Nuggests.jpg?v=gz2EQg', '3 Gà Miếng Nuggets', '1'),
(17, '1 miếng gà phi-lê quay', 38000, 'https://static.kfcvietnam.com.vn/images/items/lg/MOD-PHI-LE-GA-QUAY.jpg?v=gz2EQg', '1 Miếng Phi-lê Gà Quay Flava/Phi-lê Gà Quay Tiêu', '1'),
(18, '1 miếng đùi gà quay', 74000, 'https://static.kfcvietnam.com.vn/images/items/lg/BJ.jpg?v=gz2EQg', '1 Miếng Đùi Gà Quay Giấy Bạc/Đùi Gà Quay Tiêu', '1'),
(19, '3 Cánh Gà Hot Wings', 54000, 'https://static.kfcvietnam.com.vn/images/items/lg/3-HW.jpg?v=gz2EQg', '3 Cánh Gà Hot Wings', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `uid` text NOT NULL,
  `token` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `pass`, `username`, `phone`, `uid`, `token`, `status`) VALUES
(1, 'quang0944085827@gmail.com', 'onfirebase', 'Quang', '0944085827', 'KYyPFKicOQa8krpeyQUFfS2KjRt1', 'ccU5ROb9TnmrZvU8wSiPwW:APA91bHjtEmT9jacJczfKFfqgyx8VQtRMu1UC_ihyzaD1P-1HKNyBdnlfiYHV5UBcvHI30c6_ctLNDZspVDonUy1PnVUCcOcLvU0S6gYups7fjjd3_aF0HGrSr_GduaVCXK_kIwBP45n', 1),
(2, 'quang01@gmail.com', 'onfirebase', 'quang1', '123456789', 'jQ5PopBSTKbPsXtQJLgQPyUPAzA2', 'cqODrG2ETK2U-vABXA1B9-:APA91bGry6nsZwaX6jQe9vr6c2mahKnK0JAUskY3zCn4kAktmsYCB2VqhEzm3aWs1kBSouNDxsSs0BBxr-nQP4hd9AryvqHS_Xe1Z2NsdskQ2w7kBNYOXCV7SqSvTvHhTeNBU44D59aj', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
