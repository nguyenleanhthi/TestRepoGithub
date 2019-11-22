--CREATE DATABASE PM_QLBH01
--GO

USE PM_QLBH01
GO

-- BẢNG NHÓM NGƯỜI DÙNG

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_GroupUser](
	[GR_ID] int  Not null IDENTITY(1,1) ,
	[Group_Name] [nvarchar](100) NULL,
	[Group_NameEn] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_SYS_GROUP] PRIMARY KEY CLUSTERED 
(
	[GR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYS_GROUP_OBJECT]    Script Date: 11/12/2019 7:58:01 PM ******/
INSERT [dbo].[SYS_GroupUser] ([Group_Name], [Group_NameEn], [Description], [Active]) VALUES (N'admin', N'QT Hệ thống',  N'Quản lý Hệ Thống', 1)
INSERT [dbo].[SYS_GroupUser] ([Group_Name], [Group_NameEn], [Description], [Active]) VALUES (N'NS', N'Nhân Sự',  N'Quản lý nhân sự', 1)


select * from [SYS_GroupUser]

-- BẢNG NHÓM ĐỐI TƯỢNG CỦA GROUP  

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_Form_OBJECT](
	[Object_ID] [varchar](50) NOT NULL,
	[Form_ID] [varchar](20) NOT NULL,
	[OBForm_Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_SYS_GROUP_OBJECT] PRIMARY KEY CLUSTERED 
(
	[Object_ID] ASC
	
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name]) VALUES (N'HT01', 'HT',  N'Hệ Thống')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'HT02', 'HT',  N'Bảo Mật')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'HT03', 'HT',  N'Dữ Liệu')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name]) VALUES (N'DM01', 'DM',  N'Đối Tác')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'DM02', 'DM',  N'Kho Hàng')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'DM03', 'DM',  N'Bộ Phận')

INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name]) VALUES (N'CN01', 'CN',  N'Bán Hàng')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'CN02', 'CN',  N'Công Nợ')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'CN03', 'CN',  N'Tiện ích')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'CN04', 'CN',  N'Kho Hàng')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name]) VALUES (N'CN05', 'CN',  N'Hóa đơn')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'CN06', 'CN',  N'Báo Cáo')
INSERT [dbo].[SYS_Form_OBJECT] ([Object_ID], [Form_ID], [OBForm_Name])  VALUES (N'CN07', 'CN',  N'Công cụ')

-- bảng các đối tuongj con: 



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_OBJECT_CHILD](
	[OBJECT_CHILD_ID] int NOT NULL IDENTITY(1,1) ,
	[Object_ID] [varchar](50) NOT NULL,
	[Child_Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_SYS_OBJECT_CHILD] PRIMARY KEY CLUSTERED 
(
	[OBJECT_CHILD_ID] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name]) VALUES ( 'HT01',  N'Đơn vị')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ('HT02',  N'Quản lý phân quyền')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'HT02',  N'Đổi mật khẩu')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ('HT02',  N'Nhật ký hệ thống')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name]) VALUES ( 'HT03',  N'Sao lưu')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'HT03',  N'Hồi phục')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'HT03',  N'Sữa chữa')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ('HT03',  N'Kết Chuyển')

--

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name]) VALUES ( 'DM01',  N'Khu vực')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM01',  N'Khách hàng')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM01',  N'Nhà phân phối')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM02',  N'Kho')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name]) VALUES ( 'DM02',  N'Đơn vị')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM02',  N'Nhóm hàng')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM02',  N'Hàng hóa')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM02',  N'In mã vách')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM02',  N'Tỷ giá')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM02',  N'Quy đổi đơn vị')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM03',  N'Bộ phận')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'DM03',  N'Nhân Viên')

--

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name]) VALUES ( 'CN01',  N'Mua hàng')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'CN01',  N'Bán hàng')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'CN01',  N'Nhập hàng')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'CN01',  N'Xuất hàng')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name]) VALUES ('CN02',  N'Thu tiền')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ('CN02',  N'Trả tiền')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ('CN03',  N'Nhạp kho')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'CN03',  N'Xuất kho')
INSERT [dbo].[SYS_OBJECT_CHILD] ([Object_ID], [Child_Name])  VALUES ('CN03',  N'Tồn kho')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ('CN04',  N'Đóng gói')
INSERT [dbo].[SYS_OBJECT_CHILD] ([Object_ID], [Child_Name])  VALUES ( 'CN04',  N'Kiểm kê')
INSERT [dbo].[SYS_OBJECT_CHILD] ([Object_ID], [Child_Name])  VALUES ('CN04',  N'Chuyển kho')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'CN04',  N'Tổng hợp tồn kho')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ('CN05',  N'Hóa đơn')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ('CN05',  N'Quản lý chứng từ')

INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'CN06',  N'Báo cáo kho')
INSERT [dbo].[SYS_OBJECT_CHILD] ([Object_ID], [Child_Name])  VALUES ( 'CN06',  N'Doanh thu bán hàng')
INSERT [dbo].[SYS_OBJECT_CHILD] ([Object_ID], [Child_Name])  VALUES ( 'CN06',  N'Hạn sử dụng')

