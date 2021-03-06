CREATE DATABASE [QLNhanVien]
GO
USE [QLNhanVien]
GO
/****** Object:  Table [dbo].[BangLuong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangLuong](
	[MaNV] [varchar](10) NOT NULL,
	[MaChamCong] [varchar](10) NOT NULL,
	[LuongCB] [bigint] NULL,
	[PhuCap] [bigint] NULL,
	[HoaDon] [bigint] NULL,
	[TongLuong] [bigint] NULL,
 CONSTRAINT [PK_BangLuong] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoPhan](
	[MaBP] [varchar](10) NOT NULL,
	[TenBP] [nvarchar](50) NULL,
	[TruongBP] [varchar](10) NULL,
	[MaTT] [int] NULL,
 CONSTRAINT [PK_BoPhan] PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[MaChamCong] [varchar](10) NOT NULL,
	[Thang] [int] NULL,
	[Nam] [int] NULL,
	[NgayPhatLuong] [date] NULL,
 CONSTRAINT [PK_ChamCong_1] PRIMARY KEY CLUSTERED 
(
	[MaChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChamCongMacDinh]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCongMacDinh](
	[MaNV] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ChamCongMacDinh] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietChamCong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietChamCong](
	[MaChamCong] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgayCong] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ChiTietChamCong] PRIMARY KEY CLUSTERED 
(
	[MaChamCong] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietChuyenMon]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietChuyenMon](
	[MaCTCM] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaCM] [varchar](10) NOT NULL,
	[NgayCap] [date] NULL,
	[Truong] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChiTietChuyenMon] PRIMARY KEY CLUSTERED 
(
	[MaCTCM] ASC,
	[MaNV] ASC,
	[MaCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietKhenThuong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhenThuong](
	[SoQD] [varchar](10) NOT NULL,
	[NgayQD] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[NoiDung] [nvarchar](1000) NULL,
	[HinhThuc] [nvarchar](100) NULL,
	[MaKT] [varchar](10) NULL,
 CONSTRAINT [PK_ChiTietKhenThuong] PRIMARY KEY CLUSTERED 
(
	[SoQD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietKiLuat]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKiLuat](
	[MaCTKL] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NULL,
	[HinhThuc] [nvarchar](1000) NULL,
	[NgayKL] [date] NULL,
	[MaKL] [varchar](10) NULL,
	[NguyenNhan] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ChiTietKiLuat] PRIMARY KEY CLUSTERED 
(
	[MaCTKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenCongTac]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenCongTac](
	[MaChuyen] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgayChuyen] [date] NULL,
	[MaCVCu] [varchar](10) NULL,
	[MaPBCu] [varchar](10) NULL,
	[MaCVMoi] [varchar](10) NULL,
	[MaPBMoi] [varchar](10) NULL,
 CONSTRAINT [PK_ChuyenCongTac] PRIMARY KEY CLUSTERED 
(
	[MaChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenMon]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMon](
	[MaCM] [varchar](10) NOT NULL,
	[TenCM] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChuyenMon] PRIMARY KEY CLUSTERED 
(
	[MaCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongThucTinhLuong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongThucTinhLuong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CongThuc] [nvarchar](4000) NULL,
 CONSTRAINT [PK_CongThucTinhLuong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanToc]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanToc](
	[MaDT] [varchar](10) NOT NULL,
	[TenDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanToc] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GhiChuDangNhap]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GhiChuDangNhap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[TimeLogin] [datetime] NULL,
	[TimeLogout] [datetime] NULL,
 CONSTRAINT [PK_GhiChuDangNhap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[MaGT] [bit] NOT NULL,
	[TenGT] [nvarchar](4) NULL,
 CONSTRAINT [PK_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[MaGT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[IDBill] [varchar](20) NULL,
	[NoiDung] [nvarchar](50) NULL,
	[MaNV] [varchar](10) NULL,
	[Thang] [int] NULL,
	[Nam] [int] NULL,
	[Tien] [bigint] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHD] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaLoaiHD] [int] NOT NULL,
	[NgayKyHD] [date] NOT NULL,
	[NgayHetHan] [date] NULL,
	[MaTTHD] [int] NOT NULL,
 CONSTRAINT [PK_HopDong] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HopDongHetHan]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongHetHan](
	[MaHD] [varchar](10) NOT NULL,
	[TinhTrangGiaiQuyet] [int] NULL,
 CONSTRAINT [PK_HopDongHetHan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhenThuong](
	[MaKT] [varchar](10) NOT NULL,
	[TenKT] [nvarchar](100) NULL,
 CONSTRAINT [PK_KhenThuong] PRIMARY KEY CLUSTERED 
(
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KiLuat]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiLuat](
	[MaKL] [varchar](10) NOT NULL,
	[TenKL] [nvarchar](50) NULL,
 CONSTRAINT [PK_KiLuat] PRIMARY KEY CLUSTERED 
(
	[MaKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiHopDong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHopDong](
	[MaLoaiHD] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiHopDong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaUser] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NULL,
	[MaPQ] [varchar](10) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [varchar](20) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
	[MaPB] [varchar](10) NULL,
	[LuongCB] [bigint] NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[MaTT] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaPQ] [varchar](10) NOT NULL,
	[TenPQ] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [varchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NULL,
	[ViTri] [nvarchar](100) NULL,
	[TruongPB] [varchar](10) NULL,
	[MaBP] [varchar](10) NULL,
	[MaTT] [int] NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhuCap]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuCap](
	[MaNV] [varchar](10) NOT NULL,
	[TienPhuCap] [bigint] NULL,
 CONSTRAINT [PK_PhuCap] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuanHuyen]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanHuyen](
	[MaQuan] [varchar](10) NOT NULL,
	[TenQuan] [nvarchar](50) NULL,
	[MaTinh] [varchar](10) NULL,
 CONSTRAINT [PK_Quan/Huyen] PRIMARY KEY CLUSTERED 
(
	[MaQuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuocGia](
	[MaQG] [varchar](10) NOT NULL,
	[TenQG] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinChiTietNhanVien]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinChiTietNhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[MaGT] [bit] NULL,
	[CMND] [varchar](12) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[DienThoai] [varchar](11) NULL,
	[SoNha] [varchar](20) NULL,
	[Duong] [nvarchar](50) NULL,
	[PhuongXa] [nvarchar](50) NULL,
	[QuanHuyen] [varchar](10) NULL,
	[TinhTP] [varchar](10) NULL,
	[QuocGia] [varchar](10) NULL,
	[MaDT] [varchar](10) NULL,
	[MaTG] [varchar](10) NULL,
	[SoTheATM] [varchar](20) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_ThongTinChiTietNhanVien_1] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTP]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTP](
	[MaTinh] [varchar](10) NOT NULL,
	[TenTinh] [nvarchar](50) NULL,
	[MaQG] [varchar](10) NULL,
 CONSTRAINT [PK_Tinh/TP] PRIMARY KEY CLUSTERED 
(
	[MaTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangBPPB]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangBPPB](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangPBBP] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangHopDong]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangHopDong](
	[MaTTHD] [int] NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangHopDong] PRIMARY KEY CLUSTERED 
(
	[MaTTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangNhanVien]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangNhanVien](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TonGiao]    Script Date: 29/05/2017 08:15:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TonGiao](
	[MaTG] [varchar](10) NOT NULL,
	[TenTG] [nvarchar](50) NULL,
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
ALTER TABLE [dbo].[BoPhan]  WITH CHECK ADD  CONSTRAINT [FK_BoPhan_TinhTrangPBBP] FOREIGN KEY([MaTT])
REFERENCES [dbo].[TinhTrangBPPB] ([MaTT])
GO
ALTER TABLE [dbo].[BoPhan] CHECK CONSTRAINT [FK_BoPhan_TinhTrangPBBP]
GO
ALTER TABLE [dbo].[ChamCongMacDinh]  WITH CHECK ADD  CONSTRAINT [FK_ChamCongMacDinh_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChamCongMacDinh] CHECK CONSTRAINT [FK_ChamCongMacDinh_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChamCong_ChamCong] FOREIGN KEY([MaChamCong])
REFERENCES [dbo].[ChamCong] ([MaChamCong])
GO
ALTER TABLE [dbo].[ChiTietChamCong] CHECK CONSTRAINT [FK_ChiTietChamCong_ChamCong]
GO
ALTER TABLE [dbo].[ChiTietChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChamCong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTietChamCong] CHECK CONSTRAINT [FK_ChiTietChamCong_NhanVien]
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
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_LoaiHopDong] FOREIGN KEY([MaLoaiHD])
REFERENCES [dbo].[LoaiHopDong] ([MaLoaiHD])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_LoaiHopDong]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_NhanVien]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_TinhTrangHopDong] FOREIGN KEY([MaTTHD])
REFERENCES [dbo].[TinhTrangHopDong] ([MaTTHD])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_TinhTrangHopDong]
GO
ALTER TABLE [dbo].[HopDongHetHan]  WITH CHECK ADD  CONSTRAINT [FK_HopDongHetHan_HopDong] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HopDong] ([MaHD])
GO
ALTER TABLE [dbo].[HopDongHetHan] CHECK CONSTRAINT [FK_HopDongHetHan_HopDong]
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
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhongBan] FOREIGN KEY([MaPB])
REFERENCES [dbo].[PhongBan] ([MaPB])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhongBan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TinhTrangNhanVien] FOREIGN KEY([MaTT])
REFERENCES [dbo].[TinhTrangNhanVien] ([MaTT])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TinhTrangNhanVien]
GO
ALTER TABLE [dbo].[PhongBan]  WITH CHECK ADD  CONSTRAINT [FK_PhongBan_BoPhan] FOREIGN KEY([MaBP])
REFERENCES [dbo].[BoPhan] ([MaBP])
GO
ALTER TABLE [dbo].[PhongBan] CHECK CONSTRAINT [FK_PhongBan_BoPhan]
GO
ALTER TABLE [dbo].[PhongBan]  WITH CHECK ADD  CONSTRAINT [FK_PhongBan_TinhTrangPBBP] FOREIGN KEY([MaTT])
REFERENCES [dbo].[TinhTrangBPPB] ([MaTT])
GO
ALTER TABLE [dbo].[PhongBan] CHECK CONSTRAINT [FK_PhongBan_TinhTrangPBBP]
GO
ALTER TABLE [dbo].[PhuCap]  WITH CHECK ADD  CONSTRAINT [FK_PhuCap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhuCap] CHECK CONSTRAINT [FK_PhuCap_NhanVien]
GO
ALTER TABLE [dbo].[QuanHuyen]  WITH CHECK ADD  CONSTRAINT [FK_Quan/Huyen_Tinh/TP] FOREIGN KEY([MaTinh])
REFERENCES [dbo].[TinhTP] ([MaTinh])
GO
ALTER TABLE [dbo].[QuanHuyen] CHECK CONSTRAINT [FK_Quan/Huyen_Tinh/TP]
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
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_NhanVien]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_Quan/Huyen] FOREIGN KEY([QuanHuyen])
REFERENCES [dbo].[QuanHuyen] ([MaQuan])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_Quan/Huyen]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_QuocGia] FOREIGN KEY([QuocGia])
REFERENCES [dbo].[QuocGia] ([MaQG])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_QuocGia]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_Tinh/TP] FOREIGN KEY([TinhTP])
REFERENCES [dbo].[TinhTP] ([MaTinh])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_Tinh/TP]
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_TonGiao] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TonGiao] ([MaTG])
GO
ALTER TABLE [dbo].[ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_TonGiao]
GO
ALTER TABLE [dbo].[TinhTP]  WITH CHECK ADD  CONSTRAINT [FK_Tinh/TP_QuocGia] FOREIGN KEY([MaQG])
REFERENCES [dbo].[QuocGia] ([MaQG])
GO
ALTER TABLE [dbo].[TinhTP] CHECK CONSTRAINT [FK_Tinh/TP_QuocGia]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bộ phận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoPhan', @level2type=N'COLUMN',@level2name=N'MaBP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên bộ phận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoPhan', @level2type=N'COLUMN',@level2name=N'TenBP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trưởng bộ phận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoPhan', @level2type=N'COLUMN',@level2name=N'TruongBP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoPhan', @level2type=N'COLUMN',@level2name=N'MaTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chấm công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'MaChamCong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tháng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'Thang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Năm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'Nam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày phát lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'NgayPhatLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCongMacDinh', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chấm công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChamCong', @level2type=N'COLUMN',@level2name=N'MaChamCong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChamCong', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChamCong', @level2type=N'COLUMN',@level2name=N'NgayCong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày nghỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChamCong', @level2type=N'COLUMN',@level2name=N'TrangThai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết chấm công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChuyenMon', @level2type=N'COLUMN',@level2name=N'MaCTCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChuyenMon', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên môn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChuyenMon', @level2type=N'COLUMN',@level2name=N'MaCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày cấp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChuyenMon', @level2type=N'COLUMN',@level2name=N'NgayCap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trường' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChuyenMon', @level2type=N'COLUMN',@level2name=N'Truong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số Quyết định' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKhenThuong', @level2type=N'COLUMN',@level2name=N'SoQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày quyết định' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKhenThuong', @level2type=N'COLUMN',@level2name=N'NgayQD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKhenThuong', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nội dung' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKhenThuong', @level2type=N'COLUMN',@level2name=N'NoiDung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình thức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKhenThuong', @level2type=N'COLUMN',@level2name=N'HinhThuc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khen thưởng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKhenThuong', @level2type=N'COLUMN',@level2name=N'MaKT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết kỉ luật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKiLuat', @level2type=N'COLUMN',@level2name=N'MaCTKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKiLuat', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình thức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKiLuat', @level2type=N'COLUMN',@level2name=N'HinhThuc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày kỉ luật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKiLuat', @level2type=N'COLUMN',@level2name=N'NgayKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã kỉ luật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKiLuat', @level2type=N'COLUMN',@level2name=N'MaKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nguyên nhân' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietKiLuat', @level2type=N'COLUMN',@level2name=N'NguyenNhan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyển công tác' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenCongTac', @level2type=N'COLUMN',@level2name=N'MaChuyen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenCongTac', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày chuyển công tác' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenCongTac', @level2type=N'COLUMN',@level2name=N'NgayChuyen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chức vụ cũ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenCongTac', @level2type=N'COLUMN',@level2name=N'MaCVCu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phòng ban cũ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenCongTac', @level2type=N'COLUMN',@level2name=N'MaPBCu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chức vụ mới' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenCongTac', @level2type=N'COLUMN',@level2name=N'MaCVMoi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phòng ban mới' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenCongTac', @level2type=N'COLUMN',@level2name=N'MaPBMoi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên môn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenMon', @level2type=N'COLUMN',@level2name=N'MaCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên chuyên môn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenMon', @level2type=N'COLUMN',@level2name=N'TenCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã công thức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CongThucTinhLuong', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Công thức tính lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CongThucTinhLuong', @level2type=N'COLUMN',@level2name=N'CongThuc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã dân tộc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DanToc', @level2type=N'COLUMN',@level2name=N'MaDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên dân tộc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DanToc', @level2type=N'COLUMN',@level2name=N'TenDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GioiTinh', @level2type=N'COLUMN',@level2name=N'MaGT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GioiTinh', @level2type=N'COLUMN',@level2name=N'TenGT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hợp đồng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HopDong', @level2type=N'COLUMN',@level2name=N'MaHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại hợp đồng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HopDong', @level2type=N'COLUMN',@level2name=N'MaLoaiHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày ký hợp đồng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HopDong', @level2type=N'COLUMN',@level2name=N'NgayKyHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày hết hạn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HopDong', @level2type=N'COLUMN',@level2name=N'NgayHetHan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'HopDong', @level2type=N'COLUMN',@level2name=N'MaTTHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khen thưởng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhenThuong', @level2type=N'COLUMN',@level2name=N'MaKT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên khen thưởng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhenThuong', @level2type=N'COLUMN',@level2name=N'TenKT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã kỉ luật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KiLuat', @level2type=N'COLUMN',@level2name=N'MaKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên kỉ luật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KiLuat', @level2type=N'COLUMN',@level2name=N'TenKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại hợp đồng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiHopDong', @level2type=N'COLUMN',@level2name=N'MaLoaiHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại hợp đồng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiHopDong', @level2type=N'COLUMN',@level2name=N'TenLoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NguoiDung', @level2type=N'COLUMN',@level2name=N'MaUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NguoiDung', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phân quyền' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NguoiDung', @level2type=N'COLUMN',@level2name=N'MaPQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NguoiDung', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NguoiDung', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'HoTen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày vào làm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'NgayVaoLam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phòng ban' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'MaPB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương căn bản' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'LuongCB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'HinhAnh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'MaTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phân quyền' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhanQuyen', @level2type=N'COLUMN',@level2name=N'MaPQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên phân quyền' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhanQuyen', @level2type=N'COLUMN',@level2name=N'TenPQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phòng ban' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhongBan', @level2type=N'COLUMN',@level2name=N'MaPB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên phòng ban' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhongBan', @level2type=N'COLUMN',@level2name=N'TenPB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vị trí phòng ban' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhongBan', @level2type=N'COLUMN',@level2name=N'ViTri'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trưởng phòng ban' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhongBan', @level2type=N'COLUMN',@level2name=N'TruongPB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Bộ phận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhongBan', @level2type=N'COLUMN',@level2name=N'MaBP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhongBan', @level2type=N'COLUMN',@level2name=N'MaTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhuCap', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phụ cấp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhuCap', @level2type=N'COLUMN',@level2name=N'TienPhuCap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuanHuyen', @level2type=N'COLUMN',@level2name=N'MaQuan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên quận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuanHuyen', @level2type=N'COLUMN',@level2name=N'TenQuan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tỉnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuanHuyen', @level2type=N'COLUMN',@level2name=N'MaTinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quốc gia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuocGia', @level2type=N'COLUMN',@level2name=N'MaQG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên quốc gia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuocGia', @level2type=N'COLUMN',@level2name=N'TenQG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'MaGT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chứng minh nhân dân' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'CMND'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'NgaySinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nơi sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'NoiSinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Điện thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'DienThoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số nhà' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'SoNha'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đường' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'Duong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phường / Xã' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'PhuongXa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quận / Huyện' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'QuanHuyen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tỉnh / thành phố' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'TinhTP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quốc gia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'QuocGia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã dân tộc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'MaDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tôn giáo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'MaTG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số thẻ ATM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'SoTheATM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ThongTinChiTietNhanVien', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tỉnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTP', @level2type=N'COLUMN',@level2name=N'MaTinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tỉnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTP', @level2type=N'COLUMN',@level2name=N'TenTinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã quốc gia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTP', @level2type=N'COLUMN',@level2name=N'MaQG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTrangBPPB', @level2type=N'COLUMN',@level2name=N'MaTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTrangBPPB', @level2type=N'COLUMN',@level2name=N'TenTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tình trạng hợp đồng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTrangHopDong', @level2type=N'COLUMN',@level2name=N'MaTTHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTrangHopDong', @level2type=N'COLUMN',@level2name=N'TenTinhTrang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTrangNhanVien', @level2type=N'COLUMN',@level2name=N'MaTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTrangNhanVien', @level2type=N'COLUMN',@level2name=N'TenTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tôn giáo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TonGiao', @level2type=N'COLUMN',@level2name=N'MaTG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tôn giáo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TonGiao', @level2type=N'COLUMN',@level2name=N'TenTG'
GO
