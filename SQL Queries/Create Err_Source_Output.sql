USE [Telecom]
GO

/****** Object:  Table [dbo].[Err_Source_Output]    Script Date: 3/10/2025 12:54:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Err_Source_Output](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Flat File Source Error Output Column] [varchar](max) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL,
	[Audit_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

