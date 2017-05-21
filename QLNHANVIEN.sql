CREATE DATABASE [QLNhanVien]
GO
USE [QLNhanVien]
GO
/****** Object:  Table [BangLuong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BangLuong](
	[MaBL] [varchar](10) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaPB] [varchar](10) NOT NULL,
	[LuongCB] [bigint] NOT NULL,
	[LuongThuong] [bigint] NOT NULL,
	[MaChamCong] [varchar](10) NOT NULL,
	[PhuCap] [bigint] NOT NULL,
	[TongLuong] [bigint] NOT NULL,
 CONSTRAINT [PK_BangLuong] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [BoPhan]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BoPhan](
	[MaBP] [varchar](10) NOT NULL,
	[TenBP] [nvarchar](50) NOT NULL,
	[TruongBP] [varchar](10) NOT NULL,
 CONSTRAINT [PK_BoPhan] PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ChamCong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChamCong](
	[MaChamCong] [varchar](10) NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[NgayPhatLuong] [date] NOT NULL,
 CONSTRAINT [PK_ChamCong_1] PRIMARY KEY CLUSTERED 
(
	[MaChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ChiTietChamCong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChiTietChamCong](
	[MaChamCong] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgayCong] [int] NOT NULL,
	[NgayNghi] [int] NULL,
 CONSTRAINT [PK_ChiTietChamCong] PRIMARY KEY CLUSTERED 
(
	[MaChamCong] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ChiTietChuyenMon]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChiTietChuyenMon](
	[MaCTCM] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaCM] [varchar](10) NOT NULL,
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
/****** Object:  Table [ChiTietKhenThuong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChiTietKhenThuong](
	[SoQD] [varchar](10) NOT NULL,
	[NgayQD] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NoiDung] [nvarchar](1000) NOT NULL,
	[HinhThuc] [nvarchar](100) NOT NULL,
	[MaKT] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ChiTietKhenThuong] PRIMARY KEY CLUSTERED 
(
	[SoQD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ChiTietKiLuat]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChiTietKiLuat](
	[MaCTKL] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[HinhThuc] [nvarchar](1000) NOT NULL,
	[NgayKL] [date] NOT NULL,
	[MaKL] [varchar](10) NOT NULL,
	[NguyenNhan] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ChiTietKiLuat] PRIMARY KEY CLUSTERED 
(
	[MaCTKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ChucVu]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChucVu](
	[MaCV] [varchar](10) NOT NULL,
	[TenCV] [nvarchar](50) NOT NULL,
	[LuongCB] [bigint] NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ChuyenCongTac]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChuyenCongTac](
	[MaChuyen] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgayChuyen] [date] NOT NULL,
	[MaCVCu] [varchar](10) NOT NULL,
	[MaPBCu] [varchar](10) NOT NULL,
	[MaCVMoi] [varchar](10) NOT NULL,
	[MaPBMoi] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ChuyenCongTac] PRIMARY KEY CLUSTERED 
(
	[MaChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ChuyenMon]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ChuyenMon](
	[MaCM] [varchar](10) NOT NULL,
	[TenCM] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuyenMon] PRIMARY KEY CLUSTERED 
(
	[MaCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CongThucTinhLuong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CongThucTinhLuong](
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
/****** Object:  Table [DanToc]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DanToc](
	[MaDT] [varchar](10) NOT NULL,
	[TenDT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DanToc] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [GioiTinh]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GioiTinh](
	[MaGT] [bit] NOT NULL,
	[TenGT] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[MaGT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HopDong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HopDong](
	[MaHD] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NULL,
	[MaLoaiHD] [int] NOT NULL,
	[NgayKyHD] [date] NOT NULL,
	[NgayHetHan] [date] NULL,
	[MaTTHD] [int] NULL,
 CONSTRAINT [PK_HopDong] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KhenThuong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KhenThuong](
	[MaKT] [varchar](10) NOT NULL,
	[TenKT] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_KhenThuong] PRIMARY KEY CLUSTERED 
(
	[MaKT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KiLuat]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KiLuat](
	[MaKL] [varchar](10) NOT NULL,
	[TenKL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KiLuat] PRIMARY KEY CLUSTERED 
(
	[MaKL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LoaiCongThuc]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LoaiCongThuc](
	[MaLoaiCT] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiCongThuc] PRIMARY KEY CLUSTERED 
(
	[MaLoaiCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LoaiHopDong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LoaiHopDong](
	[MaLoaiHD] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiHopDong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LoaiLuong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LoaiLuong](
	[MaLoaiLuong] [varchar](10) NOT NULL,
	[TenLoaiLuong] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiLuong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NguoiDung]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NguoiDung](
	[MaUser] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaPQ] [varchar](10) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NhanVien]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgayVaoLam] [date] NOT NULL,
	[MaCV] [varchar](10) NOT NULL,
	[MaPB] [varchar](10) NOT NULL,
	[MaLoaiLuong] [varchar](10) NOT NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[MaTT] [int] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PhanQuyen]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PhanQuyen](
	[MaPQ] [varchar](10) NOT NULL,
	[TenPQ] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaPQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PhongBan]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PhongBan](
	[MaPB] [varchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NOT NULL,
	[ViTri] [nvarchar](100) NOT NULL,
	[TruongPB] [varchar](10) NOT NULL,
	[MaBP] [varchar](10) NOT NULL,
	[LuongCB] [bigint] NOT NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [QuanHuyen]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QuanHuyen](
	[MaQuan] [varchar](10) NOT NULL,
	[TenQuan] [nvarchar](50) NOT NULL,
	[MaTinh] [varchar](10) NULL,
 CONSTRAINT [PK_Quan/Huyen] PRIMARY KEY CLUSTERED 
(
	[MaQuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [QuocGia]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [QuocGia](
	[MaQG] [varchar](10) NOT NULL,
	[TenQG] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ThongTinChiTietNhanVien]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ThongTinChiTietNhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[MaGT] [bit] NOT NULL,
	[CMND] [varchar](12) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[DienThoai] [varchar](11) NULL,
	[SoNha] [varchar](20) NOT NULL,
	[Duong] [nvarchar](50) NULL,
	[PhuongXa] [nvarchar](50) NULL,
	[QuanHuyen] [varchar](10) NULL,
	[TinhTP] [varchar](10) NULL,
	[QuocGia] [varchar](10) NOT NULL,
	[MaDT] [varchar](10) NOT NULL,
	[MaTG] [varchar](10) NOT NULL,
	[SoTheATM] [varchar](10) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_ThongTinChiTietNhanVien_1] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TinhTP]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TinhTP](
	[MaTinh] [varchar](10) NOT NULL,
	[TenTinh] [nvarchar](50) NOT NULL,
	[MaQG] [varchar](10) NULL,
 CONSTRAINT [PK_Tinh/TP] PRIMARY KEY CLUSTERED 
(
	[MaTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TinhTrangHopDong]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TinhTrangHopDong](
	[MaTTHD] [int] NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangHopDong] PRIMARY KEY CLUSTERED 
(
	[MaTTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TinhTrangNhanVien]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TinhTrangNhanVien](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TinhTrangNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TonGiao]    Script Date: 5/21/2017 10:47:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TonGiao](
	[MaTG] [varchar](10) NOT NULL,
	[TenTG] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TonGiao] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_ChamCong] FOREIGN KEY([MaChamCong])
REFERENCES [ChamCong] ([MaChamCong])
GO
ALTER TABLE [BangLuong] CHECK CONSTRAINT [FK_BangLuong_ChamCong]
GO
ALTER TABLE [BangLuong]  WITH CHECK ADD  CONSTRAINT [FK_BangLuong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [BangLuong] CHECK CONSTRAINT [FK_BangLuong_NhanVien]
GO
ALTER TABLE [ChiTietChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChamCong_ChamCong] FOREIGN KEY([MaChamCong])
REFERENCES [ChamCong] ([MaChamCong])
GO
ALTER TABLE [ChiTietChamCong] CHECK CONSTRAINT [FK_ChiTietChamCong_ChamCong]
GO
ALTER TABLE [ChiTietChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChamCong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [ChiTietChamCong] CHECK CONSTRAINT [FK_ChiTietChamCong_NhanVien]
GO
ALTER TABLE [ChiTietChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChuyenMon_ChuyenMon] FOREIGN KEY([MaCM])
REFERENCES [ChuyenMon] ([MaCM])
GO
ALTER TABLE [ChiTietChuyenMon] CHECK CONSTRAINT [FK_ChiTietChuyenMon_ChuyenMon]
GO
ALTER TABLE [ChiTietChuyenMon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietChuyenMon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [ChiTietChuyenMon] CHECK CONSTRAINT [FK_ChiTietChuyenMon_NhanVien]
GO
ALTER TABLE [ChiTietKhenThuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhenThuong_KhenThuong] FOREIGN KEY([MaKT])
REFERENCES [KhenThuong] ([MaKT])
GO
ALTER TABLE [ChiTietKhenThuong] CHECK CONSTRAINT [FK_ChiTietKhenThuong_KhenThuong]
GO
ALTER TABLE [ChiTietKhenThuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhenThuong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [ChiTietKhenThuong] CHECK CONSTRAINT [FK_ChiTietKhenThuong_NhanVien]
GO
ALTER TABLE [ChiTietKiLuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKiLuat_KiLuat] FOREIGN KEY([MaKL])
REFERENCES [KiLuat] ([MaKL])
GO
ALTER TABLE [ChiTietKiLuat] CHECK CONSTRAINT [FK_ChiTietKiLuat_KiLuat]
GO
ALTER TABLE [ChiTietKiLuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKiLuat_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [ChiTietKiLuat] CHECK CONSTRAINT [FK_ChiTietKiLuat_NhanVien]
GO
ALTER TABLE [ChuyenCongTac]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenCongTac_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [ChuyenCongTac] CHECK CONSTRAINT [FK_ChuyenCongTac_NhanVien]
GO
ALTER TABLE [CongThucTinhLuong]  WITH CHECK ADD  CONSTRAINT [FK_CongThucTinhLuong_LoaiCongThuc1] FOREIGN KEY([MaLoaiCT])
REFERENCES [LoaiCongThuc] ([MaLoaiCT])
GO
ALTER TABLE [CongThucTinhLuong] CHECK CONSTRAINT [FK_CongThucTinhLuong_LoaiCongThuc1]
GO
ALTER TABLE [HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_LoaiHopDong] FOREIGN KEY([MaLoaiHD])
REFERENCES [LoaiHopDong] ([MaLoaiHD])
GO
ALTER TABLE [HopDong] CHECK CONSTRAINT [FK_HopDong_LoaiHopDong]
GO
ALTER TABLE [HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [HopDong] CHECK CONSTRAINT [FK_HopDong_NhanVien]
GO
ALTER TABLE [HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_TinhTrangHopDong] FOREIGN KEY([MaTTHD])
REFERENCES [TinhTrangHopDong] ([MaTTHD])
GO
ALTER TABLE [HopDong] CHECK CONSTRAINT [FK_HopDong_TinhTrangHopDong]
GO
ALTER TABLE [NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_NhanVien]
GO
ALTER TABLE [NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_PhanQuyen] FOREIGN KEY([MaPQ])
REFERENCES [PhanQuyen] ([MaPQ])
GO
ALTER TABLE [NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_PhanQuyen]
GO
ALTER TABLE [NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [ChucVu] ([MaCV])
GO
ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiLuong] FOREIGN KEY([MaLoaiLuong])
REFERENCES [LoaiLuong] ([MaLoaiLuong])
GO
ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiLuong]
GO
ALTER TABLE [NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_PhongBan] FOREIGN KEY([MaPB])
REFERENCES [PhongBan] ([MaPB])
GO
ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_PhongBan]
GO
ALTER TABLE [NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TinhTrangNhanVien] FOREIGN KEY([MaTT])
REFERENCES [TinhTrangNhanVien] ([MaTT])
GO
ALTER TABLE [NhanVien] CHECK CONSTRAINT [FK_NhanVien_TinhTrangNhanVien]
GO
ALTER TABLE [PhongBan]  WITH CHECK ADD  CONSTRAINT [FK_PhongBan_BoPhan] FOREIGN KEY([MaBP])
REFERENCES [BoPhan] ([MaBP])
GO
ALTER TABLE [PhongBan] CHECK CONSTRAINT [FK_PhongBan_BoPhan]
GO
ALTER TABLE [QuanHuyen]  WITH CHECK ADD  CONSTRAINT [FK_Quan/Huyen_Tinh/TP] FOREIGN KEY([MaTinh])
REFERENCES [TinhTP] ([MaTinh])
GO
ALTER TABLE [QuanHuyen] CHECK CONSTRAINT [FK_Quan/Huyen_Tinh/TP]
GO
ALTER TABLE [ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_DanToc] FOREIGN KEY([MaDT])
REFERENCES [DanToc] ([MaDT])
GO
ALTER TABLE [ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_DanToc]
GO
ALTER TABLE [ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_GioiTinh] FOREIGN KEY([MaGT])
REFERENCES [GioiTinh] ([MaGT])
GO
ALTER TABLE [ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_GioiTinh]
GO
ALTER TABLE [ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [NhanVien] ([MaNV])
GO
ALTER TABLE [ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_NhanVien]
GO
ALTER TABLE [ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_Quan/Huyen] FOREIGN KEY([QuanHuyen])
REFERENCES [QuanHuyen] ([MaQuan])
GO
ALTER TABLE [ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_Quan/Huyen]
GO
ALTER TABLE [ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_QuocGia] FOREIGN KEY([QuocGia])
REFERENCES [QuocGia] ([MaQG])
GO
ALTER TABLE [ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_QuocGia]
GO
ALTER TABLE [ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_Tinh/TP] FOREIGN KEY([TinhTP])
REFERENCES [TinhTP] ([MaTinh])
GO
ALTER TABLE [ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_Tinh/TP]
GO
ALTER TABLE [ThongTinChiTietNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinChiTietNhanVien_TonGiao] FOREIGN KEY([MaTG])
REFERENCES [TonGiao] ([MaTG])
GO
ALTER TABLE [ThongTinChiTietNhanVien] CHECK CONSTRAINT [FK_ThongTinChiTietNhanVien_TonGiao]
GO
ALTER TABLE [TinhTP]  WITH CHECK ADD  CONSTRAINT [FK_Tinh/TP_QuocGia] FOREIGN KEY([MaQG])
REFERENCES [QuocGia] ([MaQG])
GO
ALTER TABLE [TinhTP] CHECK CONSTRAINT [FK_Tinh/TP_QuocGia]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bảng lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'MaBL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tháng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'Thang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Năm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'Nam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phòng ban' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'MaPB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương cơ bản' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'LuongCB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương thưởng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'LuongThuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chấm công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'MaChamCong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phụ cấp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'PhuCap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BangLuong', @level2type=N'COLUMN',@level2name=N'TongLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã bộ phận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoPhan', @level2type=N'COLUMN',@level2name=N'MaBP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên bộ phận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoPhan', @level2type=N'COLUMN',@level2name=N'TenBP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trưởng bộ phận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BoPhan', @level2type=N'COLUMN',@level2name=N'TruongBP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chấm công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'MaChamCong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tháng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'Thang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Năm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'Nam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày phát lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChamCong', @level2type=N'COLUMN',@level2name=N'NgayPhatLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chấm công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChamCong', @level2type=N'COLUMN',@level2name=N'MaChamCong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã nhân viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChamCong', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChamCong', @level2type=N'COLUMN',@level2name=N'NgayCong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày nghỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietChamCong', @level2type=N'COLUMN',@level2name=N'NgayNghi'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chức vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChucVu', @level2type=N'COLUMN',@level2name=N'MaCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên chức vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChucVu', @level2type=N'COLUMN',@level2name=N'TenCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương cơ bản' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChucVu', @level2type=N'COLUMN',@level2name=N'LuongCB'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại công thức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CongThucTinhLuong', @level2type=N'COLUMN',@level2name=N'MaLoaiCT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương Cơ bản' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CongThucTinhLuong', @level2type=N'COLUMN',@level2name=N'LuongCB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương thưởng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CongThucTinhLuong', @level2type=N'COLUMN',@level2name=N'LuongThuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phụ cấp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CongThucTinhLuong', @level2type=N'COLUMN',@level2name=N'PhuCap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tổng lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CongThucTinhLuong', @level2type=N'COLUMN',@level2name=N'TongLuong'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khen thưởng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhenThuong', @level2type=N'COLUMN',@level2name=N'MaKT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên khen thưởng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhenThuong', @level2type=N'COLUMN',@level2name=N'TenKT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã kỉ luật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KiLuat', @level2type=N'COLUMN',@level2name=N'MaKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên kỉ luật' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KiLuat', @level2type=N'COLUMN',@level2name=N'TenKL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại công thức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiCongThuc', @level2type=N'COLUMN',@level2name=N'MaLoaiCT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại công thức' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiCongThuc', @level2type=N'COLUMN',@level2name=N'TenLoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại hợp đồng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiHopDong', @level2type=N'COLUMN',@level2name=N'MaLoaiHD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại hợp đồng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiHopDong', @level2type=N'COLUMN',@level2name=N'TenLoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiLuong', @level2type=N'COLUMN',@level2name=N'MaLoaiLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên loại lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiLuong', @level2type=N'COLUMN',@level2name=N'TenLoaiLuong'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chức vụ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'MaCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã phòng ban' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'MaPB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại lương' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NhanVien', @level2type=N'COLUMN',@level2name=N'MaLoaiLuong'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lương cơ bản' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhongBan', @level2type=N'COLUMN',@level2name=N'LuongCB'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTrangNhanVien', @level2type=N'COLUMN',@level2name=N'MaTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tình trạng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TinhTrangNhanVien', @level2type=N'COLUMN',@level2name=N'TenTT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã tôn giáo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TonGiao', @level2type=N'COLUMN',@level2name=N'MaTG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tôn giáo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TonGiao', @level2type=N'COLUMN',@level2name=N'TenTG'
GO
