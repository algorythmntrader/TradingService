USE [DataServer]
GO
/****** Object:  Table [dbo].[BarsDaily]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarsDaily](
	[Date] [date] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[OpenBid] [decimal](18, 5) NOT NULL,
	[OpenAsk] [decimal](18, 5) NOT NULL,
	[HighBid] [decimal](18, 5) NOT NULL,
	[HighAsk] [decimal](18, 5) NOT NULL,
	[LowBid] [decimal](18, 5) NOT NULL,
	[LowAsk] [decimal](18, 5) NOT NULL,
	[CloseBid] [decimal](18, 5) NOT NULL,
	[CloseAsk] [decimal](18, 5) NOT NULL,
	[VolumeBid] [real] NOT NULL,
	[VolumeAsk] [real] NOT NULL,
 CONSTRAINT [PK_BarsDaily] PRIMARY KEY CLUSTERED 
(
	[Date] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BarsMinute]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarsMinute](
	[Date] [smalldatetime] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[OpenBid] [decimal](18, 5) NOT NULL,
	[OpenAsk] [decimal](18, 5) NOT NULL,
	[HighBid] [decimal](18, 5) NOT NULL,
	[HighAsk] [decimal](18, 5) NOT NULL,
	[LowBid] [decimal](18, 5) NOT NULL,
	[LowAsk] [decimal](18, 5) NOT NULL,
	[CloseBid] [decimal](18, 5) NOT NULL,
	[CloseAsk] [decimal](18, 5) NOT NULL,
	[VolumeBid] [real] NOT NULL,
	[VolumeAsk] [real] NOT NULL,
 CONSTRAINT [PK_BarsMinute] PRIMARY KEY CLUSTERED 
(
	[Date] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BarsMinute_Archive]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarsMinute_Archive](
	[Date] [smalldatetime] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[OpenBid] [decimal](18, 5) NOT NULL,
	[OpenAsk] [decimal](18, 5) NOT NULL,
	[HighBid] [decimal](18, 5) NOT NULL,
	[HighAsk] [decimal](18, 5) NOT NULL,
	[LowBid] [decimal](18, 5) NOT NULL,
	[LowAsk] [decimal](18, 5) NOT NULL,
	[CloseBid] [decimal](18, 5) NOT NULL,
	[CloseAsk] [decimal](18, 5) NOT NULL,
	[VolumeBid] [real] NOT NULL,
	[VolumeAsk] [real] NOT NULL,
 CONSTRAINT [PK_BarsMinute_Archive] PRIMARY KEY CLUSTERED 
(
	[Date] ASC,
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PortfolioAccounts]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortfolioAccounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Portfolio_ID] [int] NOT NULL,
	[AccountName] [nvarchar](100) NOT NULL,
	[BrokerName] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portfolios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Currency] [nvarchar](3) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PortfolioStrategies]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortfolioStrategies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Portfolio_ID] [int] NOT NULL,
	[StrategyName] [nvarchar](100) NOT NULL,
	[StrategySignals] [nvarchar](max) NULL,
	[StrategyDataFeeds] [nvarchar](500) NULL,
	[ExposedBalance] [decimal](18,2) NOT NULL,
 CONSTRAINT [PK_PortfolioStrategies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PositionHistory]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [nvarchar](32) NOT NULL,
	[BrokerID] [nvarchar](32) NOT NULL,
	[BrokerName] [nvarchar](32) NOT NULL,
	[AccountId] [nvarchar](32) NOT NULL,
	[Instrument] [int] NOT NULL,
	[Price] [decimal](18, 5) NOT NULL,
	[Quantity] [decimal](18, 3) NOT NULL,
	[ExecutedQuantity] [decimal](18, 3) NOT NULL,
	[Status] [nvarchar](8) NOT NULL,
	[Type] [nvarchar](8) NOT NULL,
	[TIF] [nvarchar](3) NOT NULL,
	[Date] [datetime] NOT NULL,
	[OpeningQuantity] [decimal](18, 3) NOT NULL CONSTRAINT [DF_PositionHistory_OpeningQuantity]  DEFAULT ((0)),
	[ClosingQuantity] [decimal](18, 3) NOT NULL CONSTRAINT [DF_PositionHistory_ClosingQuantity]  DEFAULT ((0)),
	[Origin] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Securities]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Securities](
	[Id] [int] NOT NULL,
	[Symbol] [nvarchar](24) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[DataFeed] [nvarchar](64) NOT NULL,
	[PriceIncrement] [decimal](18, 5) NOT NULL,
	[QtyIncrement] [decimal](18, 5) NOT NULL,
	[Digit] [int] NOT NULL,
	[AssetClass] [nvarchar](64) NOT NULL,
	[BaseCurrency] [nvarchar](12) NOT NULL,
	[UnitOfMeasure] [nvarchar](64) NOT NULL,
	[MarginRate] [decimal](18, 5) NOT NULL,
	[MaxPosition] [decimal](18, 5) NOT NULL,
	[UnitPrice] [decimal](18, 5) NOT NULL,
	[ContractSize] [decimal](18, 5) NOT NULL,
	[MarketOpen] [time](7) NOT NULL,
	[MarketClose] [time](7) NOT NULL,
 CONSTRAINT [PK_SecuritiesID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ticks]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticks](
	[Date] [datetime] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[Ask] [decimal](18, 5) NOT NULL,
	[Bid] [decimal](18, 5) NOT NULL,
	[AskSize] [real] NOT NULL,
	[BidSize] [real] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ticks_Archive]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticks_Archive](
	[Date] [datetime] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[Ask] [decimal](18, 5) NOT NULL,
	[Bid] [decimal](18, 5) NOT NULL,
	[AskSize] [real] NOT NULL,
	[BidSize] [real] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TicksLevel2]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicksLevel2](
	[Date] [datetime] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[Ask] [decimal](18, 5) NOT NULL,
	[Bid] [decimal](18, 5) NOT NULL,
	[AskSize] [real] NOT NULL,
	[BidSize] [real] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TicksLevel2_Archive]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicksLevel2_Archive](
	[Date] [datetime] NOT NULL,
	[SecurityId] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[Ask] [decimal](18, 5) NOT NULL,
	[Bid] [decimal](18, 5) NOT NULL,
	[AskSize] [real] NOT NULL,
	[BidSize] [real] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserActivity]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[Broker] [nvarchar](32) NOT NULL,
	[Account] [nvarchar](32) NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2016-07-06 14:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_UserId] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [Idx_BarsDailyDate]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [Idx_BarsDailyDate] ON [dbo].[BarsDaily]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx_BarsMinuteDate]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [Idx_BarsMinuteDate] ON [dbo].[BarsMinute]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Idx_BarsMinuteArchDate]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [Idx_BarsMinuteArchDate] ON [dbo].[BarsMinute_Archive]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Index_PositionsAccountId]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [Index_PositionsAccountId] ON [dbo].[PositionHistory]
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Index_TickDate]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [Index_TickDate] ON [dbo].[Ticks]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Index_TickSecurityId]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [Index_TickSecurityId] ON [dbo].[Ticks]
(
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Index_TickArchDate]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [Index_TickArchDate] ON [dbo].[Ticks_Archive]
(
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Index_TickArchSecurityId]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [Index_TickArchSecurityId] ON [dbo].[Ticks_Archive]
(
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TicksL2_SecLevDate]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [IX_TicksL2_SecLevDate] ON [dbo].[TicksLevel2]
(
	[SecurityId] ASC,
	[Level] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TicksL2Arch_SecLevDate]    Script Date: 2016-07-06 14:03:50 ******/
