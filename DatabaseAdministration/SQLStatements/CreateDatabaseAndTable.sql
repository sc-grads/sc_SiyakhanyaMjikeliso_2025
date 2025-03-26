USE Students; -- Using the database called Students

CREATE TABLE StudentRecords (          -- Creating a table called StudentRecords
    StudentID INT PRIMARY KEY IDENTITY(1,1),  -- Auto-increment primary key
    FirstName VARCHAR(255) NOT NULL,           -- First Name (Required)
    LastName VARCHAR(255) NOT NULL,            -- Last Name (Required)
    Age INT NOT NULL,                  -- Age (Required)
    Email VARCHAR(100) UNIQUE,                -- Unique email address
    EnrollmentDate DATE DEFAULT GETDATE()     -- Default value is current date
	
);