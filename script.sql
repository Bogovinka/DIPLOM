
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[LastName] [nvarchar](250) NULL,
	[Phone] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientContracts]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientContracts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[Contract] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conditions]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conditions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[IP] [nvarchar](250) NULL,
	[MAC] [nvarchar](250) NULL,
	[Type_Device_id] [int] NULL,
	[Conditions_id] [int] NULL,
	[Address] [nvarchar](250) NULL,
	[Note] [nvarchar](250) NULL,
	[ID_in_item] [int] NULL,
	[Login] [nvarchar](250) NULL,
	[Password] [nvarchar](250) NULL,
	[SNMP] [nvarchar](250) NULL,
	[Serial_num] [nvarchar](250) NULL,
	[Num_vlan] [nvarchar](250) NULL,
	[Brand_id] [int] NULL,
	[Model_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentWarehouse]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentWarehouse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[EquipmentWarehouseTypeID] [int] NULL,
	[SerialNum] [nvarchar](250) NULL,
	[ConditionsID] [int] NULL,
	[Model] [nvarchar](250) NULL,
	[StatusID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentWarehouseClient]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentWarehouseClient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentWarehouseID] [int] NULL,
	[ClientID] [int] NULL,
	[Size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentWarehouseMaster]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentWarehouseMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentWarehouseID] [int] NULL,
	[MasterID] [int] NULL,
	[Size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentWarehouseS]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentWarehouseS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentWarehouseID] [int] NULL,
	[WarehouseID] [int] NULL,
	[Size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentWarehouseStatus]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentWarehouseStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentWarehouseType]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentWarehouseType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logins]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[LastName] [nvarchar](250) NULL,
	[Phone] [nvarchar](250) NULL,
	[Login] [nvarchar](250) NULL,
	[Password] [nvarchar](250) NULL,
	[Permission] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusTask]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusTask](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDofType] [int] NOT NULL,
	[Contract] [int] NULL,
	[DateStart] [date] NULL,
	[DateEnt] [date] NULL,
	[Creator] [nvarchar](250) NULL,
	[MasterID] [int] NULL,
	[StatusTaskID] [int] NULL,
	[Addres] [nvarchar](250) NULL,
	[TypeID] [int] NULL,
	[PortID] [int] NULL,
	[Note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskEquipment]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskEquipment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NULL,
	[EquipmentWarehouse] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskEquipmentC]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskEquipmentC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NULL,
	[EquipmentWarehouse] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskTMC]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskTMC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaskID] [int] NULL,
	[TMCID] [int] NULL,
	[Size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMC]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Size] [int] NULL,
	[UnitID] [int] NULL,
	[WarehouseID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_Device]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Device](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeTask]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeTask](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 22.05.2023 0:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name]) VALUES (1, N'Mikrotik')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (2, N'D-link')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (3, N'Huawei')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (4, N'Cisco')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (5, N'BDCOM')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (6, N'HiWatch')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (7, N'Hikvision')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (8, N'B-Optix')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (9, N'SNR')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (10, N'Zyxel')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (11, N'Asus')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (12, N'TP-link')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (13, N'Inelt')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (14, N'Видеосервер')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (15, N'Сервер')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (16, N'Ubiquiti')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [Surname], [Name], [LastName], [Phone]) VALUES (1, N'Величко', N'Никита', N'Александрович', N'+7 (922) 238-5154')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientContracts] ON 

INSERT [dbo].[ClientContracts] ([ID], [ClientID], [Contract]) VALUES (1, 1, N'32343243')
SET IDENTITY_INSERT [dbo].[ClientContracts] OFF
GO
SET IDENTITY_INSERT [dbo].[Conditions] ON 

INSERT [dbo].[Conditions] ([ID], [Name]) VALUES (1, N'Новое')
INSERT [dbo].[Conditions] ([ID], [Name]) VALUES (2, N'Б/У')
SET IDENTITY_INSERT [dbo].[Conditions] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 

