-- 1) Drop existing tables (in reverse‐dependency order)
IF OBJECT_ID('dbo.Leave','U') IS NOT NULL
    DROP TABLE dbo.Leave;
GO

IF OBJECT_ID('dbo.Expense','U') IS NOT NULL
    DROP TABLE dbo.Expense;
GO

IF OBJECT_ID('dbo.Timesheet','U') IS NOT NULL
    DROP TABLE dbo.Timesheet;
GO

IF OBJECT_ID('dbo.LeaveType','U') IS NOT NULL
    DROP TABLE dbo.LeaveType;
GO

IF OBJECT_ID('dbo.ExpenseCategory','U') IS NOT NULL
    DROP TABLE dbo.ExpenseCategory;
GO

IF OBJECT_ID('dbo.Project','U') IS NOT NULL
    DROP TABLE dbo.Project;
GO

IF OBJECT_ID('dbo.Client','U') IS NOT NULL
    DROP TABLE dbo.Client;
GO

IF OBJECT_ID('dbo.Employee','U') IS NOT NULL
    DROP TABLE dbo.Employee;
GO

-- 2) Recreate Employee
CREATE TABLE dbo.Employee (
    EmployeeID   INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName VARCHAR(50)      NOT NULL,
    CONSTRAINT UQ_Employee_EmployeeName UNIQUE (EmployeeName)
);
GO

-- 3) Recreate Client
CREATE TABLE dbo.Client (
    ClientID   INT IDENTITY(1,1) PRIMARY KEY,
    ClientName VARCHAR(200)      NOT NULL,
    CONSTRAINT UQ_Client_ClientName UNIQUE (ClientName)
);
GO

-- 4) Recreate Project
CREATE TABLE dbo.Project (
    ProjectID   INT IDENTITY(1,1) PRIMARY KEY,
    ClientID    INT                NOT NULL
      CONSTRAINT FK_Project_Client
        REFERENCES dbo.Client(ClientID)
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    ProjectName VARCHAR(200)       NOT NULL,
    CONSTRAINT UQ_Project_ClientID_ProjectName UNIQUE (ClientID, ProjectName)
);
GO

-- 5) Recreate ExpenseCategory
CREATE TABLE dbo.ExpenseCategory (
    ExpenseCategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName      VARCHAR(50)       NOT NULL,
    CONSTRAINT UQ_ExpenseCategory_CategoryName UNIQUE (CategoryName)
);
GO

-- 6) Recreate LeaveType
CREATE TABLE dbo.LeaveType (
    LeaveTypeID INT IDENTITY(1,1) PRIMARY KEY,
    TypeName    VARCHAR(50)       NOT NULL,
    CONSTRAINT UQ_LeaveType_TypeName UNIQUE (TypeName)
);
GO

-- 7) Recreate Timesheet (fact)
CREATE TABLE dbo.Timesheet (
    TimesheetID  INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID   INT  NOT NULL
      CONSTRAINT FK_Timesheet_Employee REFERENCES dbo.Employee(EmployeeID)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    ProjectID    INT  NOT NULL
      CONSTRAINT FK_Timesheet_Project REFERENCES dbo.Project(ProjectID)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    WorkDate     DATE NOT NULL,
    Billable     BIT  NOT NULL DEFAULT (0),
    Description  VARCHAR(50)   NULL,
    Comments     VARCHAR(MAX)  NULL,
    HoursDecimal DECIMAL(5,2)  NOT NULL,
    StartTime    TIME(0)       NULL,
    EndTime      TIME(0)       NULL,
    CONSTRAINT UQ_Timesheet_Employee_Project_Date UNIQUE(EmployeeID, ProjectID, WorkDate)
);
GO

-- 8) Recreate Expense (fact)
CREATE TABLE dbo.Expense (
    ExpenseID         BIGINT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID        INT               NOT NULL
      CONSTRAINT FK_Expense_Employee REFERENCES dbo.Employee(EmployeeID)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    ExpenseDate       DATE              NOT NULL,
    ExpenseCategoryID INT               NOT NULL
      CONSTRAINT FK_Expense_ExpenseCategory REFERENCES dbo.ExpenseCategory(ExpenseCategoryID)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    ExpenseDesc       VARCHAR(500)      NULL,
    AmountDEC         DECIMAL(12,2)     NOT NULL,
    CONSTRAINT UQ_Expense_Employee_Date_Category UNIQUE(EmployeeID, ExpenseDate, ExpenseCategoryID)
);
GO

-- 9) Recreate Leave (fact)
CREATE TABLE dbo.Leave (
    LeaveID            INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID         INT              NOT NULL
      CONSTRAINT FK_Leave_Employee REFERENCES dbo.Employee(EmployeeID)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    LeaveTypeID        INT              NOT NULL
      CONSTRAINT FK_Leave_LeaveType REFERENCES dbo.LeaveType(LeaveTypeID)
        ON UPDATE CASCADE ON DELETE NO ACTION,
    StartDate          DATE             NOT NULL,
    EndDate            DATE             NOT NULL,
    NumberOfDays       DECIMAL(5,2)     NOT NULL,
    ApprovalObtained   BIT              NOT NULL DEFAULT (0),
    SickNoteFilePath   VARCHAR(260)     NULL,
    AddressDuringLeave VARCHAR(500)     NULL,
    CONSTRAINT UQ_Leave_Employee_Start_End UNIQUE(EmployeeID, StartDate, EndDate)
);
GO
