-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2020 lúc 03:30 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitaplon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `t_hoadon`
--

CREATE TABLE `t_hoadon` (
  `mahoadon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sophong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giadien` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodientieuthu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gianuoc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sonuoctieuthu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tongtien` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `t_hoadon`
--

INSERT INTO `t_hoadon` (`mahoadon`, `manv`, `masv`, `sophong`, `giadien`, `sodientieuthu`, `gianuoc`, `sonuoctieuthu`, `tongtien`, `tinhtrang`) VALUES
('MHD01', 'Nv02', '1811061006', '105', '3.000 VNĐ', '50', '5.000 VNĐ', '40', '350.000 VNĐ', 'đã thanh toán'),
('MHD02', 'NV02', '1811061008', '105', '3.000 VNĐ', '50', '5.000 VNĐ', '40', '350.000 VNĐ', 'đã thanh toán'),
('MHD03', 'NV02', '1811061012', '105', '3.000 VNĐ', '50', '5.000 VNĐ', '40', '350.000 VNĐ', 'đã thanh toán'),
('MHD04', 'NV02', '1811051004', '103', '3.000 VNĐ', '50', '5.000 VNĐ', '50', '400.000 VNĐ', 'đã thanh toán'),
('MHD05', 'NV02', '1811061007', '201', '3.000 VNĐ', '50', '5.000 VNĐ', '30', '300.000 VNĐ', 'đã thanh toán'),
('MHD06', 'NV02', '1811061005', '103', '3.000 VNĐ', '50', '5.000 VNĐ', '50', '400.000 VNĐ', 'đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `t_hopdong`
--

CREATE TABLE `t_hopdong` (
  `mahopdong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sophong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaybatdau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayketthuc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `t_hopdong`
--

INSERT INTO `t_hopdong` (`mahopdong`, `masv`, `manv`, `sophong`, `ngaybatdau`, `ngayketthuc`) VALUES
('HD1', '1811061006', 'NV03', '105', '15/2/2020', '15/2/2022'),
('HD2', '1811051004', 'NV03', '103', '15/2/2020', '15/2/2022'),
('HD3', '1811061008', 'NV03', '105', '15/2/2020', '15/2/2022'),
('HD4', '1811061012', 'NV03', '105', '15/2/2020', '15/2/2022'),
('HD5', '1811061007', 'NV03', '201', '15/2/2020', '15/2/2022'),
('HD6', '1811061005', 'NV03', '103', '15/2/2020', '15/2/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `t_nhanvien`
--

CREATE TABLE `t_nhanvien` (
  `manv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namsinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `t_nhanvien`
--

INSERT INTO `t_nhanvien` (`manv`, `hoten`, `namsinh`, `gioitinh`, `diachi`, `chucvu`, `dienthoai`) VALUES
('NV01', 'Nguyễn Văn Bình', '05/04/1981', 'nam', 'Hà Nội', 'Bảo Vệ', '0971467795'),
('NV02', 'Nguyễn Thị Thúy', '20/05/1988', 'nu', 'Hoài Đức Hà Nội', 'Thu Ngân', '0351648751'),
('NV03', 'Nguyễn Thu Thủy', '28/3/1985', 'nu', 'Hà Nội', 'Quản Lý', '0971467536');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `t_phong`
--

CREATE TABLE `t_phong` (
  `sophong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slsv` int(50) NOT NULL,
  `loaiphong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giaphong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrangphong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `csvc` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `t_phong`
--

INSERT INTO `t_phong` (`sophong`, `slsv`, `loaiphong`, `giaphong`, `tinhtrangphong`, `csvc`) VALUES
('101', 8, 'nam', '1.000.000vnđ', 'còn trống', 'đầy đủ'),
('102', 8, 'nam', '1.000.000vnđ', 'còn trống', '																																																Đầy đủ																																																		'),
('103', 8, 'nam', '1.000.000vnđ', '2/8', '																																																Đầy đủ																																																		'),
('104', 8, 'nam', '1.000.000vnđ', 'còn trống', '																														Đầy đủ																																			'),
('105', 8, 'nam', '1.000.000vnđ', '3/8', '												Đầy đủ															'),
('201', 8, 'nu', '1.000.000vnđ', '1/8', '												thiếu bàn										'),
('202', 8, 'nu', '1.000.000vnđ', 'còn trống', '												hỏng đèn										'),
('203', 8, 'nu', '1.000.000vnđ', 'còn trống', '																		Đầy đủ															'),
('204', 8, 'nu', '1.000.000vnđ', 'còn trống', '												Đầy đủ										'),
('205', 8, 'nu', '1.000.000vnđ', 'còn trống', '												Đầy đủ										'),
('301', 8, 'nam', '1.000.000vnđ', 'còn trống', '												Đầy đủ										'),
('302', 8, 'nam', '1.000.000vnđ', 'còn trống', '						Đầy đủ					'),
('303', 8, 'nam', '1.000.000vnđ', 'còn trống', '						Đầy đủ																'),
('304', 8, 'nam', '1.000.000vnđ', 'còn trống', '								Đầy đủ														'),
('305', 8, 'nam', '1.000.000vnđ', 'còn trống', '								Đầy đủ														'),
('401', 8, 'nu', '1.000.000vnđ', 'còn trống', '									Đầy đủ													'),
('402', 8, 'nu', '1.000.000vnđ', 'còn trống', '								Đầy đủ														'),
('403', 8, 'nu', '1.000.000vnđ', 'còn trống', '										Đầy đủ																'),
('404', 8, 'nu', '1.000.000vnđ', 'còn trống', '										Đầy đủ																'),
('405', 8, 'nu', '1.000.000vnđ', 'còn trống', 'Đầy đủ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `t_sinhvien`
--

CREATE TABLE `t_sinhvien` (
  `masv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namsinh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lop` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khoa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phong` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `t_sinhvien`
--

INSERT INTO `t_sinhvien` (`masv`, `hoten`, `namsinh`, `gioitinh`, `dienthoai`, `diachi`, `lop`, `khoa`, `phong`) VALUES
('1811051004', 'Ngô Bá Khá', '19/04/2000', 'nam', '0348795468', 'Ba Vì Hà Nội', 'QL8C3', 'Quản Lý Đất Đai', '103'),
('1811061005', 'Nguyễn Đức Mạnh', '06/04/2000', 'nam', '0376012085', 'Hà Nội', 'DH8C4', 'CNTT', '103'),
('1811061006', 'Nguyễn Việt Hà', '05/05/2000', 'nam', '0376012000', '																														Vạn phúc hà nội																									', 'DH8C7', 'CNTT', '105'),
('1811061007', 'Đỗ Thị Thanh', '05/06/2000', 'nu', '0376012003', 'Hà Nội', 'QL8C3', 'Quản Lý Đất Đai', '201'),
('1811061008', 'Đỗ Tuấn Dũng', '02/06/1999', 'nam', '0971467790', '												Vạn phúc Hà Đông Hà Nội										', 'DH8C7', 'CNTT', '105'),
('1811061012', 'Đỗ Văn Đạt', '05/06/2000', 'nam', '0376012001', 'Hoài Đức Hà Nội										', 'DH8C7', 'CNTT', '105');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `t_hoadon`
--
ALTER TABLE `t_hoadon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `manhanvien` (`manv`,`sophong`),
  ADD KEY `sophong` (`sophong`),
  ADD KEY `masv` (`masv`);

--
-- Chỉ mục cho bảng `t_hopdong`
--
ALTER TABLE `t_hopdong`
  ADD PRIMARY KEY (`mahopdong`),
  ADD KEY `masinhvien` (`masv`,`manv`,`sophong`),
  ADD KEY `sophong` (`sophong`),
  ADD KEY `manv` (`manv`);

--
-- Chỉ mục cho bảng `t_nhanvien`
--
ALTER TABLE `t_nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `t_phong`
--
ALTER TABLE `t_phong`
  ADD PRIMARY KEY (`sophong`) USING BTREE;

--
-- Chỉ mục cho bảng `t_sinhvien`
--
ALTER TABLE `t_sinhvien`
  ADD PRIMARY KEY (`masv`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `t_hoadon`
--
ALTER TABLE `t_hoadon`
  ADD CONSTRAINT `t_hoadon_ibfk_1` FOREIGN KEY (`sophong`) REFERENCES `t_phong` (`sophong`),
  ADD CONSTRAINT `t_hoadon_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `t_nhanvien` (`manv`),
  ADD CONSTRAINT `t_hoadon_ibfk_3` FOREIGN KEY (`masv`) REFERENCES `t_sinhvien` (`masv`);

--
-- Các ràng buộc cho bảng `t_hopdong`
--
ALTER TABLE `t_hopdong`
  ADD CONSTRAINT `t_hopdong_ibfk_3` FOREIGN KEY (`sophong`) REFERENCES `t_phong` (`sophong`),
  ADD CONSTRAINT `t_hopdong_ibfk_4` FOREIGN KEY (`masv`) REFERENCES `t_sinhvien` (`masv`),
  ADD CONSTRAINT `t_hopdong_ibfk_5` FOREIGN KEY (`manv`) REFERENCES `t_nhanvien` (`manv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
