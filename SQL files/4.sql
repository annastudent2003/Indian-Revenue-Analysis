USE indian_analysis;
SELECT 
  y.year,
  y.total_visitors,
  tr.total_exports,
  (y.total_visitors + tr.total_exports) AS combined_score
FROM (
    SELECT '2014' AS year, SUM(`2014`) AS total_visitors FROM indian_analysis.`country wise yearly visitors`
    UNION ALL
    SELECT '2015', SUM(`2015`) FROM indian_analysis.`country wise yearly visitors`
    UNION ALL
    SELECT '2016', SUM(`2016`) FROM indian_analysis.`country wise yearly visitors`
    UNION ALL
    SELECT '2017', SUM(`2017`) FROM indian_analysis.`country wise yearly visitors`
    UNION ALL
    SELECT '2018', SUM(`2018`) FROM indian_analysis.`country wise yearly visitors`
    UNION ALL
    SELECT '2019', SUM(`2019`) FROM indian_analysis.`country wise yearly visitors`
    UNION ALL
    SELECT '2020', SUM(`2020`) FROM indian_analysis.`country wise yearly visitors`
) y
JOIN (
    SELECT `Financial Year(start)` AS year, SUM(Export) AS total_exports
    FROM indian_analysis.`exports and imports.csv`
    WHERE `Financial Year(start)` BETWEEN 2014 AND 2020
    GROUP BY `Financial Year(start)`
) tr ON y.year = tr.year
ORDER BY combined_score DESC
LIMIT 3;