INSERT [dbo].[SYS_OBJECT_CHILD] ([Object_ID], [Child_Name])  VALUES ('CN07',  N'Đặt hàng')
INSERT [dbo].[SYS_OBJECT_CHILD] ( [Object_ID], [Child_Name])  VALUES ( 'CN07',  N'Nhập só dư ban đầu')
INSERT [dbo].[SYS_OBJECT_CHILD] ([Object_ID], [Child_Name])  VALUES ( 'CN07',  N'Lịch sử hàng hóa')



--------------------------------------

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_RULE_FORM](
	[ID] int  Not null IDENTITY(1,1) ,
	[GR_ID] int NOT NULL,
	[OBJECT_CHILD_ID] int NOT NULL,
	[AllowAdd] [bit] NULL,
	[AllowDelete] [bit] NULL,
	[AllowEdit] [bit] NULL,
	[AllowAccess] [bit] NULL,
	[AllowPrint] [bit] NULL,
	[AllowExport] [bit] NULL,
	[AllowImport] [bit] NULL,
	[Active] [bit]  NULL,
 CONSTRAINT [PK_SYS_RULE_FORM] PRIMARY KEY CLUSTERED 
(
	[ID]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--------------------------------------

INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  2, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  3, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  4, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  5, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  6, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  7, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  8, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  9, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  10, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  11, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  12, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  13, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  14, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  15, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  16, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  17, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  18, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  19, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  20, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  21, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  22, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  23, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  24, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  25, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  26, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  27, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  28, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  29, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  30, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  31, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  32, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  33, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  34, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  35, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  36, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  37, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  38, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  39, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  40, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[SYS_RULE_FORM] ([GR_ID], [OBJECT_CHILD_ID],  [AllowAdd], [AllowDelete], [AllowEdit], [AllowAccess], [AllowPrint], [AllowExport], [AllowImport]) VALUES ( 1,  41, 1, 1, 1, 1, 1, 1, 1)



----------------------------------------

/****** Object:  Table [dbo].[SYS_USER]    Script Date: 11/12/2019 7:58:02 PM ******/
-- BẢNG USER
--drop Table [SYS_USER]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYS_USER](
	[USER_ID] int IDENTITY(1,1) ,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[GR_ID] int NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_SYS_USER] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT [dbo].[SYS_USER] ([UserName], [Password], [GR_ID], [Description], [Active]) VALUES (N'admin', '01', 1, N'Nhân viên hệ thống', 1)
INSERT [dbo].[SYS_USER] ([UserName], [Password], [GR_ID], [Description], [Active]) VALUES (N'ns', '01', 2, N'Nhân viên nhân sự', 1)
INSERT [dbo].[SYS_USER] ([UserName], [Password], [GR_ID], [Description], [Active]) VALUES (N'ns1', '01', 2, N'Quản lý nhân sự', 1)


-- bảng form:

begin
CREATE TABLE [dbo].[SYS_FORM](
	[Form_ID] [nchar](10) NOT NULL,
	[Form_Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
 CONSTRAINT [PK_SYS_FORM] PRIMARY KEY CLUSTERED 
(
	[Form_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY] 
end

GO

INSERT [dbo].[SYS_FORM] ([Form_ID], [Form_Name], [Description]) VALUES (N'HT', N'Hệ Thống',  N'Form quản lý hệ thống')
INSERT [dbo].[SYS_FORM] ([Form_ID], [Form_Name], [Description]) VALUES (N'DM', N'Danh mục',  N'Form quản lý danh mục')
INSERT [dbo].[SYS_FORM] ([Form_ID], [Form_Name], [Description]) VALUES (N'CN', N'Chức Năng',  N'Form quản lý chức năng')


--ĐĂNG NHẬP HỆ THỐNG
begin
CREATE TABLE [dbo].[SYS_LOG](
	[SYS_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MChine] [nvarchar](200) NULL,
	[IP] [nchar](50) NULL,
	[UserID] [nchar](10) NULL,
	[Created] [datetime] NULL,
	[Module] [nvarchar](200) NULL,
	[Action] [int] NULL,
	[Action_Name] [nvarchar](50) NULL,
	[Reference] [varchar](20) NULL,
	[Description] [nvarchar](255) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_SYS_LOG] PRIMARY KEY CLUSTERED 
(
	[SYS_ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end

GO
SET IDENTITY_INSERT [dbo].[SYS_LOG] ON 
INSERT [dbo].[SYS_LOG] ([SYS_ID], [MChine], [IP], [UserID], [Created], [Module], [Action], [Action_Name], [Reference], [Description], [Active]) VALUES (86048, N'TRANNHAN-PC', N'TRANNHAN-PC', N'US000001', CAST(N'2015-09-03T14:58:40.660' AS DateTime), N'Hệ Thống', 0, N'Đăng Nhập', N'', N'Đăng Nhập Hệ Thống', 1)
INSERT [dbo].[SYS_LOG] ([SYS_ID], [MChine], [IP], [UserID], [Created], [Module], [Action], [Action_Name], [Reference], [Description], [Active]) VALUES (86049, N'TRANNHAN-PC', N'TRANNHAN-PC', N'US000001', CAST(N'2015-09-03T14:58:47.757' AS DateTime), N'Quản Lý Khách Hàng', 0, N'Xem', N'', N'Xem Quản Lý Khách Hàng', 1)
INSERT [dbo].[SYS_LOG] ([SYS_ID], [MChine], [IP], [UserID], [Created], [Module], [Action], [Action_Name], [Reference], [Description], [Active]) VALUES (86050, N'TRANNHAN-PC', N'TRANNHAN-PC', N'US000001', CAST(N'2015-09-03T14:58:47.980' AS DateTime), N'Quản Lý Khách Hàng', 0, N'Xem', N'', N'Xem Quản Lý Khách Hàng', 1)
INSERT [dbo].[SYS_LOG] ([SYS_ID], [MChine], [IP], [UserID], [Created], [Module], [Action], [Action_Name], [Reference], [Description], [Active]) VALUES (86051, N'TRANNHAN-PC', N'TRANNHAN-PC', N'US000001', CAST(N'2015-09-03T14:58:53.120' AS DateTime), N'Quản Lý Hàng Hoá', 0, N'Xem', N'', N'Xem Quản Lý Hàng Hoá', 1)
INSERT [dbo].[SYS_LOG] ([SYS_ID], [MChine], [IP], [UserID], [Created], [Module], [Action], [Action_Name], [Reference], [Description], [Active]) VALUES (86052, N'TRANNHAN-PC', N'TRANNHAN-PC', N'US000001', CAST(N'2015-09-03T14:58:57.950' AS DateTime), N'Hệ Thống', 0, N'Kết Thúc', N'', N'Kết Thúc Hệ Thống', 1)
INSERT [dbo].[SYS_LOG] ([SYS_ID], [MChine], [IP], [UserID], [Created], [Module], [Action], [Action_Name], [Reference], [Description], [Active]) VALUES (86053, N'TRANNHAN-PC', N'TRANNHAN-PC', N'US000001', CAST(N'2015-09-03T14:58:57.950' AS DateTime), N'Hệ Thống', 0, N'Kết Thúc', N'', N'Kết Thúc Hệ Thống', 1)


-- SYS_OBJECT
begin
CREATE TABLE [dbo].[SYS_OBJECT](
	[ID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Object_ID] [varchar](50) NOT NULL,
	[Object_Name] [nvarchar](50) NULL,
	[Object_NameEn] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[Parent_ID] [varchar](20) NULL,
	[Level] [int] NULL,
	[Order_ID] [int] NULL,
	[Owner] [nvarchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_SYS_OBJECT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO

SET IDENTITY_INSERT [dbo].[SYS_LOG] OFF
INSERT [dbo].[SYS_OBJECT] ([ID], [Object_ID], [Object_Name], [Object_NameEn], [Description], [Parent_ID], [Level], [Order_ID], [Owner], [Active]) VALUES (N'fdd06ebc-427a-4c28-a1ae-03b0e15964e6', N'bbiUnit', N'Đơn Vị', N'Unit', N'', N'rbpgDicStock', 2, 30, N'QLKBH', 1)
INSERT [dbo].[SYS_OBJECT] ([ID], [Object_ID], [Object_Name], [Object_NameEn], [Description], [Parent_ID], [Level], [Order_ID], [Owner], [Active]) VALUES (N'e56990a9-bb4c-41de-8923-086e96dbfeae', N'rpgReport', N'Báo Cáo', N'Report', N'', N'rbpStock', 1, 14, N'QLKBH', 1)
INSERT [dbo].[SYS_OBJECT] ([ID], [Object_ID], [Object_Name], [Object_NameEn], [Description], [Parent_ID], [Level], [Order_ID], [Owner], [Active]) VALUES (N'326c091d-27d8-408e-a9dd-0c9374b48601', N'rbpgSale', N'Bán Hàng', N'Sale', N'', N'rbpStock', 1, 9, N'QLKBH', 1)
INSERT [dbo].[SYS_OBJECT] ([ID], [Object_ID], [Object_Name], [Object_NameEn], [Description], [Parent_ID], [Level], [Order_ID], [Owner], [Active]) VALUES (N'fdff62dd-645d-4090-a8de-0f452e86e758', N'bbiVoucherManager', N'Quản Lý Chứng Từ', N'VoucherManager', N'', N'rpgInvoice', 2, 49, N'QLKBH', 1)
INSERT [dbo].[SYS_OBJECT] ([ID], [Object_ID], [Object_Name], [Object_NameEn], [Description], [Parent_ID], [Level], [Order_ID], [Owner], [Active]) VALUES (N'97930834-7385-4131-b1d6-13e89a94b48e', N'bbiEmployee', N'Nhân Viên', N'Employee', N'', N'rpgDeparment', 2, 36, N'QLKBH', 1)
INSERT [dbo].[SYS_OBJECT] ([ID], [Object_ID], [Object_Name], [Object_NameEn], [Description], [Parent_ID], [Level], [Order_ID], [Owner], [Active]) VALUES (N'2bf23d30-9bdc-435e-b1e2-2ac3fa16cb88', N'bbiStock', N'Kho', N'Stock', N'', N'rbpgDicStock', 2, 29, N'QLKBH', 1)
INSERT [dbo].[SYS_OBJECT] ([ID], [Object_ID], [Object_Name], [Object_NameEn], [Description], [Parent_ID], [Level], [Order_ID], [Owner], [Active]) VALUES (N'ff1103df-b69c-40ef-bea9-2f73ef0bc41b', N'bbiProvider', N'Nhà Phân Phối', N'Provider', N'', N'rbpgPartner', 2, 28, N'QLKBH', 1)


-- BẢNG KHÁCH HÀNG

begin
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NguoiLienHe] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[DiDong] [nvarchar](20) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Website] [nvarchar](20) NULL,
	[MaSoThue] [nvarchar](50) NULL,
	[SoTK] [nvarchar](50) NULL,
	[TenNganHang] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[MaKV]  [nchar](10) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
) ON [PRIMARY] FILESTREAM_ON [FILESTREAM_CMMS_DATA]
) ON [PRIMARY] 
end
GO

INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000001', N'Công ty Quang Phúc',				N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000001')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000002', N'Thông_ anh An 451 Hai Bà Trưng',	N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000002')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000003', N'Huệ_GPS Thủ Đức',					N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000003')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000004', N'Huệ_Lê Trực',						N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000001')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000005', N'Thông_lock & lock Trần Hưng',		N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000002')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000006', N'A Trang Hitech',					N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000003')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000007', N'Dũng_Bệnh viện 115',				N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000001')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000008', N'Dũng_công ty Kiều An',			N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000002')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000009', N'Huệ_ anh Chương Hùng Vương Plaza',N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000003')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000010', N'Tuấn_Tech VN',					N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000001')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000011', N'Tuấn_Etown',						N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000002')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000012', N'Tuấn_Ngọc Phát',					N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000003')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000013', N'Tuấn_BIDV',						N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000001')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [NguoiLienHe], [DiaChi], [DienThoai], [DiDong], [Fax], [Email], [Website], [MaSoThue], [SoTK], [TenNganHang], [Active], [MaKV]) VALUES (N'KH000014', N'Cao Đế Năng-Chị Thảo',			N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1 , N'KV000002')



