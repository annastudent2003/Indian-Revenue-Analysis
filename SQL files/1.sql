USE indian_analysis;

-- Top 5 Countries in Tourism (all years combined)
SELECT 
  Country,
  (`2014` + `2015` + `2016` + `2017` + `2018` + `2019` + `2020`) AS total_visitors
FROM indian_analysis.`country wise yearly visitors`
ORDER BY total_visitors DESC
LIMIT 5;
