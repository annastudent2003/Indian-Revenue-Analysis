USE indian_analysis;
SELECT 
  Country,
  SUM(Export) AS total_exports,
  SUM(Import) AS total_imports
FROM indian_analysis.`exports and imports.csv`
WHERE `Financial Year(start)` BETWEEN 2014 AND 2020
GROUP BY Country
ORDER BY total_exports DESC
LIMIT 5;
