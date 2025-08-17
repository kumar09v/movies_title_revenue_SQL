SELECT 
m.movie_id, title, budget, revenue, unit, currency,
CASE 
WHEN unit = "thousands" THEN ROUND((revenue-budget)/1000,2)
WHEN unit = "billions"  THEN ROUND((revenue-budget)*1000,2)
ELSE ROUND((revenue-budget),2)
END as profit_mln
FROM movies m 
JOIN financials f 
ON m.movie_id = f.movie_id 
WHERE  industry = "bollywood"
ORDER BY profit_mln DESC;
