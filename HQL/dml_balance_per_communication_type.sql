SELECT 
  communication,
  sum(balance) AS balance_sum 
FROM 
  card_insurance_cold_calls_external
WHERE 
    communication IS NOT NULL
GROUP BY 
  communication
ORDER BY 
  communication;
