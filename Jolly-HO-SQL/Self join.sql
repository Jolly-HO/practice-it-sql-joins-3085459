SELECT
    E.FirstName AS "FirstName (E)",
    E.LastName  AS "LastName (E)",
    M.FirstName AS "FirstName (M)",
    M.LastName  AS "LastName (M)"
FROM DimEmployee AS E
LEFT JOIN DimEmployee AS M
    ON E.ParentEmployeeKey = M.EmployeeKey
ORDER BY E.EmployeeKey;