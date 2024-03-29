USE [LiveSupport]
GO
/****** 对象:  Table [dbo].[LiveChat_ChatMessages]    脚本日期: 04/12/2009 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LiveChat_ChatMessages](
	[MessageID] [bigint] IDENTITY(1,1) NOT NULL,
	[ChatID] [char](39) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[FromName] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_ChatMessages_FromName]  DEFAULT (''),
	[Message] [varchar](3000) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_ChatMessages_Message]  DEFAULT (''),
	[SentDate] [bigint] NOT NULL,
 CONSTRAINT [PK_ASPLiveSupport_ChatMessages] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[LiveChat_ChatRequests]    脚本日期: 04/12/2009 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LiveChat_ChatRequests](
	[ChatID] [char](39) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[AccountId] [int] NULL,
	[VisitorIP] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_ChatRequests_VisitorIP]  DEFAULT (''),
	[VisitorName] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_LiveChat_ChatRequests_VisitorName]  DEFAULT (''),
	[VisitorEmail] [varchar](225) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_LiveChat_ChatRequests_VisitorEmail]  DEFAULT (''),
	[VisitorUserAgent] [varchar](125) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_LiveChat_ChatRequests_VisitorUserAgent]  DEFAULT (''),
	[OperatorID] [int] NOT NULL CONSTRAINT [DF_LiveChat_ChatRequests_OperatorID]  DEFAULT ((-1)),
	[RequestDate] [smalldatetime] NOT NULL CONSTRAINT [DF_ASPLiveSupport_ChatRequests_RequestDate]  DEFAULT (getdate()),
	[AcceptDate] [smalldatetime] NULL,
	[ClosedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_ASPLiveSupport_ChatRequests] PRIMARY KEY CLUSTERED 
(
	[ChatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[LiveChat_LogAccess]    脚本日期: 04/12/2009 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LiveChat_LogAccess](
	[LogAccessID] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NULL,
	[PageRequested] [varchar](500) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_LogAccess_PageRequested]  DEFAULT (''),
	[DomainRequested] [varchar](250) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_LogAccess_DomainRequested]  DEFAULT (''),
	[RequestedTime] [smalldatetime] NOT NULL CONSTRAINT [DF_ASPLiveSupport_LogAccess_RequestedTime]  DEFAULT (getdate()),
	[Referrer] [varchar](500) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_LogAccess_Referrer]  DEFAULT (''),
	[VisitorUserAgent] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_LogAccess_VisitorUserAgent]  DEFAULT (''),
	[VisitorIP] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_LogAccess_VisitorIP]  DEFAULT (''),
 CONSTRAINT [PK_ASPLiveSupport_LogAccess] PRIMARY KEY CLUSTERED 
(
	[LogAccessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[LiveChat_Operators]    脚本日期: 04/12/2009 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LiveChat_Operators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[Name] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_Operators_OperatorName]  DEFAULT (''),
	[Password] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_Operators_OperatorPassword]  DEFAULT ('nopw'),
	[Email] [varchar](250) COLLATE Chinese_PRC_CI_AS NOT NULL CONSTRAINT [DF_ASPLiveSupport_Operators_OperatorEmail]  DEFAULT (''),
	[IsOnline] [bit] NOT NULL CONSTRAINT [DF_ASPLiveSupport_Operators_OperatorStatus]  DEFAULT ((0)),
 CONSTRAINT [PK_LiveChat_Operators_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: Offline | 1: Online | 2: Be Right Back' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LiveChat_Operators', @level2type=N'COLUMN',@level2name=N'IsOnline'
GO
/****** 对象:  Table [dbo].[LiveSupport_Accounts]    脚本日期: 04/12/2009 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LiveSupport_Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdminUserId] [uniqueidentifier] NOT NULL,
	[PaymentId] [int] NULL,
	[Name] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[Email] [nvarchar](60) COLLATE Chinese_PRC_CI_AS NULL,
	[RegisterDate] [datetime] NOT NULL CONSTRAINT [DF_LiveSupport_Accounts_RegisterDate]  DEFAULT (getdate()),
	[Address] [nvarchar](60) COLLATE Chinese_PRC_CI_AS NULL,
	[City] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[Region] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[PostalCode] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[Country] [nvarchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[Phone] [nvarchar](24) COLLATE Chinese_PRC_CI_AS NULL,
	[Notes] [ntext] COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_LiveSupport_Accounts_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[LiveSupport_Payment]    脚本日期: 04/12/2009 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiveSupport_Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[PayDate] [datetime] NOT NULL,
	[ExpireDate] [datetime] NOT NULL,
 CONSTRAINT [PK_LiveSupport_Payment_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** 对象:  Table [dbo].[LiveSupport_Serivces]    脚本日期: 04/12/2009 22:43:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiveSupport_Serivces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OperatorsAllowed] [int] NOT NULL,
	[During] [int] NOT NULL,
	[Charge] [int] NOT NULL,
 CONSTRAINT [PK_LiveSupport_Serivces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[LiveChat_Operators]  WITH CHECK ADD  CONSTRAINT [FK_LiveChat_Operators_LiveSupport_Accounts] FOREIGN KEY([AccountId])
REFERENCES [dbo].[LiveSupport_Accounts] ([Id])
GO
ALTER TABLE [dbo].[LiveChat_Operators] CHECK CONSTRAINT [FK_LiveChat_Operators_LiveSupport_Accounts]
GO
ALTER TABLE [dbo].[LiveSupport_Accounts]  WITH CHECK ADD  CONSTRAINT [FK_LiveSupport_Accounts_aspnet_Users] FOREIGN KEY([AdminUserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[LiveSupport_Accounts] CHECK CONSTRAINT [FK_LiveSupport_Accounts_aspnet_Users]
GO
ALTER TABLE [dbo].[LiveSupport_Payment]  WITH CHECK ADD  CONSTRAINT [FK_LiveSupport_Payment_LiveSupport_Accounts] FOREIGN KEY([AccountId])
REFERENCES [dbo].[LiveSupport_Accounts] ([Id])
GO
ALTER TABLE [dbo].[LiveSupport_Payment] CHECK CONSTRAINT [FK_LiveSupport_Payment_LiveSupport_Accounts]
GO
ALTER TABLE [dbo].[LiveSupport_Payment]  WITH CHECK ADD  CONSTRAINT [FK_LiveSupport_Payment_LiveSupport_Serivces] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[LiveSupport_Serivces] ([Id])
GO
ALTER TABLE [dbo].[LiveSupport_Payment] CHECK CONSTRAINT [FK_LiveSupport_Payment_LiveSupport_Serivces]