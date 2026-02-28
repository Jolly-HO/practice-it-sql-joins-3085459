SELECT
    dg.DepartmentGroupKey,
    dg.ParentDepartmentGroupKey,
    dg.DepartmentGroupName,
    c.CurrencyKey,
    c.CurrencyAlternateKey,
    c.CurrencyName
FROM DimDepartmentGroup dg
CROSS JOIN DimCurrency c
ORDER BY dg.DepartmentGroupKey, c.CurrencyKey;