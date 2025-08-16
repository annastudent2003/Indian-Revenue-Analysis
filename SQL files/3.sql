USE indian_analysis;
SELECT 
  t.Country,
  (t.`2014` + t.`2015` + t.`2016` + t.`2017` + t.`2018` + t.`2019` + t.`2020`) AS total_visitors,
  tr.total_exports,
  ((t.`2014` + t.`2015` + t.`2016` + t.`2017` + t.`2018` + t.`2019` + t.`2020`) + tr.total_exports) AS combined_score
FROM indian_analysis.`country wise yearly visitors` t
JOIN (
    SELECT Country, SUM(Export) AS total_exports
    FROM indian_analysis.`exports and imports.csv`
    WHERE `Financial Year(start)` BETWEEN 2014 AND 2020
    GROUP BY Country
) tr ON t.Country = tr.Country
ORDER BY combined_score DESC
LIMIT 3;