INSERT [dbo].[Equipment] ([ID], [Name], [IP], [MAC], [Type_Device_id], [Conditions_id], [Address], [Note], [ID_in_item], [Login], [Password], [SNMP], [Serial_num], [Num_vlan], [Brand_id], [Model_id]) VALUES (1, N'iNet', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Equipment] ([ID], [Name], [IP], [MAC], [Type_Device_id], [Conditions_id], [Address], [Note], [ID_in_item], [Login], [Password], [SNMP], [Serial_num], [Num_vlan], [Brand_id], [Model_id]) VALUES (2, N'test', N'google.com', N'gg:54:dd:43:fg:54', 1, 1, N'поселок Ишалино, ул. Мира 2', N'авыаывыв', 1, N'test', N'test', N'54354', N'432423', N'gfd32423', 2, 7)
INSERT [dbo].[Equipment] ([ID], [Name], [IP], [MAC], [Type_Device_id], [Conditions_id], [Address], [Note], [ID_in_item], [Login], [Password], [SNMP], [Serial_num], [Num_vlan], [Brand_id], [Model_id]) VALUES (3, N'test2', N'188.166.133.225', N'ff:2f:f2:1f:1f:1f', 1, 1, N'Челябинск, ул. Ковалевской 4', N'авыаываыва', 2, N'hhh', N'gfgh', N'hgh556', N'fsdf545', N'645654', 1, 7)
INSERT [dbo].[Equipment] ([ID], [Name], [IP], [MAC], [Type_Device_id], [Conditions_id], [Address], [Note], [ID_in_item], [Login], [Password], [SNMP], [Serial_num], [Num_vlan], [Brand_id], [Model_id]) VALUES (4, N'test3', N'175.221.222.155', N'f4:32:f2:11:23:45', 1, 1, N'Челябинск, ул. Краснооктябрьская 10', N'', 1, N'ttt', N'ggg', N'fsdf342', N'5435435', N'53434', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentWarehouse] ON 

INSERT [dbo].[EquipmentWarehouse] ([ID], [Name], [EquipmentWarehouseTypeID], [SerialNum], [ConditionsID], [Model], [StatusID]) VALUES (1, N'Test', 1, N'', 1, N'tre1', 1)
INSERT [dbo].[EquipmentWarehouse] ([ID], [Name], [EquipmentWarehouseTypeID], [SerialNum], [ConditionsID], [Model], [StatusID]) VALUES (2, N'DkO', 1, N'43242', 2, N'D-Link12', 1)
SET IDENTITY_INSERT [dbo].[EquipmentWarehouse] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentWarehouseClient] ON 

INSERT [dbo].[EquipmentWarehouseClient] ([ID], [EquipmentWarehouseID], [ClientID], [Size]) VALUES (1, 2, 1, NULL)
SET IDENTITY_INSERT [dbo].[EquipmentWarehouseClient] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentWarehouseS] ON 

INSERT [dbo].[EquipmentWarehouseS] ([ID], [EquipmentWarehouseID], [WarehouseID], [Size]) VALUES (1, 1, 1, 10)
SET IDENTITY_INSERT [dbo].[EquipmentWarehouseS] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentWarehouseStatus] ON 

INSERT [dbo].[EquipmentWarehouseStatus] ([ID], [Name]) VALUES (1, N'аренда')
INSERT [dbo].[EquipmentWarehouseStatus] ([ID], [Name]) VALUES (2, N'продано')
INSERT [dbo].[EquipmentWarehouseStatus] ([ID], [Name]) VALUES (3, N'склад')
SET IDENTITY_INSERT [dbo].[EquipmentWarehouseStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentWarehouseType] ON 

INSERT [dbo].[EquipmentWarehouseType] ([ID], [Name]) VALUES (1, N'роутер')
SET IDENTITY_INSERT [dbo].[EquipmentWarehouseType] OFF
GO
SET IDENTITY_INSERT [dbo].[Logins] ON 

INSERT [dbo].[Logins] ([ID], [Surname], [Name], [LastName], [Phone], [Login], [Password], [Permission]) VALUES (1, N'Якупов', N'Артур', N'Ильдусович', N'0', N'admin', N'admin', 1)
INSERT [dbo].[Logins] ([ID], [Surname], [Name], [LastName], [Phone], [Login], [Password], [Permission]) VALUES (2, N'Климов', N'Николай', N'Андреевич', N'8923123545', N'test', N'test1', 0)
SET IDENTITY_INSERT [dbo].[Logins] OFF
GO
SET IDENTITY_INSERT [dbo].[Model] ON 