-- LOẠI KHÁCH HÀNG

begin
CREATE TABLE [dbo].[LOAIKHACHHANG](
	[MaLoai] [nchar](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIKHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
) ON [PRIMARY] FILESTREAM_ON [FILESTREAM_CMMS_DATA]
) ON [PRIMARY] 
end
GO

-- HÀNG HÓA

begin
CREATE TABLE [dbo].[HANGHOA](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[DonVi] [nvarchar](10) NULL,
	[LoaiGia] [nvarchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
	[CK%] [float] NULL,
	[ChietKhau] [float] NULL,
	[ThanhToan] [float] NULL,
 CONSTRAINT [PK_HANGHOA] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
) ON [PRIMARY]
) ON [PRIMARY] 
end
GO  

-- LOẠI HÀNG HÓA:

begin
CREATE TABLE [dbo].[LOAIHANGHOA](
	[MaLoai] [nchar](10) NOT NULL,
	[MaNhom] [nchar](10) NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIHANGHOA] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO


-- NHÀ CUNG CẤP:

begin
CREATE TABLE [dbo].[NCC](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[NguoiLH] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](20) NULL,
	[DiDong] [varchar](50) NULL,
	[Fax] [varchar](20) NULL,
	[Active] [bit] NULL,
	[MaKV]  [nchar](10) NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO


