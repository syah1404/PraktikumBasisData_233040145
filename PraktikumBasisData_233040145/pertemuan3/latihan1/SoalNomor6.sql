SELECT E.empid, E.firstname, E.lastname
FROM HR.Employees AS E
WHERE E.empid IN (3, 5, 6)
AND E.empid NOT IN (
    SELECT O.empid
    FROM Sales.Orders AS O
    WHERE O.orderdate >= '2016-05-01'
);