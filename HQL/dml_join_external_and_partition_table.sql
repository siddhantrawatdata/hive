SELECT 
  avg(e.balance),
  p.job,
  p.education  
FROM 
  card_insurance_cold_calls_external e 
JOIN 
  card_insurance_cold_calls_partition p 
ON 
  e.id=p.id 
WHERE 
  e.id IS NOT NULL
GROUP BY 
  p.job,p.education 
ORDER BY 
  p.job , p.education;