GO
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000001', N'Công ty CP Minh An',								N'', N'', N'', N'', N'', N'', 1, N'KV000003')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000004', N'Công ty TNHH TMDV Sao Việt',						N'', N'', N'', N'', N'', N'', 1, N'KV000001')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000005', N'Công ty Phúc Bình',								N'', N'', N'', N'', N'', N'', 1, N'KV000002')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000006', N'Công ty Hàn Việt',								N'', N'', N'', N'', N'', N'', 1, N'KV000003')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000007', N'Trung tâm kinh doanh di động BBMobile',           N'', N'', N'', N'', N'', N'', 1, N'KV000001')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000008', N'Công ty TNHH Thương mại Quốc Tế HPT Việt Nam',	N'', N'', N'', N'', N'', N'', 1, N'KV000002')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000009', N'Công ty MINH TÍN',								N'', N'', N'', N'', N'', N'', 1, N'KV000003')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000010', N'Công ty ESACO',									N'', N'', N'', N'', N'', N'', 1, N'KV000001')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000011', N'VŨ TOÀN THIỆN',									N'', N'', N'', N'', N'', N'', 1, N'KV000002')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000012', N'Công ty TNHH TMDV Sao Nam An',					N'', N'', N'', N'', N'', N'', 1, N'KV000003')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000013', N'Công ty TNHH Biển Bạc',							N'', N'', N'', N'', N'', N'', 1, N'KV000001')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000014', N'Tân Phát',										N'', N'', N'', N'', N'', N'', 1, N'KV000002')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000015', N'Công ty CP TM DV Thiết Bị Giám Sát Bảo Toàn',		N'', N'', N'', N'', N'', N'', 1, N'KV000003')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000016', N'Công ty TNHH TM DV Minh Nhãn',					N'', N'', N'', N'', N'', N'', 1, N'KV000001')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000017', N'Công ty Đại Minh',								N'', N'', N'', N'', N'', N'', 1, N'KV000002')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000018', N'Linh kiện vi tính Tân Phát',						N'', N'', N'', N'', N'', N'', 1, N'KV000003')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000019', N'Công ty  TNHH Đồng Bằng',							N'', N'', N'', N'', N'', N'', 1, N'KV000001')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000020', N'Công ty TNHH TMDV Truyền Thông Mặt Trời',			N'', N'', N'', N'', N'', N'', 1, N'KV000002')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000021', N'Cty TNHH Thương mại KT Tin Học Anh Ngọc',			N'', N'', N'', N'', N'', N'', 1, N'KV000003')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000022', N'Công ty CP Thế Giới Di Động',						N'', N'', N'', N'', N'', N'', 1, N'KV000001')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000023', N'Công ty TNHH TM TC Samsung',						N'', N'', N'', N'', N'', N'', 1, N'KV000002')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [NguoiLH], [ChucVu], [DiaChi], [DienThoai], [DiDong], [Fax], [Active], [MaKV]) VALUES (N'NCC000024', N'Công ty CP TM Công Nghệ Điện Tử Viễn Thông TES',	N'', N'', N'', N'', N'', N'', 1, N'KV000003')




