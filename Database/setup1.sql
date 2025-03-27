-- 1. Create database if it doesn't exist
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'AutoTest_SM_27March')
BEGIN
    CREATE DATABASE AutoTest_SM_27March;
END
GO

-- 2. Switch to the new database
USE AutoTest_SM_27March;
GO

-- 3. Drop stored procedure if it exists
IF OBJECT_ID('CreateUserTable', 'P') IS NOT NULL
    DROP PROCEDURE CreateUserTable;
GO

-- 4. Create stored procedure that creates the table and inserts data
CREATE PROCEDURE CreateUserTable
AS
BEGIN
    -- Check if the table exists
    IF OBJECT_ID('user', 'U') IS NULL
    BEGIN
        CREATE TABLE [user] (
            Name NVARCHAR(50),
            Surname NVARCHAR(50),
            Email NVARCHAR(100)
        );

        -- Insert sample rows
        INSERT INTO [user] (Name, Surname, Email)
        VALUES 
        ('John', 'Doe', 'john@example.com'),
        ('Jane', 'Smith', 'jane@example.com');
    END
END
GO

-- 5. Execute the stored procedure
EXEC CreateUserTable;
GO
