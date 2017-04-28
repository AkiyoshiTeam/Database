CREATE DATABASE [QLNhanVien]
GO
USE [QLNhanVien]
GO
/****** Object:  Table [dbo].[BangLuong]    Script Date: 28/04/2017 11:43:16 AM ******/
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
	[SoNgayCong] [int] NOT NULL,
	[PhuCap] [bigint] NOT NULL,
	[TongLuong] [bigint] NOT NULL,
 CONSTRAINT [PK_BangLuong] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[ChiTietChuyenMon]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[ChiTietKhenThuong]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[ChiTietKiLuat]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[ChucVu]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[ChuyenCongTac]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[DanToc]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[KiLuat]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[NhanVien]    Script Date: 28/04/2017 11:43:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[MaGT] [bit] NOT NULL,
	[CMND] [nchar](12) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[NoiSinh] [nvarchar](50) NOT NULL,
	[DienThoai] [nchar](11) NOT NULL,
	[DiaChiHienNay] [nvarchar](100) NOT NULL,
	[DiaChiHoKhau] [nvarchar](100) NOT NULL,
	[MaDT] [nchar](10) NULL,
	[MaTG] [nchar](10) NULL,
	[NgayVaoLam] [date] NOT NULL,
	[SoTheATM] [nchar](20) NULL,
	[MaCV] [nchar](10) NOT NULL,
	[MaBP] [nchar](10) NOT NULL,
	[MaPB] [nchar](10) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[PhongBan]    Script Date: 28/04/2017 11:43:16 AM ******/
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
/****** Object:  Table [dbo].[TonGiao]    Script Date: 28/04/2017 11:43:16 AM ******/
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
ALTER TABLE [dbo].[BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BangLuong] CHECK CONSTRAINT [FK_BangLuong_NhanVien]
GO
ALTER TABLE [dbo].[BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_PhongBan] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[BangLuong] CHECK CONSTRAINT [FK_BangLuong_PhongBan]
GO
ALTER TABLE [dbo].[BoPhan]  WITH CHECK ADD  CONSTRAINT [FK_BoPhan_NhanVien] FOREIGN KEY([TruongBP])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[BoPhan] CHECK CONSTRAINT [FK_BoPhan_NhanVien]
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
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_DanToc] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DanToc] ([MaDT])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_DanToc]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_GioiTinh] FOREIGN KEY([MaGT])
REFERENCES [dbo].[GioiTinh] ([MaGT])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TonGiao] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TonGiao] ([MaTG])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TonGiao]
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