INSERT [dbo].[Model] ([ID], [Name]) VALUES (1, N'RB3011UiAS')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (2, N'CCR1036-12G-4S')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (3, N'CRS328-4C-20S-4S+')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (4, N'RB2011UiAS-2HnD')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (5, N'RB2011UiAS')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (6, N'RB750UP')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (7, N'RBLHGG-60ad')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (8, N'DES-1210-28/me')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (9, N'DES-1228 ')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (10, N'DES-1210-28P')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (11, N'DES-3200-28')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (12, N'DES-3200-18')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (13, N'DES-3526')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (14, N'DES-1228/ME')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (15, N'DES-1228P')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (16, N'DGS-1210-20')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (17, N'S2326TP-EI')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (18, N'S2309TP-EI')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (19, N'NanoStation M2')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (20, N'Nanostation M2 loco')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (21, N'Nanostation M5')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (22, N'Nanostation M5 loco')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (23, N'NanoBridge M2')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (24, N'Nanobridge M5')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (25, N'PowerBeam M2')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (26, N'PowerBeam M5')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (27, N'NanoBeam M2')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (28, N'NanoBeam M5')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (29, N'Rocket M2')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (30, N'Rocket M5')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (31, N'OLT P3310D-2AC')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (32, N'DS-I200')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (33, N'ES-2108-G')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (34, N'RT-N10')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (35, N'RT-N11')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (36, N'RT-N12')
INSERT [dbo].[Model] ([ID], [Name]) VALUES (37, N'RT-N300')
SET IDENTITY_INSERT [dbo].[Model] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusTask] ON 

INSERT [dbo].[StatusTask] ([ID], [Name]) VALUES (1, N'в работе')
INSERT [dbo].[StatusTask] ([ID], [Name]) VALUES (2, N'завершено')
INSERT [dbo].[StatusTask] ([ID], [Name]) VALUES (3, N'новая')
SET IDENTITY_INSERT [dbo].[StatusTask] OFF
GO
SET IDENTITY_INSERT [dbo].[Task] ON 

INSERT [dbo].[Task] ([ID], [IDofType], [Contract], [DateStart], [DateEnt], [Creator], [MasterID], [StatusTaskID], [Addres], [TypeID], [PortID], [Note]) VALUES (1, 1, 1, CAST(N'2023-05-15' AS Date), CAST(N'2023-05-24' AS Date), N'Якупов Артур Ильдусович', 1, 3, N'Школьная 7', 1, 2, N'new')
INSERT [dbo].[Task] ([ID], [IDofType], [Contract], [DateStart], [DateEnt], [Creator], [MasterID], [StatusTaskID], [Addres], [TypeID], [PortID], [Note]) VALUES (2, 2, 1, CAST(N'2023-05-19' AS Date), CAST(N'2023-06-23' AS Date), N'Якупов Артур Ильдусович', 1, 1, N'лор', 1, 1, N'6546546')
INSERT [dbo].[Task] ([ID], [IDofType], [Contract], [DateStart], [DateEnt], [Creator], [MasterID], [StatusTaskID], [Addres], [TypeID], [PortID], [Note]) VALUES (3, 1, 1, CAST(N'2023-05-19' AS Date), CAST(N'2023-05-21' AS Date), N'Якупов Артур Ильдусович', 1, 3, N'рапрапр', 2, 1, N'рпарап')
INSERT [dbo].[Task] ([ID], [IDofType], [Contract], [DateStart], [DateEnt], [Creator], [MasterID], [StatusTaskID], [Addres], [TypeID], [PortID], [Note]) VALUES (4, 3, 1, CAST(N'2023-05-19' AS Date), CAST(N'2023-05-18' AS Date), N'Якупов Артур Ильдусович', 2, 1, N'рпарпарр', 1, 1, N'рпара')
INSERT [dbo].[Task] ([ID], [IDofType], [Contract], [DateStart], [DateEnt], [Creator], [MasterID], [StatusTaskID], [Addres], [TypeID], [PortID], [Note]) VALUES (5, 1, 1, CAST(N'2023-05-19' AS Date), CAST(N'2023-05-25' AS Date), N'Якупов Артур Ильдусович', 1, 2, N'рапрар', 3, 1, N'рапрапр')
SET IDENTITY_INSERT [dbo].[Task] OFF
GO
SET IDENTITY_INSERT [dbo].[TMC] ON 

INSERT [dbo].[TMC] ([ID], [Name], [Size], [UnitID], [WarehouseID]) VALUES (1, N'Гвозди', 550, 2, 1)
INSERT [dbo].[TMC] ([ID], [Name], [Size], [UnitID], [WarehouseID]) VALUES (2, N'Кабель', 1500, 1, 1)
SET IDENTITY_INSERT [dbo].[TMC] OFF
GO
SET IDENTITY_INSERT [dbo].[Type_Device] ON 

INSERT [dbo].[Type_Device] ([ID], [Name]) VALUES (1, N'Виртуальное')
INSERT [dbo].[Type_Device] ([ID], [Name]) VALUES (2, N'Сетевое')
INSERT [dbo].[Type_Device] ([ID], [Name]) VALUES (3, N'Клиентское')
SET IDENTITY_INSERT [dbo].[Type_Device] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeTask] ON 

