SELECT 
    p.ProjectName,
    d.DepartmentName
FROM 
    Projects p
LEFT JOIN 
    Departments d ON p.DepartmentID = d.DepartmentID;