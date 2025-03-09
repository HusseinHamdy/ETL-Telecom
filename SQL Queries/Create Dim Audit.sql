USE [Telecom]
GO

/****** Object:  Table [dbo].[Dim_Audit]    Script Date: 3/10/2025 12:37:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dim_Audit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Package_Name] [nvarchar](255) NOT NULL,
	[File_Name] [nvarchar](255) NOT NULL,
	[Rows_Extracted] [int] NULL,
	[Rows_Inserted] [int] NULL,
	[rows_rejected] [int] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Dim_Audit] ADD  DEFAULT (getdate()) FOR [created_at]
GO

