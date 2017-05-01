USE [QLNhanVien]
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [LuongCB]) VALUES (N'1         ', N'Administrator', 6000000)
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [LuongCB]) VALUES (N'2         ', N'Trường Bộ Phận A', 4000000)
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [LuongCB]) VALUES (N'3         ', N'Trường Bộ Phận B', 4000000)
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [LuongCB]) VALUES (N'4         ', N'Trường Bộ Phận C', 4000000)
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [LuongCB]) VALUES (N'5         ', N'Nhân Viên', 300000)
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'1         ', N'Toàn Thời Gian', CAST(N'2016-04-25' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'10        ', N'Toàn Thời Gian', CAST(N'2016-05-03' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'2         ', N'Toàn Thời Gian', CAST(N'2017-01-20' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'3         ', N'Toàn Thời Gian', CAST(N'2016-05-30' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'4         ', N'Toàn Thời Gian', CAST(N'2016-07-30' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'5         ', N'Toàn Thời Gian', CAST(N'2016-09-30' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'6         ', N'Toàn Thời Gian', CAST(N'2017-04-28' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'7         ', N'Toàn Thời Gian', CAST(N'2017-02-20' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'8         ', N'Toàn Thời Gian', CAST(N'2016-10-20' AS Date))
INSERT [dbo].[HopDong] ([MaHD], [LoaiHD], [NgayKyHD]) VALUES (N'9         ', N'Toàn Thời Gian', CAST(N'2016-04-29' AS Date))
INSERT [dbo].[LoaiLuong] ([MaLoaiLuong], [TenLoaiLuong]) VALUES (N'1         ', N'ABC')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgayVaoLam], [MaCV], [MaBP], [MaPB], [MaHD], [MaLoaiLuong], [MaTTCT], [HinhAnh]) VALUES (N'1         ', N'Hưng', CAST(N'2017-04-30' AS Date), N'1         ', N'1         ', N'1         ', N'1         ', N'1         ', NULL, NULL)
INSERT [dbo].[PhanQuyen] ([MaPQ], [TenPQ]) VALUES (N'1         ', N'Administrator')
INSERT [dbo].[PhanQuyen] ([MaPQ], [TenPQ]) VALUES (N'2         ', N'Trưởng Bộ Phận A')
INSERT [dbo].[PhanQuyen] ([MaPQ], [TenPQ]) VALUES (N'3         ', N'Trường Bộ Phận B')
INSERT [dbo].[PhanQuyen] ([MaPQ], [TenPQ]) VALUES (N'4         ', N'Trường Bộ Phận C')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'1         ', N'Kinh')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'10        ', N'Gia Rai')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'11        ', N'Ê Đê')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'12        ', N'Ba Na')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'13        ', N'Xơ Đăng')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'14        ', N'Sán Chay')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'15        ', N'Cơ Ho')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'16        ', N'Chăm')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'17        ', N'Sán Dìu')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'18        ', N'Hrê')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'19        ', N'Ra Glai')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'2         ', N'Tày')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'21        ', N'X''Tiêng')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'22        ', N'Bru-Vân Kiều')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'23        ', N'Thổ')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'24        ', N'Khơ Mú')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'25        ', N'Cơ Tu')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'26        ', N'Giáy')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'27        ', N'Giẻ Riêng')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'28        ', N'Tà Ôi')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'29        ', N'Mạ')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'3         ', N'Thái')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'30        ', N'Co')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'31        ', N'Chơ Ro')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'32        ', N'Xinh Mun')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'33        ', N'Hà Nhì')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'34        ', N'Chu Ru')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'35        ', N'Lào')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'36        ', N'Kháng')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'37        ', N'La Chí')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'38        ', N'Phù Lá')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'39        ', N'La Hủ')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'4         ', N'Mường')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'40        ', N'La Ha')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'41        ', N'Phà Thẻn')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'42        ', N'Chứt')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'43        ', N'Lự')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'44        ', N'Lô Lô')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'45        ', N'Mảng')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'46        ', N'Cờ Lao')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'47        ', N'Bố Y')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'48        ', N'Cống')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'49        ', N'Ngái')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'5         ', N'Khơ Me')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'50        ', N'Si La')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'51        ', N'Pu Péo')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'52        ', N'Rơ Măm')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'53        ', N'Brâu')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'54        ', N'Ơ Đu')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'55        ', N'Khác')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'6         ', N'H''Mông')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'7         ', N'Nùng')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'8         ', N'Hoa')
INSERT [dbo].[DanToc] ([MaDT], [TenDT]) VALUES (N'9         ', N'Dao')
INSERT [dbo].[GioiTinh] ([MaGT], [TenGT]) VALUES (0, N'Nữ')
INSERT [dbo].[GioiTinh] ([MaGT], [TenGT]) VALUES (1, N'Nam')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'1         ', N'Việt Nam')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'10        ', N'Indonesia')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'11        ', N'Phillippnise')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'2         ', N'Nhật Bản')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'3         ', N'Hàn Quốc')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'4         ', N'Trung Quốc')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'5         ', N'Thái Lan')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'6         ', N'Campuchia')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'7         ', N'Lào')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'8         ', N'Singapore')
INSERT [dbo].[QuocGia] ([MaQG], [TenQG]) VALUES (N'9         ', N'Ấn Độ')
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'1         ', N'Hà Nội', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'10        ', N'Nam Định', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'11        ', N'Ninh Bình', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'12        ', N'Lai Châu', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'13        ', N'Lào Cai', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'14        ', N'Điện Biên', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'15        ', N'Yên Bái', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'16        ', N'Sơn La', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'17        ', N'Hòa Bình', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'18        ', N'Hà Giang', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'19        ', N'Cao Bằng', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'2         ', N'Hà Tây', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'20        ', N'Tuyên Quang', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'21        ', N'Bắc Kạn', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'22        ', N'Lạng Sơn', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'23        ', N'Thái Nguyên', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'24        ', N'Bắc Giang', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'25        ', N'Quảng Ninh', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'26        ', N'Phú Thọ', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'27        ', N'Thanh Hóa', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'28        ', N'Nghệ An', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'29        ', N'Hà Tĩnh', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'3         ', N'Vĩnh Phúc', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'30        ', N'Quảng Bình', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'31        ', N'Quảng Trị', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'32        ', N'Thừa Thiên Huế', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'33        ', N'Đà Nẵng', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'34        ', N'Quảng Nam', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'35        ', N'Quảng Ngãi', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'36        ', N'Bình Định', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'37        ', N'Phú Yên', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'38        ', N'Khánh Hòa', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'39        ', N'Ninh Thuận', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'4         ', N'Bắc Ninh', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'40        ', N'Bình Thuận', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'41        ', N'Gia Lai', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'42        ', N'KonTum', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'43        ', N'Dak Lak', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'44        ', N'Lâm Đồng', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'45        ', N'Dak Nông', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'46        ', N'TP Hồ Chí Minh', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'47        ', N'Bình Dương', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'48        ', N'Bình Phước', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'49        ', N'Tây Ninh', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'5         ', N'Hưng Yên', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'50        ', N'Đồng Nai', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'51        ', N'Bìa Rịa Vũng Tàu', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'52        ', N'Long An', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'53        ', N'Đồng Tháp', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'54        ', N'Tiền Giang', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'55        ', N'Bến Tre', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'56        ', N'An Giang', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'57        ', N'Cần Thơ', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'58        ', N'Vĩnh Long', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'59        ', N'Trà Vinh', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'6         ', N'Hà Nam', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'60        ', N'Kiên Giang', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'61        ', N'Hậu Giang', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'62        ', N'Sóc Trăng', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'63        ', N'Bạc Liêu', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'64        ', N'Cà Mau', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'7         ', N'Hải Dương', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'8         ', N'Hải Phòng', NULL)
INSERT [dbo].[Tinh/TP] ([MaTinh], [TenTinh], [MaQG]) VALUES (N'9         ', N'Thái Bình', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'1         ', N'Quận 1', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'10        ', N'Quận 2', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'11        ', N'Quận 3', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'12        ', N'Quận 10', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'13        ', N'Quận 11', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'14        ', N'Quận 4', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'15        ', N'Quận 5', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'16        ', N'Quận 6', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'17        ', N'Quận 8', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'18        ', N'Quận Bình Tân', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'19        ', N'Quận 7', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'2         ', N'Quận 12', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'20        ', N'Huyện Củ Chi', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'21        ', N'Huyện Hóc Môn', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'22        ', N'Huyện Bình Chánh', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'23        ', N'Huyện Nhà Bè', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'24        ', N'Huyện Cần Giờ', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'3         ', N'Quận Thủ Đức', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'4         ', N'Quận 9', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'5         ', N'Quận Gò vấp', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'6         ', N'Quận Bình Thạnh', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'7         ', N'Quận Tân Bình', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'8         ', N'Quận Tân Phú', NULL)
INSERT [dbo].[Quan/Huyen] ([MaQuan], [TenQuan], [MaTinh]) VALUES (N'9         ', N'Quận Phú Nhuận', NULL)
INSERT [dbo].[TonGiao] ([MaTG], [TenTG]) VALUES (N'1         ', N'Không Có')
INSERT [dbo].[TonGiao] ([MaTG], [TenTG]) VALUES (N'2         ', N'Phật Giáo')
INSERT [dbo].[TonGiao] ([MaTG], [TenTG]) VALUES (N'3         ', N'Thiên Chúa Giáo')
INSERT [dbo].[TonGiao] ([MaTG], [TenTG]) VALUES (N'4         ', N'Tin Lành')
INSERT [dbo].[TonGiao] ([MaTG], [TenTG]) VALUES (N'5         ', N'Do Thái Giáo')
INSERT [dbo].[TonGiao] ([MaTG], [TenTG]) VALUES (N'6         ', N'Ấn Độ Giáo')
