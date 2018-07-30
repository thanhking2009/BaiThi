-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 19, 2018 lúc 05:52 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ngonngon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` int(20) NOT NULL,
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `idsp`, `tensp`, `soluong`, `gia`, `phuongthucthanhtoan`, `id_hdct`) VALUES
(1, 16, 'NUI XÃ€O THáº¬P Cáº¨M', 1, 42000, 0, 1),
(2, 2, 'CÆ M CHIÃŠN CÃ Máº¶N', 1, 42000, 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`) VALUES
(1, 'CÆ¡m'),
(2, 'Canh'),
(3, 'MÃ³n xÃ o'),
(4, 'Salad'),
(5, 'ChÃ¡o'),
(6, 'NÆ°á»›c giáº£i khÃ¡t'),
(7, 'Ä‚n váº·t');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`, `trangthai`) VALUES
(1, 7, 'thanhking2009', 'aaa', 1268500616, 'thanh146@gmail.com', '2018-07-19', 1),
(2, 7, 'thanhking2009', 'aaa', 1268500616, 'thanh146@gmail.com', '2018-07-19', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(7, 'thanhking2009', 'thanhking2009', '21d27fcf3a0e5e463e01def328fc8d73', '0000-00-00', 'nam', 'thanh146@gmail.com', 1268500616, 'aaa', '2018-07-06', 0),
(8, 'nhÆ° nhÆ°', 'nhukhung', 'e10adc3949ba59abbe56e057f20f883e', '1996-04-20', 'nu', 'n@gmail.com', 1268500616, 'ninh quÃ¨', '2018-07-18', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `chitiet` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` float NOT NULL,
  `madm` int(11) NOT NULL,
  `tinhtrang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `chitiet`, `soluong`, `daban`, `gia`, `madm`, `tinhtrang`) VALUES
(2, 'CÆ M CHIÃŠN CÃ Máº¶N', 'com-chien-ca-man.jpg', '<p>Má»–I Láº¦N Ä‚N Uá»NG Vá»šI Báº N B&Egrave;, KH&Ocirc;NG KH&Oacute; Äá»‚ Báº N NHáº¬N THáº¤Y M&Oacute;N CÆ M CHI&Ecirc;N C&Aacute; Máº¶N L&Agrave; M&Oacute;N HAY ÄÆ¯á»¢C ORDER NHáº¤T, V&Agrave; CHáº®C Háº²N Báº N CÅ¨NG Ä&Atilde; TRá»ž TH&Agrave;NH Má»˜T FAN Vá»šI M&Oacute;N Ä‚N Äáº¶C BIá»†T N&Agrave;Y L&Uacute;C N&Agrave;O KH&Ocirc;NG HAY.</p>\r\n\r\n<p>CÆ M ÄÆ¯á»¢C CHI&Ecirc;N V&Agrave;NG GI&Ograve;N NHÆ¯NG VáºªN GIá»®A ÄÆ¯á»¢C Äá»˜ DáººO Má»€M C&Ugrave;NG HÆ¯Æ NG Vá»Š MIá»€N T&Acirc;Y QUYáº¾N RÅ¨. M&Oacute;N Ä‚N CÆ M CHI&Ecirc;N C&Aacute; Máº¶N N&Agrave;Y Ráº¤T Dá»„ Ä‚N, Há»¨A Háº¸N Sáº¼ ÄEM Äáº¾N CHO Báº N Má»˜T Sá»° TH&Iacute;CH TH&Uacute; V&Agrave; Má»˜T Ä&Ecirc;M TR&Agrave;N Äáº¦Y NÄ‚NG LÆ¯á»¢NG. Äáº¶C BIá»†T NHá»®NG M&Oacute;N Ä‚N Ä&Ecirc;M GIAO Táº¬N NÆ I ÄÆ¯á»¢C Báº¢O QUáº¢N Ráº¤T Ká»¸ TRONG KH&Acirc;U Váº¬N CHUYá»‚N, Äáº¢M Báº¢O Äá»’ Ä‚N VáºªN C&Ograve;N N&Oacute;NG Há»”I KHI Äáº¾N TAY KH&Aacute;CH H&Agrave;NG.</p>\r\n\r\n<p>Ä‚N K&Egrave;M Vá»šI NÆ¯á»šC TÆ¯Æ NG V&Agrave; V&Agrave;I L&Aacute;T á»šT TH&Aacute;I Má»ŽNG TH&Igrave; THIá»†T L&Agrave; TUYá»†T C&Uacute; M&Egrave;O.</p>\r\n', 10, 5, 42000, 1, '1'),
(3, 'CÆ M CHIÃŠN THáº¬P Cáº¨M', 'com_chien_thap_cam.jpg', '<p>Há»˜P CÆ M CHI&Ecirc;N THáº¬P Cáº¨M N&Oacute;NG Há»”I NHá»œ GIáº¤Y Báº C GIá»® NHIá»†T áº¨M THá»°C Vá»šI NHá»®NG Háº T CÆ M Má»€M, THÆ M CHáº®C CHáº®N Sáº¼ L&Agrave; Má»˜T Lá»°A CHá»ŒN TUYá»†T Vá»œI CHO&nbsp;<strong>Bá»®A Ä‚N</strong>&nbsp;Cá»¦A Báº N V&Agrave; GIA Ä&Igrave;NH. M&Oacute;N CÆ M ÄÆ¯á»¢C CHáº¾ BIáº¾N Tá»ª NHIá»€U TH&Agrave;NH PHáº¦N ÄEM Láº I CHO Báº N M&Oacute;N CÆ M CHI&Ecirc;N V&Agrave;N Æ¯Æ M, Äáº¸P Máº®T V&Agrave; KH&Ocirc;NG Bá»Š NG&Aacute;N KHI Ä‚N.</p>\r\n\r\n<p>NHá»®NG Báº N TRáºº V&Agrave; Ká»‚ Cáº¢ GIA Ä&Igrave;NH Äáº¶C BIá»†T TH&Iacute;CH M&Oacute;N CÆ M N&Agrave;Y V&Igrave; Vá»Š B&Eacute;O NGáº¬Y Äáº¾N Äáº¬M Ä&Agrave;. CÆ M CHI&Ecirc;N Tá»ª L&Acirc;U Ä&Atilde; TRá»ž TH&Agrave;NH M&Oacute;N Ä‚N Y&Ecirc;U TH&Iacute;CH Äá»I Vá»šI NGÆ¯á»œI VIá»†T NAM Bá»žI T&Iacute;NH TIá»†N Dá»¤NG Cá»¦A N&Oacute;, Äáº¶C BIá»†T D&Agrave;NH CHO NHá»®NG NGÆ¯á»œI Báº¬N Rá»˜N.</p>\r\n\r\n<p>M&Oacute;N CÆ M CHI&Ecirc;N N&Oacute;NG Há»”I Cá»°C Háº¤P DáºªN N&Agrave;Y Sáº¼ L&Agrave; Má»˜T Bá»®A Ä‚N HO&Agrave;N Háº¢O V&Agrave; Äáº¦Y Äá»¦ CHáº¤T DINH DÆ¯á» NG. M&Oacute;N CÆ M CHI&Ecirc;N THáº¬P Cáº¨M N&Agrave;Y Sáº¼ NGON HÆ N KHI Báº N Ä‚N C&Ugrave;NG TÆ¯Æ NG á»šT, NÆ¯á»šC TÆ¯Æ NG. Táº I ANNGON&nbsp;Sáº¼ K&Egrave;M CHO Báº N Má»˜T Bá»ŠCH RAU DÆ¯A V&Agrave; X&Aacute;C L&Aacute;CH, á»šT TR&Aacute;I GI&Uacute;P Báº N Ä‚N NGON HÆ N. H&Atilde;Y Cáº¦M ÄIá»†N THOáº I L&Ecirc;N V&Agrave; Äáº¶T CHO M&Igrave;NH NHá»®NG M&Oacute;N Ä‚N THáº¬T NGON. CH&Uacute;C C&Aacute;C Báº N NGON MIá»†NG.</p>\r\n', 10, 1, 42000, 1, '1'),
(4, 'CÆ M TRá»˜N', 'dd.jpg', '', 10, 4, 50000, 1, '1'),
(5, 'CANH Cáº¢I THá»ŠT Báº°M', 'canh4_large.jpg', '<p>TRONG NHá»®NG NG&Agrave;Y Ä&Ocirc;NG Láº NH GI&Aacute; ÄÆ¯á»¢C Ä‚N Má»˜T CH&Eacute;N CANH Cáº¢I TH&Igrave;A Náº¤U C&Ugrave;NG THá»ŠT Báº°M NGá»ŒT M&Aacute;T Sáº¼ GI&Uacute;P CÆ  THá»‚ áº¤M L&Ecirc;N V&Agrave; XUA TAN C&Aacute;I GI&Aacute; Láº NH. H&Ocirc;M NAY GIá»šI THIá»†U Äáº¾N C&Aacute;C Báº N Má»˜T M&Oacute;N CANH THÆ M NGON V&Agrave; Bá»” DÆ¯á» NG, Má»˜T M&Oacute;N Ä‚N Vá»ªA CUNG Cáº¤P NHIá»€U VITAMIN, CHáº¤T XÆ  CHO CÆ  THá»‚ Láº I Vá»ªA C&Oacute; CHáº¤T Äáº M Tá»ª THá»ŠT Báº°M.</p>\r\n\r\n<h2>CANH Cáº¢I TH&Igrave;A THá»ŠT Báº°M</h2>\r\n\r\n<p>&ndash; THá»ŠT HEO Báº°M<br />\r\n&ndash; RAU Cáº¢I TH&Igrave;A<br />\r\n&ndash; GIA Vá»Š: Dáº¦U Ä‚N, TI&Ecirc;U, MUá»I, ÄÆ¯á»œNG.</p>\r\n\r\n<p>ÄIá»€U Táº O N&Ecirc;N Sá»° Háº¤P DáºªN Cá»¦A M&Oacute;N Ä‚N L&Agrave; KHI QU&Yacute; KH&Aacute;CH H&Agrave;NG Äáº¶T M&Oacute;N, C&Aacute;C Äáº¦U Báº¾P Cá»¦A ANNGON&nbsp;Má»šI Báº®T Äáº¦U CHáº¾ BIáº¾N, N&Ecirc;N M&Oacute;N Ä‚N ÄÆ¯á»¢C Äáº¢M Báº¢O Äá»˜ NGON, N&Oacute;NG CÅ¨NG NHÆ¯ Äá»˜ TÆ¯Æ I Cá»¦A RAU. TRONG Cáº¢I TH&Igrave;A C&Oacute; NHIá»€U VITAMIN A, B, C, D V&Agrave; K, CHáº¤T CAROTEN CHá»¨A TRONG RAU Cáº¢I XANH G&Uacute;P NGÄ‚N NGá»ªA Bá»†NH Táº¬T. KH&Ocirc;NG CHá»ˆ CUNG Cáº¤P C&Aacute;C DÆ¯á» NG CHáº¤T Cáº¦N THIáº¾T CHO CÆ  THá»‚, M&Oacute;N Ä‚N N&Agrave;Y ÄÆ¯á»¢C Ä&Aacute;NH GI&Aacute; KH&Aacute; Tá»T CHO Há»† TI&Ecirc;U H&Oacute;A V&Agrave; NHá»®NG Ä&Ecirc;M KHUYA.</p>\r\n', 10, 0, 42000, 2, '1'),
(6, 'CANH RONG BIá»‚N Háº¢I Sáº¢N', 'canh_rong_bien_hai_san_large.jpg', '<p>CANH RONG BIá»‚N Háº¢I Sáº¢N L&Agrave; Má»˜T M&Oacute;N Ä‚N Bá»” DÆ¯á» NG, THANH Äáº M C&Oacute; Vá»Š NGá»ŒT Tá»° NHI&Ecirc;N MANG HÆ¯Æ NG Vá»Š BIá»‚N Sáº¼ KHIáº¾N Bá»®A Ä‚N Ä&Ecirc;M Cá»¦A GIA Ä&Igrave;NH Báº N TH&Ecirc;M PHáº¦N Háº¤P DáºªN V&Agrave; THÆ M NGON. C&Ograve;N G&Igrave; Báº°NG KHI Má»–I Ä&Ecirc;M Vá»€ Bá»¤NG R&Eacute;O Cá»’N C&Agrave;O Báº N Láº I ÄÆ¯á»¢C THÆ¯á»žNG THá»¨C NHá»®NG M&Oacute;N Ä‚N Ä&Ecirc;M SHIP Táº¬N NÆ I Háº¤P DáºªN. M&Oacute;N CANH N&Agrave;Y Sáº¼ Ráº¤T TH&Iacute;CH Há»¢P Vá»šI Báº N N&Agrave;O Gá»ŒI C&Aacute;C M&Oacute;N CÆ M CHI&Ecirc;N HAY CÆ M TRáº®NG.</p>\r\n\r\n<p>Vá»šI M&Oacute;N CANH RONG BIá»‚N Náº¤U C&Ugrave;NG Háº¢I Sáº¢N Sáº¼ CUNG Cáº¤P TH&Ecirc;M CHO CÆ  THá»‚ Báº N NHIá»€U CHáº¤T Sáº®T, CANXI V&Agrave; VITAMIN GI&Uacute;P CHO CÆ  THá»‚ KHá»ŽE Máº NH, TÄ‚NG CÆ¯á»œNG Há»† MIá»„N Dá»ŠCH GI&Uacute;P PH&Ograve;NG CHá»NG ÄÆ¯á»¢C C&Aacute;C LOáº I Bá»†NH Táº¬T. Äáº¶C BIá»†T Cáº¢M GI&Aacute;C Ä&Oacute;I V&Agrave;O NHá»®NG Ä&Ecirc;M KHUYA Sáº¼ KHIáº¾N Báº N Ráº¤T KH&Oacute; Táº¬P TRUNG V&Agrave;O C&Ocirc;NG VIá»†C.</p>\r\n\r\n<p>RONG BIá»‚N NG&Agrave;Y NAY ÄÆ¯á»¢C KH&Aacute; NHIá»€U NGÆ¯á»œI TIN D&Ugrave;NG,&nbsp;KH&Ocirc;NG CHá»ˆ á»ž VIá»†T NAM M&Agrave; RONG BIá»‚N C&Ograve;N PHá»” BIáº¾N V&Agrave; Rá»˜NG R&Atilde;I á»ž KH&Aacute; NHIá»€U NÆ¯á»šC TR&Ecirc;N THáº¾ GIá»šI. Ä&Acirc;Y KH&Ocirc;NG ÄÆ N THUáº¦N CHá»ˆ L&Agrave; Má»˜T M&Oacute;N Ä‚N NGON Bá»” DÆ¯á» NG M&Agrave; C&Oacute; C&Ograve;N CUNG Cáº¤P C&Aacute;C DÆ¯á» NG CHáº¤T C&Oacute; Lá»¢I CHO Sá»¨C KHá»ŽE. THEO NGHI&Ecirc;N Cá»¨U Tá»ª C&Aacute;C NH&Agrave; KHOA Há»ŒC, Ä‚N CANH RONG BIá»‚N C&Oacute; THá»‚ NGÄ‚N NGá»ªA ÄÆ¯á»¢C Bá»†NH UNG THÆ¯ DO CHáº¤T LIGNANS TRONG CANH C&Oacute; KHáº¢ NÄ‚NG G&Acirc;Y á»¨C CHáº¾ V&Agrave; H&Igrave;NH TH&Agrave;NH C&Aacute;C KHá»I U, Táº¾ B&Agrave;O G&Acirc;Y UNG THÆ¯. Äáº¶C BIá»†T Ä‚N LOáº I CANH N&Agrave;Y V&Agrave;O BAN Ä&Ecirc;M Sáº¼ GI&Uacute;P CHO Há»† TI&Ecirc;U H&Oacute;A Cá»¦A Báº N ÄÆ¯á»¢C Tá»T HÆ N. C&Aacute;C NH&Agrave; NGHI&Ecirc;N Cá»¨U Táº I Äáº I Há»ŒC NEWCASTLE Ä&Atilde; PH&Aacute;T HIá»†N RA Má»˜T CHáº¤T TRONG RONG BIá»‚N C&Oacute; THá»‚ TÄ‚NG CÆ¯á»œNG CHáº¤T NHáº¦Y TRONG RUá»˜T.</p>\r\n', 10, 0, 42000, 2, '1'),
(7, 'CANH CHUA Háº¢I Sáº¢N', 'canh_chua_hai_san_large.jpg', '<p>CANH CHUA NGON NGON Vá»šI NÆ¯á»šC D&Ugrave;NG TRONG Váº®T, Vá»Š CHUA CHUA THANH THANH Sáº¼ GI&Uacute;P CÆ  THá»‚ GIáº¢I NHIá»†T HIá»†U QUáº¢ CHO NHá»®NG NG&Agrave;Y H&Egrave; N&Oacute;NG Bá»¨C. M&Oacute;N Ä‚N Vá»šI C&Aacute;C NGUY&Ecirc;N LIá»†U L&Agrave; T&Ocirc;M V&Agrave; Má»°C Ráº¤T TH&Ocirc;NG Dá»¤NG V&Agrave; Dá»„ Ä‚N Vá»šI Má»ŒI NGÆ¯á»œI. H&Atilde;Y C&Ugrave;NG THÆ¯á»žNG THá»¨C M&Oacute;N CANH CHUA N&Oacute;NG Há»”I Vá»ªA THá»”I Vá»ªA Ä‚N C&Ugrave;NG C&Aacute;C M&Oacute;N CÆ M GIAO Táº¬N NÆ I.</p>\r\n\r\n<h2>CANH CHUA Háº¢I Sáº¢N</h2>\r\n\r\n<p>Ä&Acirc;Y L&Agrave; Má»˜T M&Oacute;N CANH QUEN THUá»˜C V&Agrave; ÄÆ¯á»¢C L&Ograve;NG KH&Aacute; NHIá»€U NGÆ¯á»œI Táº I C&Aacute;C V&Ugrave;NG MIá»€N KH&Aacute;C NHAU, N&Oacute; L&Agrave;M CHO Bá»®A CÆ M Cá»¦A GIA Ä&Igrave;NH Báº N TH&Ecirc;M &nbsp;PHáº¦N áº¤M C&Uacute;NG V&Agrave; NGON MIá»†NG. M&Oacute;N CANH CHUA Háº¢I Sáº¢N Háº¦U NHÆ¯ á»ž Má»–I NÆ I Äá»€U C&Oacute; C&Aacute;CH CHáº¾ BIáº¾N KH&Aacute;C NHAU, NGUY&Ecirc;N LIá»†U Táº O N&Ecirc;N M&Oacute;N Ä‚N CÅ¨NG KH&Aacute;C NHAU, NHÆ¯NG C&Aacute;I Vá»Š CHUNG M&Agrave; M&Oacute;N Ä‚N N&Agrave;Y ÄEM Láº I L&Agrave; Vá»Š CHUA CHUA NGá»ŒT NGá»ŒT L&Agrave;M L&Ocirc;I CUá»N NGÆ¯á»œI THÆ¯á»žNG THá»¨C. D&Ugrave; NG&Agrave;Y Láº NH HAY NG&Agrave;Y N&Oacute;NG Báº N CÅ¨NG C&Oacute; THá»‚ THÆ¯á»žNG THá»¨C M&Oacute;N Ä‚N N&Agrave;Y.</p>\r\n', 10, 0, 50000, 2, '1'),
(8, 'CHÃO BÃ’ Báº°M', 'chao_bo_duong_large.jpg', '<p><strong>CH&Aacute;O B&Ograve; Báº°M</strong>&nbsp;L&Agrave; M&Oacute;N Ä‚N Æ¯A TH&Iacute;CH Cá»¦A NGÆ¯á»œI Bá»Š á»M HOáº¶C TRáºº NHá»Ž, V&Agrave;O NHá»®NG GIáº¤C Ná»¬A Ä&Ecirc;M, C&Oacute; Má»˜T T&Ocirc; CH&Aacute;O N&Oacute;NG Há»”I QUYá»†N Vá»šI THá»ŠT B&Ograve; Má»€M V&Agrave; H&Agrave;NH L&Aacute; NHUYá»„N Äá»‚ L&Oacute;T Dáº  TH&Igrave; C&Ograve;N G&Igrave; Báº°NG? Äáº¾N Vá»šI&nbsp;<strong>ANNGON</strong>, Báº N CHáº²NG Cáº¦N PHáº¢I V&Agrave;O Báº¾P HAY ÄI Ä&Acirc;U XA M&Agrave; VáºªN C&Oacute; NGAY Má»˜T PHáº¦N CH&Aacute;O THá»ŠT B&Ograve; CHáº¤T Lá»ª, ÄÆ¯á»¢C GIAO Äáº¾N CHá»ˆ SAU 30-40 PH&Uacute;T Äáº¶T H&Agrave;NG. Äáº¶C BIá»†T NHá»œ V&Agrave;O C&Aacute;CH GIá»® NHIá»†T M&Oacute;N Ä‚N Äáº¶C BIá»†T CH&Aacute;O VáºªN C&Ograve;N N&Oacute;NG áº¤M, C&Oacute; THá»‚ D&Ugrave;NG NGAY KHI Vá»ªA Tá»šI M&Agrave; KH&Ocirc;NG Cáº¦N H&Acirc;M Láº I.</p>\r\n', 10, 0, 42000, 5, '1'),
(9, 'CHÃO GÃ€ ', 'chao-ga-dat-mon-online_large.jpg', '<p>CH&Aacute;O G&Agrave; L&Agrave; M&Oacute;N Ä‚N&nbsp;QUEN THUá»˜C, Bá»” DÆ¯á» NG V&Agrave; THÆ M NGON, NHáº¤T L&Agrave; V&Agrave;O NHá»®NG Ä&Ecirc;M TRá»œI SE Láº NH.&nbsp;V&Agrave;O NHá»®NG Ä&Ecirc;M THá»¨C KHUYA L&Agrave;M VIá»†C ÄÆ¯á»¢C THÆ¯á»žNG THá»¨C Má»˜T M&Oacute;N CH&Agrave;O G&Agrave; NGON, THÆ M Tá»ª Gáº O, NGá»ŒT Tá»ª THá»ŠT G&Agrave; THáº¬T Háº¤P DáºªN.</p>\r\n', 10, 0, 45000, 5, '1'),
(10, 'CHÃO Náº¤M', 'chao-nam.jpg', '<p>TRONG C&Aacute;C LOáº I CH&Aacute;O, CH&Aacute;O Náº¤M L&Agrave; Sá»° Lá»°A CHá»ŒN V&Ocirc; C&Ugrave;NG TINH Táº¾. Náº¤M Cáº®T Má»ŽNG, HO&Agrave; Vá»šI NHá»®NG Háº T Gáº O TAN Má»€M Táº O CHO M&Oacute;N Ä‚N C&Oacute; Vá»Š THÆ M, NGá»ŒT, Äáº¶T TRÆ¯NG. CH&Aacute;O Náº¤M &Iacute;T CHáº¤T B&Eacute;O, Háº N CHáº¾ Dáº¦U Má» , NHá»œ V&Agrave;O C&Aacute;CH Báº¢O QUáº¢N Äáº¶C BIá»†T Cá»¦A ANNGON&nbsp;M&Agrave; CH&Aacute;O VáºªN GIá»® ÄÆ¯á»¢C Äá»˜ N&Oacute;NG áº¤M KHI Äáº¾N Vá»šI TAY KH&Aacute;CH H&Agrave;NG.</p>\r\n\r\n<p>CH&Aacute;O Náº¤M &Iacute;T CHOLESTEROL, GI&Agrave;U DINH DÆ¯á» NG HÆ N Cáº¢ M&Oacute;N Ä‚N L&Agrave;M Tá»ª THá»ŠT Má»  Äá»˜NG Váº¬T M&Agrave; VáºªN Äáº¢M Báº¢O Bá»®A Ä‚N Ä&Ecirc;M CHO GIA Ä&Igrave;NH. D&Ugrave;NG NHIá»€U Náº¤M C&Oacute; THá»‚ GI&Uacute;P Báº N Háº N CHáº¾ ÄÆ¯á»¢C NHIá»€U Bá»†NH TIM Máº CH, Má»  TRONG M&Aacute;U, GIáº¢M HEN SUYá»„N V&Agrave; Háº N CHáº¾ Äá»˜T QUá»´.</p>\r\n', 10, 0, 42000, 5, '1'),
(11, 'CAFE Sá»®A ÄÃ', 'cafe-sua-da.jpg', '', 20, 0, 15000, 6, '1'),
(12, 'TRÃ€ ÄÃ€O', 'fea6ce3b0cb9404e8520a4d955f67e13.jpg', '', 10, 0, 15000, 6, '1'),
(13, 'SALAD CÃ NGá»ª', '20180707211628salad_ca_ngu.jpg', '<p>M&Oacute;N SALAD C&Aacute; NGá»ª ÄANG Dáº¦N TRá»ž N&Ecirc;N QUEN THUá»˜C Vá»šI NGÆ¯á»œI VIá»†T NAM, THÆ¯á»œNG ÄÆ¯á»¢C Sá»¬ Dá»¤NG TRONG C&Aacute;C Bá»®A Ä‚N KHAI Vá»Š. Sá»° H&Ograve;A QUYá»†N GIá»®A SALAD C&Aacute; NGá»ª V&Agrave; Sá»T MAYONNAISE Táº O N&Ecirc;N M&Oacute;N Ä‚N Äáº¬M Ä&Agrave;, THANH M&Aacute;T V&Agrave; NHáº¸ NH&Agrave;NG. NGO&Agrave;I RA SALAD C&Ograve;N CUNG Cáº¤P CHO Báº N Má»˜T LÆ¯á»¢NG CHáº¤T XÆ , VITAMIN V&Agrave; Ráº¤T NHIá»€U CHáº¤T DINH DÆ¯á» NG Tá»ª C&Aacute; NGá»ª.</p>\r\n\r\n<p>TH&Agrave;NH PHáº¦N CH&Iacute;NH:<br />\r\n+ SALAD<br />\r\n+ C&Aacute; NGá»ª<br />\r\n+ H&Agrave;NH T&Acirc;Y<br />\r\n+ S&Ocirc;T MAYONNAISE</p>\r\n\r\n<p>Náº¾U Ä‚N SALAD THÆ¯á»œNG XUY&Ecirc;N Báº N Sáº¼ NHáº¬N ÄÆ¯á»¢C Má»˜T LÆ¯á»¢NG Dá»’I D&Agrave;O C&Aacute;C VITAMIN, CHáº¤T CHá»NG OXY H&Oacute;A Há»®U &Iacute;CH CHO CÆ  THá»‚. Ráº¤T TH&Iacute;CH Há»¢P CHO NHá»®NG Báº N N&Agrave;O ÄANG Ä‚N KI&Ecirc;NG HAY GIáº¢M C&Acirc;N.</p>\r\n', 10, 0, 45000, 4, '1'),
(14, 'SALAD Dáº¦U GIáº¤M', '20180707211616salad_dau_giam_large.jpg', '<p>SALAD TRá»˜N Dáº¦U GIáº¤M L&Agrave; Má»˜T M&Oacute;N C&Oacute; XUáº¤T Xá»¨ Tá»ª PHÆ¯Æ NG T&Acirc;Y, NAY Ä&Atilde; TRá»ž N&Ecirc;N KH&Aacute; QUEN THUá»˜C Vá»šI NHIá»€U NGÆ¯á»œI VIá»†T NAM. M&Oacute;N SALAD BAO Gá»’M C&Aacute;C LOáº I RAU TÆ¯Æ I, X&Agrave; L&Aacute;CH, C&Agrave; CHUA, RAU M&Ugrave;I TRá»˜N Vá»šI Dáº¦U GIáº¤M CHUA CHUA NGá»ŒT NGá»ŒT. Tá»ªNG L&Aacute; RAU GI&Ograve;N, TÆ¯Æ I HO&Agrave; Vá»šI Vá»Š Dáº¦U GIáº¤M Táº O Sá»° THANH M&Aacute;T NHáº¸ NH&Agrave;NG CHO Bá»®A Ä‚N, Káº¾T Há»¢P Vá»šI Vá»Š CHUA Cá»¦A C&Agrave; V&Agrave; GIáº¤M GI&Uacute;P K&Iacute;CH TH&Iacute;CH Äá»˜ NGON MIá»†NG, GIáº¢M Bá»šT Cáº¢M GI&Aacute;C NGáº¤Y KHI Ä‚N NHIá»€U M&Oacute;N N&Oacute;NG.</p>\r\n\r\n<p>CHá»ˆ Cáº¦N Máº¤T 5 PH&Uacute;T CHUáº¨N Bá»Š, C&Aacute;C Äáº¦U Báº¾P &nbsp;HO&Agrave;N TO&Agrave;N C&Oacute; THá»‚ ÄEM Láº I CHO Báº N M&Oacute;N SALAD TRá»˜N NGON L&Agrave;NH, D&Ugrave;NG Äá»‚ Ä‚N K&Egrave;M Vá»šI NHIá»€U M&Oacute;N KH&Aacute;C NHÆ¯ CÆ M CHI&Ecirc;N, M&Igrave; &Yacute;, áº¾CH CHI&Ecirc;N BÆ  V.V&hellip;</p>\r\n\r\n<p>D&Ugrave;NG SALAD Ráº¤T Tá»T CHO BUá»”I Ä&Ecirc;M, NHáº¤T L&Agrave; Vá»šI C&Aacute;C CHá»Š EM PHá»¤ Ná»®. Ä&Acirc;Y L&Agrave; M&Oacute;N Ä‚N Gá»ŒN NHáº¸ &Iacute;T RÆ¯á»œM R&Agrave;, C&Oacute; THá»‚ Táº¬N Dá»¤NG Háº¾T Äá»˜ TÆ¯Æ I Cá»¦A RAU QUáº¢ V&Agrave; TUYá»†T Vá»œI HÆ N Ná»®A L&Agrave; CUNG Cáº¤P Äáº¦Y Äá»¦ VITAMIN, CHáº¤T XÆ  L&Agrave;M Äáº¸P DA, Lá»¢I CHO TI&Ecirc;U HO&Aacute;.</p>\r\n', 10, 0, 45000, 4, '1'),
(15, 'MÃŒ GÃ“I XÃ€O BÃ’', 'migoixaobo.jpg', '<p>H&Ocirc;M NAY ANNGON Sáº¼ GIá»šI THIá»†U Má»˜T M&Oacute;N Ä‚N Ráº¤T TH&Uacute; Vá»Š, Äáº¢M Báº¢O Äá»”I Vá»Š CHO Bá»®A Ä‚N Ráº¤T HAY. Ä&Oacute; L&Agrave; &ldquo;M&Igrave; G&Oacute;I X&Agrave;O THá»ŠT B&Ograve;&rdquo;. AI CÅ¨NG Tá»ªNG Má»˜T Láº¦N TRONG Äá»œI CÅ¨NG Tá»ªNG Ä‚N QUA M&Oacute;N M&Igrave; G&Oacute;I N&Agrave;Y, C&Oacute; Ráº¤T NHIá»€U C&Aacute;CH L&Agrave;M KH&Aacute;C NHAU NHÆ¯NG KHI Káº¾T Há»¢P Vá»šI THá»ŠT B&Ograve; TH&Igrave; Äáº¢M Báº¢O Sáº¼ ÄEM Äáº¾N CHO Báº N M&Oacute;N Ä‚N TUYá»†T Vá»œI.</p>\r\n\r\n<p>NGUY&Ecirc;N LIá»†U CH&Iacute;NH:<br />\r\n+ M&Igrave; G&Oacute;I<br />\r\n+ B&Ograve;<br />\r\n+ Cáº¢I TH&Igrave;A<br />\r\n+ H&Agrave;NH T&Acirc;Y<br />\r\n+ C&Agrave; Rá»T</p>\r\n\r\n<p>Báº N C&Oacute; THá»‚ Ä‚N K&Egrave;M Vá»šI NÆ¯á»šC CHáº¤M, TÆ¯Æ NG á»šT, NÆ¯á»šC TÆ¯Æ NG Sáº¼ G&Oacute;P PHáº¦N M&Oacute;N Ä‚N TH&Ecirc;M TH&Uacute; Vá»Š.</p>\r\n', 10, 2, 42000, 3, '1'),
(16, 'NUI XÃ€O THáº¬P Cáº¨M', 'nui-xao-thap-cam.jpg', '<p>Ä‚N NGON Má»–I NG&Agrave;Y GI&Uacute;P Báº N LU&Ocirc;N C&Oacute; TINH THáº¦N V&Agrave; THá»‚ TRáº NG Tá»T, Äáº¶C BIá»†T L&Agrave; NHá»®NG L&Uacute;C PHáº¢I L&Agrave;M VIá»†C HOáº¶C THá»¨C KHUYA TH&Igrave; Bá»®A Ä‚N Láº I C&Agrave;NG QUAN TRá»ŒNG GI&Uacute;P Báº N Bá»” SUNG NÄ‚NG LÆ¯á»¢NG V&Agrave; Sá»° S&Aacute;NG Táº O TRONG C&Ocirc;NG VIá»†C.</p>\r\n\r\n<p>NGUY&Ecirc;N LIá»†U CH&Iacute;NH:<br />\r\n+ NUI<br />\r\n+ B&Ograve; Xáº®T Má»ŽNG<br />\r\n+ T&Ocirc;M<br />\r\n+ Má»°C<br />\r\n+ RAU Cá»¦</p>\r\n\r\n<p>M&Oacute;N NUI X&Agrave;O THáº¬P Cáº¨M L&Agrave; Sá»° Lá»°A CHá»ŒN PH&Ugrave; Há»¢P NHáº¤T CHO Báº N TRONG TRÆ¯á»œNG Há»¢P N&Agrave;Y, NHá»®NG MIáº¾NG NUI Vá»ªA Má»€M Vá»ªA DAI QUYá»†N Vá»šI á»šT NGá»ŒT, Náº¤M HÆ¯Æ NG C&Ugrave;NG NHIá»€U LOáº I RAU Cá»¦ KH&Aacute;C Táº O Sá»° Háº¤P DáºªN V&Agrave; Báº®T Máº®T CHO M&Oacute;N Ä‚N.</p>\r\n\r\n<p>THáº¬T TH&Iacute;CH Há»¢P Äá»‚ THÆ¯á»žNG THá»¨C M&Oacute;N NUI X&Agrave;O THáº¬P Cáº¨M TRONG THá»œI TIáº¾T SE Láº NH. TUY M&Oacute;N Ä‚N N&Agrave;Y KH&Ocirc;NG C&Oacute; G&Igrave; Láº  LáºªM NHÆ¯NG Cáº¢M GI&Aacute;C NH&Acirc;M NHI Má»˜T CH&Uacute;T DAI DAI, Má»€M Má»€M &nbsp;Sáº¦N Sáº¬T Cá»¦A NUI C&Ugrave;NG &nbsp;Vá»šI Háº¢I Sáº¢N, THá»ŠT B&Ograve; V&Agrave; RAU Cá»¦ N&Oacute;NG Há»”I NGON TUYá»†T .</p>\r\n\r\n<p>RAU Cá»¦ Tá»ª ANNGON&nbsp;ÄÆ¯á»¢C ORDER TRá»°C TIáº¾P Tá»ª NH&Agrave; VÆ¯á»œN &nbsp;Ä&Agrave; Láº T N&Ecirc;N GIá»® ÄÆ¯á»¢C Sá»° TÆ¯Æ I NGON, L&Agrave; NH&Acirc;N Tá» Bá»” SUNG CHáº¤T XÆ  V&Agrave; VITAMIN Tá»T CHO Sá»¨C KHá»ŽE. Äá»’NG THá»œI CH&Uacute;NG ÄÆ¯á»¢C Náº¤U Vá»ªA CHIN Tá»šI VáºªN GIá»® ÄÆ¯á»¢C Äá»˜ GI&Ograve;N, NGá»ŒT KHI Ä‚N.</p>\r\n\r\n<p>Äá»”I Vá»Š Vá»šI M&Oacute;N NUI X&Agrave;O THáº¬P Cáº¨M TUYá»†T C&Uacute; M&Egrave;O. Báº N TRáº¢I NGHIá»†M Má»šI KH&Aacute; Láº  MIá»†NG V&Agrave; C&Oacute; THá»‚ Náº P TH&Ecirc;M NÄ‚NG LÆ¯á»¢NG CHO M&Igrave;NH</p>\r\n', 10, 2, 42000, 3, '1'),
(17, 'CÆ M', '20180719031107cach-tam-uop-ga-nuong-2.jpg', '<p>CÆ¡m ngon</p>\r\n', 10, 0, 50000, 1, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hdct`),
  ADD KEY `mahd` (`mahd`),
  ADD KEY `idsp` (`idsp`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `idnd` (`idnd`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnd`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`),
  ADD KEY `madm` (`madm`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`idnd`) REFERENCES `nguoidung` (`idnd`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madm`) REFERENCES `danhmuc` (`madm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
