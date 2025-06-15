USE TimesheetDB;
GO

IF OBJECT_ID('dbo.AuditLog','U') IS NOT NULL
    DROP TABLE dbo.AuditLog;
GO

CREATE TABLE dbo.AuditLog (
    AuditID         BIGINT IDENTITY(1,1) PRIMARY KEY,
    
    -- e.g. 'TimesheetEntry' or 'ExpenseEntry' or 'LeaveEntry'
    TableName       SYSNAME             NOT NULL,

    -- 'I' = Insert, 'U' = Update, 'D' = Delete, 'E' = Error
    OperationType   CHAR(1)             NOT NULL  
                     CONSTRAINT CK_AuditLog_OperationType
                       CHECK (OperationType IN ('I','U','D','E')),

    -- The primary?key value of the row that was changed (e.g. TimesheetID or ExpenseID)
    KeyValue        VARCHAR(100)        NOT NULL,

    ChangedDate     DATETIME2           NOT NULL 
                     DEFAULT SYSUTCDATETIME(),

    ChangedBy       SYSNAME             NOT NULL 
                     DEFAULT SUSER_SNAME(),

    -- Optional free?text describing the change (e.g. “Inserted new timesheet for 2025-05-02”)
    Description     NVARCHAR(2000)      NULL,

    -- Indicates whether this audit row has been shipped to Elasticsearch (or other observability)
    IsExported      BIT                 NOT NULL 
                     DEFAULT (0)
);
GO
