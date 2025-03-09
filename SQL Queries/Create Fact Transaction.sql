USE [Telecom]
GO

/****** Object:  Table [dbo].[Fact_Transaction]    Script Date: 3/10/2025 12:44:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact_Transaction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Transaction_ID] [int] NOT NULL,
	[IMSI] [varchar](9) NOT NULL,
	[Subscriber_ID] [int] NULL,
	[TAC] [varchar](8) NULL,
	[SNR] [varchar](6) NULL,
	[IMEI] [varchar](14) NULL,
	[CELL] [int] NOT NULL,
	[LAC] [int] NOT NULL,
	[EVENT_TYPE] [varchar](3) NULL,
	[EVENT_TS] [datetime] NOT NULL,
	[Audit_ID] [int] NOT NULL,
 CONSTRAINT [PK_Fact_Transaction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact_Transaction] ADD  CONSTRAINT [DF_Fact_Transaction_Audit_ID]  DEFAULT ((-1)) FOR [Audit_ID]
GO

