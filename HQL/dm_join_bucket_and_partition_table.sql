SELECT 
  sum(b.balance),
  p.marital AS marital_status,
  p.education  
FROM 
  card_insurance_cold_calls_bucket b 
JOIN 
  card_insurance_cold_calls_partition p 
ON 
  b.id=p.id 
GROUP BY 
  p.marital , p.education
ORDER BY 
  p.marital , p.education;