INSERT [dbo].[TypeTask] ([ID], [Name]) VALUES (1, N'подключение')
INSERT [dbo].[TypeTask] ([ID], [Name]) VALUES (2, N'ремонт')
INSERT [dbo].[TypeTask] ([ID], [Name]) VALUES (3, N'ЗМС')
SET IDENTITY_INSERT [dbo].[TypeTask] OFF
GO
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([ID], [Name]) VALUES (1, N'м')
INSERT [dbo].[Unit] ([ID], [Name]) VALUES (2, N'шт')
SET IDENTITY_INSERT [dbo].[Unit] OFF
GO
SET IDENTITY_INSERT [dbo].[Warehouse] ON 

INSERT [dbo].[Warehouse] ([ID], [Name]) VALUES (1, N'Ишалино')
SET IDENTITY_INSERT [dbo].[Warehouse] OFF
GO
ALTER TABLE [dbo].[ClientContracts]  WITH CHECK ADD FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD FOREIGN KEY([Brand_id])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD FOREIGN KEY([Conditions_id])
REFERENCES [dbo].[Conditions] ([ID])
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD FOREIGN KEY([Model_id])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD FOREIGN KEY([Type_Device_id])
REFERENCES [dbo].[Type_Device] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouse]  WITH CHECK ADD FOREIGN KEY([ConditionsID])
REFERENCES [dbo].[Conditions] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouse]  WITH CHECK ADD FOREIGN KEY([EquipmentWarehouseTypeID])
REFERENCES [dbo].[EquipmentWarehouseType] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouse]  WITH CHECK ADD FOREIGN KEY([StatusID])
REFERENCES [dbo].[EquipmentWarehouseStatus] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouseClient]  WITH CHECK ADD FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouseClient]  WITH CHECK ADD FOREIGN KEY([EquipmentWarehouseID])
REFERENCES [dbo].[EquipmentWarehouse] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouseMaster]  WITH CHECK ADD FOREIGN KEY([EquipmentWarehouseID])
REFERENCES [dbo].[EquipmentWarehouse] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouseMaster]  WITH CHECK ADD FOREIGN KEY([MasterID])
REFERENCES [dbo].[Logins] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouseS]  WITH CHECK ADD FOREIGN KEY([EquipmentWarehouseID])
REFERENCES [dbo].[EquipmentWarehouse] ([ID])
GO
ALTER TABLE [dbo].[EquipmentWarehouseS]  WITH CHECK ADD FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Warehouse] ([ID])
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD FOREIGN KEY([Contract])
REFERENCES [dbo].[ClientContracts] ([ID])
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD FOREIGN KEY([MasterID])
REFERENCES [dbo].[Logins] ([ID])
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD FOREIGN KEY([PortID])
REFERENCES [dbo].[Equipment] ([ID])
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD FOREIGN KEY([StatusTaskID])
REFERENCES [dbo].[StatusTask] ([ID])
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeTask] ([ID])
GO
ALTER TABLE [dbo].[TaskEquipment]  WITH CHECK ADD FOREIGN KEY([EquipmentWarehouse])
REFERENCES [dbo].[EquipmentWarehouse] ([ID])
GO
ALTER TABLE [dbo].[TaskEquipment]  WITH CHECK ADD FOREIGN KEY([TaskID])
REFERENCES [dbo].[Task] ([ID])
GO
ALTER TABLE [dbo].[TaskEquipmentC]  WITH CHECK ADD FOREIGN KEY([EquipmentWarehouse])
REFERENCES [dbo].[EquipmentWarehouse] ([ID])
GO
ALTER TABLE [dbo].[TaskEquipmentC]  WITH CHECK ADD FOREIGN KEY([TaskID])
REFERENCES [dbo].[Task] ([ID])
GO
ALTER TABLE [dbo].[TaskTMC]  WITH CHECK ADD FOREIGN KEY([TaskID])
REFERENCES [dbo].[Task] ([ID])
GO
ALTER TABLE [dbo].[TaskTMC]  WITH CHECK ADD FOREIGN KEY([TMCID])
REFERENCES [dbo].[TMC] ([ID])
GO
ALTER TABLE [dbo].[TMC]  WITH CHECK ADD FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([ID])
GO
ALTER TABLE [dbo].[TMC]  WITH CHECK ADD FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Warehouse] ([ID])
GO

