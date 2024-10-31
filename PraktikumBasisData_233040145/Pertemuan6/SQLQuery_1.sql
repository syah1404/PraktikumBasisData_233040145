CREATE TABLE Departments (
  DepartmentID INT PRIMARY KEY,
  DepartmentName VARCHAR(50)
);

CREATE TABLE Employee (
  EmployeeID INT PRIMARY KEY,
  Name VARCHAR(50),
  ManagerID INT,
  DepartmentID INT,
  FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Projects (
  ProjectID INT PRIMARY KEY,
  ProjectName VARCHAR(50),
  DepartmentID INT,
  FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Salaries (
  EmployeeID INT PRIMARY KEY,
  Salaries DECIMAL(10,2),
  FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);