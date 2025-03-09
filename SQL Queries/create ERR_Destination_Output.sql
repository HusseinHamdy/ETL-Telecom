USE [Telecom]
GO

/****** Object:  Table [dbo].[ERR_Destination_Output]    Script Date: 3/10/2025 12:51:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ERR_Destination_Output](
	[id] [int] NULL,
	[imsi] [varchar](9) NULL,
	[imei] [varchar](14) NULL,
	[cell] [int] NULL,
	[lac] [int] NULL,
	[TAC] [varchar](8) NULL,
	[SNR] [varchar](6) NULL,
	[event_type] [varchar](1) NULL,
	[event_ts] [datetime] NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[Audit_ID] [int] NULL
) ON [PRIMARY]
GO