-- KHU VỰC

begin
CREATE TABLE [dbo].[KHUVUC](
	[MaKV] [nchar](10) NOT NULL,
	[TenKV] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_KHUVUC] PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO


GO
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV], [GhiChu], [Active]) VALUES (N'KV000001', N'Miền Nam', N'', 1)
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV], [GhiChu], [Active]) VALUES (N'KV000002', N'Miền Bắc', N'', 1)
INSERT [dbo].[KHUVUC] ([MaKV], [TenKV], [GhiChu], [Active]) VALUES (N'KV000003', N'Miền Trung', N'', 1)

-- KHOHANG

begin
CREATE TABLE [dbo].[KHOHANG](
	[MaKho] [nchar](10) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
	[LienHe] [nvarchar] (50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[KyHieu] [nvarchar](20) NULL,
	[GhiChu] [nvarchar](20) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_KHOHANG] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO

GO
INSERT [dbo].[KHOHANG] ([MaKho], [TenKho], [LienHe], [DiaChi], [DienThoai], [KyHieu], [GhiChu], [Active]) VALUES (N'CT' , N'Kho công ty', N'', N'', N'', N'', N'', 1)
INSERT [dbo].[KHOHANG] ([MaKho], [TenKho], [LienHe], [DiaChi], [DienThoai], [KyHieu], [GhiChu], [Active]) VALUES (N'CT2', N'Kho Hà Nội', N'', N'', N'', N'', N'', 1)
INSERT [dbo].[KHOHANG] ([MaKho], [TenKho], [LienHe], [DiaChi], [DienThoai], [KyHieu], [GhiChu], [Active]) VALUES (N'CT3', N'Kho Phạm Văn Hai', N'', N'', N'', N'', N'', 1)
INSERT [dbo].[KHOHANG] ([MaKho], [TenKho], [LienHe], [DiaChi], [DienThoai], [KyHieu], [GhiChu], [Active]) VALUES (N'K000001', N'Kho 6 HCM', N'', N'', N'', N'', N'', 1)


-- NHOMHANG

begin
CREATE TABLE [dbo].[NHOMHANG](
	[MaNhom] [nchar](10) NOT NULL,
	[TenNhom] [nvarchar](50) NULL,
	[GhiChu] [nvarchar] (50) NULL,
	[Active] [bit] NULL
 CONSTRAINT [PK_NHOMHANG] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO

GO
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'ANS' , N'An ninh siêu thị', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'BAT', N'Báo trộm, báo cháy', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'CAM', N'Camera quan sát', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'CARCAM', N'Camera hành trình', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'CHA' , N'Máy chấm công', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'CHM', N'Chuông cửa màn hình', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'DAC', N'Dây cáp', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'DAG', N'Đầu ghi', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'KIS' , N'Kiểm soát ra vào', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'NH000001', N'Hàng cũ', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'NH000002', N'Secure display', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'OCU', N'Ổ cứng',N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'TBK' , N'Thiết bị khác', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'TBN', N'Thiết bị hội nghị', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'TBV', N'Thiết bị định vị', N'', 1)
INSERT [dbo].[NHOMHANG] ([MaNhom], [TenNhom], [GhiChu], [Active]) VALUES (N'TDKL', N'Tay dò kim loại', N'', 1)

-- DONVITINH

begin
CREATE TABLE [dbo].[DONVITINH](
	[MaDVT] [nchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_DONVITINH] PRIMARY KEY CLUSTERED 
(
	[MaDVT] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO

go
INSERT [dbo].[DONVITINH] ([MaDVT], [Ten], [GhiChu], [Active]) VALUES (N'DV01', N'cái', N'', 1)
INSERT [dbo].[DONVITINH] ([MaDVT], [Ten], [GhiChu], [Active]) VALUES (N'DV02', N'bộ', N'', 1)
INSERT [dbo].[DONVITINH] ([MaDVT], [Ten], [GhiChu], [Active]) VALUES (N'DV03', N'Thùng', N'', 1)
INSERT [dbo].[DONVITINH] ([MaDVT], [Ten], [GhiChu], [Active]) VALUES (N'DV04', N'cái', N'', 1)


-- TIENTE

begin
CREATE TABLE [dbo].[TIENTE](
	[MaTT] [nchar](10) NOT NULL,
	[TenTT] [nvarchar](50) NULL,
	[TGQD] [float] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_TIENTE] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO

go
INSERT [dbo].[TIENTE] ([MaTT], [TenTT], [TGQD], [Active]) VALUES (N'VND', N'Việt Nam Đồng', 1, 1)
INSERT [dbo].[TIENTE] ([MaTT], [TenTT], [TGQD], [Active]) VALUES (N'USD', N'Dola My', 20.000, 1)
INSERT [dbo].[TIENTE] ([MaTT], [TenTT], [TGQD], [Active]) VALUES (N'GBP', N'Bang Anh', 26.149, 1)
INSERT [dbo].[TIENTE] ([MaTT], [TenTT], [TGQD], [Active]) VALUES (N'EUR', N'Đồng tiền chung EU', 17.988, 1)


-- TONKHO

begin
CREATE TABLE [dbo].[TONKHO](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[DonVi] [nchar] (10) NULL,
	[SoLuong] [nvarchar](50) NULL,
	[MaKho] [nchar](10) NULL,
	[NhomHang] [nchar](10) NULL,
	[Active] [bit] NULL
 CONSTRAINT [PK_TONKHO] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO

GO
INSERT [dbo].[TONKHO] ([MaHang], [TenHang], [DonVi], [SoLuong], [MaKho], [NhomHang], [Active]) VALUES (N'CAM0216' , N'Camera Foscam FI9821W màu trắng', N'DV01', 1, N'CT3', N'CAM', 1)
INSERT [dbo].[TONKHO] ([MaHang], [TenHang], [DonVi], [SoLuong], [MaKho], [NhomHang], [Active]) VALUES (N'ANS0133', N'Cổng từ  Foxcom EAS5000EL', N'DV01', 1, N'CT3', N'ANS', 1)
INSERT [dbo].[TONKHO] ([MaHang], [TenHang], [DonVi], [SoLuong], [MaKho], [NhomHang], [Active]) VALUES (N'ANS0069', N'Tem cứng loại nhỏ HP20', N'DV03', 99, N'CT3', N'ANS', 1)
INSERT [dbo].[TONKHO] ([MaHang], [TenHang], [DonVi], [SoLuong], [MaKho], [NhomHang], [Active]) VALUES (N'HH000010', N'Test QB tức thì', N'DV01', 209, N'CT2', N'CHA', 1)
INSERT [dbo].[TONKHO] ([MaHang], [TenHang], [DonVi], [SoLuong], [MaKho], [NhomHang], [Active]) VALUES (N'CAM0217' , N'Camera Foscam FI9821W màu trắng', N'DV02', 1, N'CT2', N'CHM', 1)
INSERT [dbo].[TONKHO] ([MaHang], [TenHang], [DonVi], [SoLuong], [MaKho], [NhomHang], [Active]) VALUES (N'ANS0081', N'Tem từ giấy 4x4 Hưng Việt', N'DV02', 159, N'CT2', N'DAC', 1)
INSERT [dbo].[TONKHO] ([MaHang], [TenHang], [DonVi], [SoLuong], [MaKho], [NhomHang], [Active]) VALUES (N'CAM0218', N'Camera Foscam FI9821W màu trắng', N'DV01', 100, N'CT', N'ANS', 1)
INSERT [dbo].[TONKHO] ([MaHang], [TenHang], [DonVi], [SoLuong], [MaKho], [NhomHang], [Active]) VALUES (N'ANS0114', N'Bàn chiết nạp tem thư viện ADV800', N'DV01', 20, N'CT', N'DAC', 1)


-- HÀNG HÓA VÀ DỊCH VỤ

begin
CREATE TABLE [dbo].[HANGHOA_DICHVU](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[DonVi] [nvarchar](10) NULL,
	[GiaMua] [float] NULL,
	[GiabanSi] [float] NULL,
	[GiaBanLe] [float] NULL,
	[ToiThieu] [float] NULL,
	[TinhChat] [nvarchar](20) NULL,
	[KhoMacDinh] [nvarchar](20) NULL,
	[Active] [bit] NULL,
	[MaNhom] [nchar](10) NULL,
 CONSTRAINT [PK_HH_DV] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)  ON [PRIMARY]
) ON [PRIMARY] 
end
GO  

GO
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0001', N'Tem từ giấy  4x4', N'cuộn', 0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'ANS')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0002', N'Tem từ giấy 3x3', N'cuộn', 0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'BAT')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0003', N'Dây đeo kim loại BB L002', N'cuộn', 0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'CAM')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0004', N'Dây đeo nhựa BB L003/G', N'cái',  0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'CARCAM')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0005', N'Mở khóa DO-0004', N'cái',  0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'CHA')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0006', N'Cổng từ  Foxcom EAS5000', N'cái',  0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'CHM')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0007', N'Cổng từ  Foxcom EAS5001', N'cuộn', 0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'DAC')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0008', N'Cổng từ Foxcom 5002', N'cuộn', 0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'DAG')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0009', N'Cổng từ Foxcom 5005', N'bộ',   0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'KIS')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0010', N'Cổng từ Foxcom  EAS5011', N'bộ',   0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'NH000001')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0011', N'Cổng từ Foxcom EAS5012',  N'bộ',   0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'NH000002')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0012', N'Đinh ghim nhựa', N'bộ',   0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'OCU')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0013', N'Đinh ghim sắt', N'cuộn', 0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'TBK')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0014', N'Bàn khử từ Biển Bạc', N'Thùng',0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'TBN')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0015', N'Tem trắng AM super tag lớn', N'Thùng',0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'TBV')
INSERT [dbo].[HANGHOA_DICHVU] ([MaHang], [TenHang], [DonVi], [GiaMua], [GiabanSi], [GiaBanLe], [ToiThieu], [TinhChat], [KhoMacDinh], [Active], [MaNhom]) VALUES (N'ANS0016', N'Tem trắng lùn',  N'Thùng',0, 0, 0, 0, N'Hàng hóa', N'Kho công ty', 1, 'TDKL')