CREATE NONCLUSTERED INDEX [IX_TicksL2Arch_SecLevDate] ON [dbo].[TicksLevel2_Archive]
(
	[SecurityId] ASC,
	[Level] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BarsDaily]  WITH CHECK ADD  CONSTRAINT [FK_BarsDailySecurityId] FOREIGN KEY([SecurityId])
REFERENCES [dbo].[Securities] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BarsDaily] CHECK CONSTRAINT [FK_BarsDailySecurityId]
GO
ALTER TABLE [dbo].[BarsMinute]  WITH CHECK ADD  CONSTRAINT [FK_BarsMinuteSecurityId] FOREIGN KEY([SecurityId])
REFERENCES [dbo].[Securities] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BarsMinute] CHECK CONSTRAINT [FK_BarsMinuteSecurityId]
GO
ALTER TABLE [dbo].[BarsMinute_Archive]  WITH CHECK ADD  CONSTRAINT [FK_BarsMinuteArchSecurityId] FOREIGN KEY([SecurityId])
REFERENCES [dbo].[Securities] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BarsMinute_Archive] CHECK CONSTRAINT [FK_BarsMinuteArchSecurityId]
GO
ALTER TABLE [dbo].[PortfolioAccounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts] FOREIGN KEY([Portfolio_ID])
REFERENCES [dbo].[Portfolios] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PortfolioAccounts] CHECK CONSTRAINT [FK_Accounts]
GO
ALTER TABLE [dbo].[Portfolios]  WITH CHECK ADD  CONSTRAINT [FK_Portfolios] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Login])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Portfolios] CHECK CONSTRAINT [FK_Portfolios]
GO
ALTER TABLE [dbo].[PortfolioStrategies]  WITH CHECK ADD  CONSTRAINT [FK_Strategies] FOREIGN KEY([Portfolio_ID])
REFERENCES [dbo].[Portfolios] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PortfolioStrategies] CHECK CONSTRAINT [FK_Strategies]
GO
ALTER TABLE [dbo].[PositionHistory]  WITH CHECK ADD  CONSTRAINT [FK_PositionSecurityId] FOREIGN KEY([Instrument])
REFERENCES [dbo].[Securities] ([Id])
GO
ALTER TABLE [dbo].[PositionHistory] CHECK CONSTRAINT [FK_PositionSecurityId]
GO
ALTER TABLE [dbo].[Ticks]  WITH CHECK ADD  CONSTRAINT [FK_TicksSecurityId] FOREIGN KEY([SecurityId])
REFERENCES [dbo].[Securities] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ticks] CHECK CONSTRAINT [FK_TicksSecurityId]
GO
ALTER TABLE [dbo].[Ticks_Archive]  WITH CHECK ADD  CONSTRAINT [FK_TicksArchSecurityId] FOREIGN KEY([SecurityId])
REFERENCES [dbo].[Securities] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ticks_Archive] CHECK CONSTRAINT [FK_TicksArchSecurityId]
GO
ALTER TABLE [dbo].[TicksLevel2]  WITH CHECK ADD  CONSTRAINT [FK_TicksLevel2SecurityId] FOREIGN KEY([SecurityId])
REFERENCES [dbo].[Securities] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TicksLevel2] CHECK CONSTRAINT [FK_TicksLevel2SecurityId]
GO
ALTER TABLE [dbo].[TicksLevel2_Archive]  WITH CHECK ADD  CONSTRAINT [FK_TicksLevel2ArchSecurityId] FOREIGN KEY([SecurityId])
REFERENCES [dbo].[Securities] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TicksLevel2_Archive] CHECK CONSTRAINT [FK_TicksLevel2ArchSecurityId]
GO
ALTER TABLE [dbo].[UserActivity]  WITH CHECK ADD  CONSTRAINT [FK_UserActivity] FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Login])
GO
ALTER TABLE [dbo].[UserActivity] CHECK CONSTRAINT [FK_UserActivity]
GO
ALTER TABLE [dbo].[Portfolios]  WITH CHECK ADD CHECK  (([Currency]='GBP' OR [Currency]='USD' OR [Currency]='EUR'))
GO
ALTER TABLE [dbo].[PositionHistory]  WITH CHECK ADD CHECK  (([Status]='CANCELED' OR [Status]='FILLED'))
GO
ALTER TABLE [dbo].[PositionHistory]  WITH CHECK ADD CHECK  (([Type]='STOP' OR [Type]='LIMIT' OR [Type]='MARKET'))
GO
ALTER TABLE [dbo].[PositionHistory]  WITH CHECK ADD CHECK  (([TIF]='GTC' OR [TIF]='GFD' OR [TIF]='IOC' OR [TIF]='FOK'))
GO
