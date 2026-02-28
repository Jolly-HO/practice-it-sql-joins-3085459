SELECT
    c.FirstName,
    c.LastName,
    c.EmailAddress,
    g.City,
    g.StateProvinceName,
    COALESCE(
        g.EnglishCountryRegionName,
        g.SpanishCountryRegionName,
        g.FrenchCountryRegionName
    ) AS CountryRegionName,
    g.PostalCode
FROM DimCustomer c
LEFT JOIN DimGeography g
    ON c.GeographyKey = g.GeographyKey
ORDER BY c.LastName, c.FirstName;