-- PHƯƠNG THỨC THANH TOÁN

begin
CREATE TABLE [dbo].[PHUONGTHUCTHANHTOAN](
	[MaPT] [nchar](10) NOT NULL,
	[TenPT] [nvarchar](50) NULL,
	[KiHieu] [nvarchar](50) NULL,

 CONSTRAINT [PK_PTTT] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
) ON [PRIMARY]
) ON [PRIMARY] 
end

GO  

go
INSERT [dbo].[PHUONGTHUCTHANHTOAN] ([MaPT], [TenPT], [KiHieu]) VALUES (N'TM', N'Tiền mặt', '11111111-1111-1111-1111-1111111111111')
INSERT [dbo].[PHUONGTHUCTHANHTOAN] ([MaPT], [TenPT], [KiHieu]) VALUES (N'CK', N'Chuyển khoản', '22222222-2222-2222-222222222222')


-- PHIẾU NHẬP HÀNG

begin
CREATE TABLE [dbo].[PHIEUNHAPHANG](
	[MaPhieu] [nchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](10) NULL,
	[DienThoai] [float] NULL,
	[GhiChu] [float] NULL,
	[SoHoaDonVAT] [float] NULL,
	[SoPhieuVietTay] [float] NULL,
	[NgaylapPhieu] [datetime] NULL,
	[DKTT] [nvarchar](50) NULL,
	[ThoiHanTT] [datetime] NULL,
	[NhanVien] [nchar](10) NULL,
	[KhoNhap] [nchar](10) NULL,
	[MaNCC] [nchar](10) NULL,
	[ThanhToan] [nchar](10) NULL,
 CONSTRAINT [PK_PHIEUNHAPHANG] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
) ON [PRIMARY]
) ON [PRIMARY] 
end
GO  


