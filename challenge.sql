CREATE TABLE Department (
    DID int NOT NULL PRIMARY KEY,
    Name varchar(255) NOT NULL,
    Location CHAR (50)
);


CREATE TABLE Employee (
    EID int NOT NULL PRIMARY KEY,
    DID int NOT NULL,
    FirstName varchar(255) NOT NULL,
    LastName varchar(255) NOT NUL,
    FOREIGN KEY (DID) REFERENCES Department(DID)
);


CREATE TABLE EmployeeDetails (
    EmID int NOT NULL PRIMARY KEY,
    EID int NOT NULL,
    Salary   DECIMAL (18, 2),       
    Street CHAR (50),
    City  CHAR (25) ,
    Province  CHAR (25) ,
    FOREIGN KEY (EID) REFERENCES Employee(EID)
);



INSERT INTO Department (DID, [Name], [Location])
VALUES (1, 'Tina Smith', 'Houston');

INSERT INTO Employee (EID, DID, FirstName, LastName)
VALUES (1, 2, 'Mark', 'Johnatan');

INSERT INTO EmployeeDetails (EmID, EID, Salary, Street, City, Province)
VALUES (1,  2, 95000, 'new street', 'Houston', 'Houston county');

