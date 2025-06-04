USE [TimesheetDB]
GO

/****** Object:  Table [dbo].[AuditLog]    Script Date: 2025/06/04 08:44:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AuditLog](
	[AuditID] [bigint] IDENTITY(1,1) NOT NULL,
	[TableName] [sysname] NOT NULL,
	[OperationType] [char](1) NOT NULL,
	[KeyValue] [varchar](100) NOT NULL,
	[ChangedDate] [datetime2](7) NOT NULL,
	[ChangedBy] [sysname] NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[IsExported] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AuditLog] ADD  DEFAULT (sysutcdatetime()) FOR [ChangedDate]
GO

ALTER TABLE [dbo].[AuditLog] ADD  DEFAULT (suser_sname()) FOR [ChangedBy]
GO

ALTER TABLE [dbo].[AuditLog] ADD  DEFAULT ((0)) FOR [IsExported]
GO

ALTER TABLE [dbo].[AuditLog]  WITH CHECK ADD  CONSTRAINT [CK_AuditLog_OperationType] CHECK  (([OperationType]='E' OR [OperationType]='D' OR [OperationType]='U' OR [OperationType]='I'))
GO

ALTER TABLE [dbo].[AuditLog] CHECK CONSTRAINT [CK_AuditLog_OperationType]
GO