-- BỘ PHẬN

begin
CREATE TABLE [dbo].[BOPHAN](
	[MaBP] [nchar](10) NOT NULL,
	[TenBP] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](20) NULL,
	[Active] [bit] NULL
 CONSTRAINT [PK_BOPHAN] PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
) ON [PRIMARY]
) ON [PRIMARY]
end
GO  


go
INSERT [dbo].[BOPHAN] ([MaBP], [TenBP], [GhiChu], [Active]) VALUES (N'GD', N'Giám Đốc', N'', 1)
INSERT [dbo].[BOPHAN] ([MaBP], [TenBP], [GhiChu], [Active]) VALUES (N'KD', N'Phòng Kinh Doanh', N'', 1)
INSERT [dbo].[BOPHAN] ([MaBP], [TenBP], [GhiChu], [Active]) VALUES (N'KT', N'Phòng kế toán', N'', 1)
INSERT [dbo].[BOPHAN] ([MaBP], [TenBP], [GhiChu], [Active]) VALUES (N'KTH', N'Phòng Kỹ Thuật', N'', 1)


-- NHANVIEN

begin
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nchar](20) NOT NULL,
	[DiDong] [nvarchar](20) NULL,
	[Email] [nvarchar](20) NULL,
	[BoPhan] [nchar](10) NULL,
	[Active] [bit] NULL
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
) ON [PRIMARY]
) ON [PRIMARY] 
end
GO  


