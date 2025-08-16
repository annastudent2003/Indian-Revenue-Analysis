USE indian_analysis;
SELECT 
  Country,
  '2014' AS year, `2014` AS visitors FROM indian_analysis.`country wise yearly visitors`
UNION ALL
SELECT Country, '2015', `2015` FROM indian_analysis.`country wise yearly visitors`
UNION ALL
SELECT Country, '2016', `2016` FROM indian_analysis.`country wise yearly visitors`
UNION ALL
SELECT Country, '2017', `2017` FROM indian_analysis.`country wise yearly visitors`
UNION ALL
SELECT Country, '2018', `2018` FROM indian_analysis.`country wise yearly visitors`
UNION ALL
SELECT Country, '2019', `2019` FROM indian_analysis.`country wise yearly visitors`
UNION ALL
SELECT Country, '2020', `2020` FROM indian_analysis.`country wise yearly visitors`;
