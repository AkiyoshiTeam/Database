CREATE DATABASE [QLNhanVien]
GO
USE [QLNhanVien]
GO
/****** Object:  Table [dbo].[BangLuong]    Script Date: 29/04/2017 09:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangLuong](
	[MaBL] [nchar](10) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaPB] [nchar](10) NOT NULL,
	[LuongCB] [bigint] NOT NULL,
	[LuongThuong] [bigint] NOT NULL,
	[MaChamCong] [nchar](10) NOT NULL,
	[PhuCap] [bigint] NOT NULL,
	[TongLuong] [bigint] NOT NULL,
 CONSTRAINT [PK_BangLuong] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoPhan](
	[MaBP] [nchar](10) NOT NULL,
	[TenBP] [nvarchar](50) NOT NULL,
	[TruongBP] [nchar](10) NOT NULL,
 CONSTRAINT [PK_BoPhan] PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[MaChamCong] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaPB] [nchar](10) NOT NULL,
	[Cong] [float] NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[NgayPhatLuong] [date] NOT NULL,
 CONSTRAINT [PK_ChamCong] PRIMARY KEY CLUSTERED 
(
	[MaChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietChuyenMon]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietChuyenMon](
	[MaCTCM] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaCM] [nchar](10) NOT NULL,
	[NgayCap] [date] NOT NULL,
	[Truong] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ChiTietChuyenMon] PRIMARY KEY CLUSTERED 
(
	[MaCTCM] ASC,
	[MaNV] ASC,
	[MaCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKhenThuong]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhenThuong](
	[SoQD] [nchar](10) NOT NULL,
	[NgayQD] [date] NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[NoiDung] [nvarchar](1000) NOT NULL,
	[HinhThuc] [nvarchar](100) NOT NULL,
	[MaKT] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ChiTietKhenThuong] PRIMARY KEY CLUSTERED 
(
	[SoQD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKiLuat]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKiLuat](
	[MaCTKL] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[HinhThuc] [nvarchar](1000) NOT NULL,
	[NgayKL] [date] NOT NULL,
	[MaKL] [nchar](10) NOT NULL,
	[NguyenNhan] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ChiTietKiLuat] PRIMARY KEY CLUSTERED 
(
	[MaCTKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCV] [nchar](10) NOT NULL,
	[TenCV] [nvarchar](50) NOT NULL,
	[LuongCB] [bigint] NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenCongTac]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenCongTac](
	[MaChuyen] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[NgayChuyen] [date] NOT NULL,
	[MaCVCu] [nchar](10) NOT NULL,
	[MaPBCu] [nchar](10) NOT NULL,
	[MaCVMoi] [nchar](10) NOT NULL,
	[MaPBMoi] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ChuyenCongTac] PRIMARY KEY CLUSTERED 
(
	[MaChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMon](
	[MaCM] [nchar](10) NOT NULL,
	[TenCM] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuyenMon] PRIMARY KEY CLUSTERED 
(
	[MaCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongThucTinhLuong]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongThucTinhLuong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CongThuc] [nvarchar](4000) NOT NULL,
	[MaLoaiCT] [int] NOT NULL,
	[LuongCB] [bigint] NOT NULL,
	[LuongThuong] [bigint] NOT NULL,
	[PhuCap] [bigint] NOT NULL,
	[TongLuong] [bigint] NOT NULL,
 CONSTRAINT [PK_CongThucTinhLuong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanToc]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanToc](
	[MaDT] [nchar](10) NOT NULL,
	[TenDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DanToc] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[MaGT] [bit] NOT NULL,
	[TenGT] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[MaGT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHD] [nchar](10) NOT NULL,
	[LoaiHD] [nvarchar](50) NOT NULL,
	[NgayKyHD] [date] NOT NULL,
 CONSTRAINT [PK_HopDong] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuong](
	[MaKT] [nchar](10) NOT NULL,
	[TenKT] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_KhenThuong] PRIMARY KEY CLUSTERED 
(
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KiLuat]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiLuat](
	[MaKL] [nchar](10) NOT NULL,
	[TenKL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KiLuat] PRIMARY KEY CLUSTERED 
(
	[MaKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiCongThuc]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiCongThuc](
	[MaLoaiCT] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiCongThuc] PRIMARY KEY CLUSTERED 
(
	[MaLoaiCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiLuong]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiLuong](
	[MaLoaiLuong] [nchar](10) NOT NULL,
	[TenLoaiLuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiLuong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaUser] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaPQ] [nchar](10) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nchar](20) NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
	[MaCV] [nchar](10) NOT NULL,
	[MaBP] [nchar](10) NOT NULL,
	[MaPB] [nchar](10) NOT NULL,
	[MaHD] [nchar](10) NOT NULL,
	[MaLoaiLuong] [nchar](10) NOT NULL,
	[MaTTCT] [nchar](10) NOT NULL,
	[HinhAnh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPQ] [nchar](10) NOT NULL,
	[TenPQ] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [nchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NOT NULL,
	[ViTri] [nvarchar](100) NOT NULL,
	[TruongPB] [nchar](10) NOT NULL,
	[MaBP] [nchar](10) NOT NULL,
	[LuongCB] [bigint] NOT NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quan/Huyen]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quan/Huyen](
	[MaQuan] [nchar](10) NOT NULL,
	[TenQuan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quan/Huyen] PRIMARY KEY CLUSTERED 
(
	[MaQuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocGia](
	[MaQG] [nchar](10) NOT NULL,
	[TenQG] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinChiTietNhanVien]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinChiTietNhanVien](
	[MaTTCT] [nchar](10) NOT NULL,
	[MaNV] [nchar](10) NOT NULL,
	[MaGT] [bit] NOT NULL,
	[CMND] [nchar](12) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[DienThoai] [nchar](11) NULL,
	[SoNha] [nchar](20) NOT NULL,
	[Duong] [nvarchar](50) NOT NULL,
	[Phuong/Xa] [nvarchar](50) NOT NULL,
	[Quan/Huyen] [nchar](10) NOT NULL,
	[Tinh/TP] [nchar](10) NOT NULL,
	[QuocGia] [nchar](10) NOT NULL,
	[MaDT] [nchar](10) NOT NULL,
	[MaTG] [nchar](10) NOT NULL,
	[SoTheATM] [nchar](20) NOT NULL,
 CONSTRAINT [PK_ThongTinChiTietNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaTTCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tinh/TP]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tinh/TP](
	[MaTinh] [nchar](10) NOT NULL,
	[TenTinh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tinh/TP] PRIMARY KEY CLUSTERED 
(
	[MaTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TonGiao]    Script Date: 29/04/2017 09:27:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonGiao](
	[MaTG] [nchar](10) NOT NULL,
	[TenTG] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TonGiao] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_ChamCong] FOREIGN KEY([MaChamCong])
REFERENCES [dbo].[ChamCong] ([MaChamCong])
GO
ALTER TABLE [dbo].[BangLuong] CHECK CONSTRAINT [FK_BangLuong_ChamCong]
GO
ALTER TABLE [dbo].[BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BangLuong] CHECK CONSTRAINT [FK_BangLuong_NhanVien]
GO
ALTER TABLE [dbo].[BoPhan]  WITH CHECK ADD  CONSTRAINT [FK_BoPhan_NhanVien] FOREIGN KEY([TruongBP])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BoPhan] CHECK CONSTRAINT [FK_BoPhan_NhanVien]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [FK_ChamCong_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChuyenMon_ChuyenMon] FOREIGN KEY([MaCM])
REFERENCES [dbo].[ChuyenMon] ([MaCM])
GO
ALTER TABLE [dbo].[ChiTietChuyenMon] CHECK CONSTRAINT [FK_ChiTietChuyenMon_ChuyenMon]
GO
ALTER TABLE [dbo].[ChiTietChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChuyenMon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTietChuyenMon] CHECK CONSTRAINT [FK_ChiTietChuyenMon_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietKhenThuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhenThuong_KhenThuong] FOREIGN KEY([MaKT])
REFERENCES [dbo].[KhenThuong] ([MaKT])
GO
ALTER TABLE [dbo].[ChiTietKhenThuong] CHECK CONSTRAINT [FK_ChiTietKhenThuong_KhenThuong]
GO
ALTER TABLE [dbo].[ChiTietKhenThuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhenThuong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTietKhenThuong] CHECK CONSTRAINT [FK_ChiTietKhenThuong_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietKiLuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKiLuat_KiLuat] FOREIGN KEY([MaKL])
REFERENCES [dbo].[KiLuat] ([MaKL])
GO
ALTER TABLE [dbo].[ChiTietKiLuat] CHECK CONSTRAINT [FK_ChiTietKiLuat_KiLuat]
GO
ALTER TABLE [dbo].[ChiTietKiLuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKiLuat_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTietKiLuat] CHECK CONSTRAINT [FK_ChiTietKiLuat_NhanVien]
GO
ALTER TABLE [dbo].[ChuyenCongTac]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenCongTac_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChuyenCongTac] CHECK CONSTRAINT [FK_ChuyenCongTac_NhanVien]
GO
ALTER TABLE [dbo].[CongThucTinhLuong]  WITH CHECK ADD  CONSTRAINT [FK_CongThucTinhLuong_LoaiCongThuc] FOREIGN KEY([MaLoaiCT])
REFERENCES [dbo].[LoaiCongThuc] ([MaLoaiCT])
GO
ALTER TABLE [dbo].[CongThucTinhLuong] CHECK CONSTRAINT [FK_CongThucTinhLuong_LoaiCongThuc]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_NhanVien]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_PhanQuyen] FOREIGN KEY([MaPQ])
REFERENCES [dbo].[PhanQuyen] ([MaPQ])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_PhanQuyen]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_HopDong] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HopDong] ([MaHD])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_HopDong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiLuong] FOREIGN KEY([MaLoaiLuong])
REFERENCES [dbo].[LoaiLuong] ([MaLoaiLuong])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiLuong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ThongTinChiTietNhanVien] FOREIGN KEY([MaTTCT])
REFERENCES [dbo].[ThongTinChiTietNhanVien] ([MaTTCT])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ThongTinChiTietNhanVien]
GO
ALTER TABLE [dbo].[PhongBan]  WITH CHECK ADD  CONSTRAINT [FK_PhongBan_BoPhan] FOREIGN KEY([MaBP])
REFERENCES [dbo].[BoPhan] ([MaBP])
GO
ALTER TABLE [dbo].[PhongBan] CHECK CONSTRAINT [FK_PhongBan_BoPhan]
GO
ALTER TABLE [dbo].[PhongBan]  WITH CHECK ADD  CONSTRAINT [FK_PhongBan_NhanVien] FOREIGN KEY([TruongPB])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhongBan] CHECK CONSTRAINT [FK_PhongBan_NhanVien]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_DanToc] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DanToc] ([MaDT])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_DanToc]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_GioiTinh] FOREIGN KEY([MaGT])
REFERENCES [dbo].[GioiTinh] ([MaGT])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_GioiTinh]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_Quan/Huyen] FOREIGN KEY([Quan/Huyen])
REFERENCES [dbo].[Quan/Huyen] ([MaQuan])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_Quan/Huyen]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_QuocGia] FOREIGN KEY([QuocGia])
REFERENCES [dbo].[QuocGia] ([MaQG])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_QuocGia]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_Tinh/TP] FOREIGN KEY([Tinh/TP])
REFERENCES [dbo].[Tinh/TP] ([MaTinh])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_Tinh/TP]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_TonGiao] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TonGiao] ([MaTG])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_TonGiao]
GO
