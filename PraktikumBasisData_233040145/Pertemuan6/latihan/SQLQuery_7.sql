SELECT e.Name, d.DepartmentName
FROM Employee e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;