go
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000001', N'Nguyễn Thị Minh  Huệ', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'GD', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000002', N'Phan Quang Thông', N'', '0946 980 409', '0946 980 409', 'hoangdung@hptvn.com', N'KD', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000003', N'Nguyễn Hoàng Dũng', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KT', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000004', N'Vũ Anh Tuấn', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KTH', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000005', N'Huỳnh Thị Ngọc Lãnh', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KD', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000006', N'Phạm Bảo Trung', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KT', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000007', N'Phạm Thành Sơn', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'GD', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000008', N'Huỳnh Ngọc Trung', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KT', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000009', N'Đoàn Thị Thu Thảoh', N'', '0946 980 409', '0946 980 409', 'thaodoan@hptvn.com', N'KD', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000010', N'Mai Văn Thái', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KT', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000011', N'Nguyễn Thị Thu Trang', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KTH', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000012', N'Nguyễn Huỳnh Phước Đức', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KD', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000013', N'Nguyễn Văn Viết  Sỹ', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KT', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000014', N'Nguyễn Duy trung Chiến', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KD',  1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [DienThoai], [DiDong], [Email], [BoPhan], [Active]) VALUES (N'NV000015', N'Nguyễn Đức Việt', N'', '0946 980 409', '0946 980 409', 'quangthong@hptvn.com', N'KTH', 1)
												

-- PHIẾU XUẤT

begin
CREATE TABLE [dbo].[PHIEUXUAT](
	[MaPhieu] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](10) NULL,
	[DienThoai] [float] NULL,
	[GhiChu] [float] NULL,
	[SoHoaDonVAT] [float] NULL,
	[SoPhieuNhapTay] [float] NULL,
	[NgayLapPhieu] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DKTT] [nvarchar](50) NULL,
	[ThoiHanTT] [datetime] NULL,
	[NhanVien] [nchar](10) NULL,
	[KhoXuat] [nchar](10) NULL,
	[MaNCC] [nchar](10) NULL,
	[ThanhToan] [nchar](10) NULL,
 CONSTRAINT [PK_PHIEUXUAT] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
) ON [PRIMARY]
) ON [PRIMARY] 
end
GO  


-- FK - PK


--ALTER TABLE [dbo].[SYS_USER_RULE]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USER_RULE_SYS_GROUP] FOREIGN KEY([Group_ID])
--REFERENCES [dbo].[SYS_GROUP] ([Group_ID])
--
--ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK_USER_SYS_GROUP] FOREIGN KEY([Group_ID])
--REFERENCES [dbo].[SYS_GROUP] ([Group_ID])
--
--ALTER TABLE [dbo].[SYS_USER_RULE]  WITH CHECK ADD  CONSTRAINT [FK_SYS_USER_RULE_PHAN_QUYEN] FOREIGN KEY([Rule_ID])
--REFERENCES [dbo].[PHAN_QUYEN] ([Rule_ID])

ALTER TABLE [dbo].[KHACHHANG]  WITH CHECK ADD  CONSTRAINT [FK_KHACHHANG_KHUVUC] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KHUVUC] ([MaKV])

ALTER TABLE [dbo].[NCC]  WITH CHECK ADD  CONSTRAINT [FK_NCC_KHUVUC] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KHUVUC] ([MaKV])


ALTER TABLE [dbo].[HANGHOA_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_DICHVU_NHOMHANG] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NHOMHANG] ([MaNhom])

ALTER TABLE [dbo].[PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPHANG_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])

ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUXUAT_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])

ALTER TABLE [dbo].[PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPHANG_KHOHANG] FOREIGN KEY([KhoNhap])
REFERENCES [dbo].[KHOHANG] ([MaKho])

ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUXUAT_KHOHANG] FOREIGN KEY([KhoXuat])
REFERENCES [dbo].[KHOHANG] ([MaKho])

ALTER TABLE [dbo].[PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPHANG_NHANVIEN] FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNV])

ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUXUAT_NHANVIEN] FOREIGN KEY([NhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNV])

ALTER TABLE [dbo].[PHIEUNHAPHANG]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAPHANG_PTTT] FOREIGN KEY([ThanhToan])
REFERENCES [dbo].[PHUONGTHUCTHANHTOAN] ([MaPT])

ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUXUAT_PTTT] FOREIGN KEY([ThanhToan])
REFERENCES [dbo].[PHUONGTHUCTHANHTOAN] ([MaPT])

ALTER TABLE [dbo].[TONKHO]  WITH CHECK ADD  CONSTRAINT [FK_TONKHO_KHOHANG] FOREIGN KEY([MaKho])
REFERENCES [dbo].[KHOHANG] ([MaKho])

ALTER TABLE [dbo].[TONKHO]  WITH CHECK ADD  CONSTRAINT [FK_TONKHO_NHOMHANG] FOREIGN KEY([NhomHang])
REFERENCES [dbo].[NHOMHANG] ([MaNhom])

ALTER TABLE [dbo].[TONKHO]  WITH CHECK ADD  CONSTRAINT [FK_TONKHO_DONVITINH] FOREIGN KEY([DonVi])
REFERENCES [dbo].[DONVITINH] ([MaDVT])

ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_BOPHAN] FOREIGN KEY([BoPhan])
REFERENCES [dbo].[BOPHAN] ([MaBP])

