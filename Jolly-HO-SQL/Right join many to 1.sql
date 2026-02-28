SELECT
    s.ProductKey,
    COALESCE(
        p.EnglishProductName,
        p.SpanishProductName,
        p.FrenchProductName
    ) AS ProductName,
    s.OrderDateKey AS OrderDate,
    s.OrderQuantity,
    s.UnitPrice,
    s.ExtendedAmount,
    s.UnitPriceDiscountPct,
    s.DiscountAmount,
    p.StandardCost AS ProductStandardCost,
    s.TotalProductCost,
    s.SalesAmount,
    s.Freight,
    s.TaxAmt
FROM FactInternetSales s
LEFT JOIN DimProduct p
    ON s.ProductKey = p.ProductKey
ORDER BY s.ProductKey;