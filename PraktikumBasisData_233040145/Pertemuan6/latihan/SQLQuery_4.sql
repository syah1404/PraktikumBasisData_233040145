SELECT
  e.Name,
  s.Salaries
FROM Employee AS e
LEFT JOIN Salaries AS s
  ON e.EmployeeID = s.EmployeeID;