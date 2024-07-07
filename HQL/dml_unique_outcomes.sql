SELECT 
  outcome,
  COUNT(1) AS count_of_outcomes
FROM 
  card_insurance_cold_calls_external
GROUP BY Outcome
ORDER BY COUNT(1);
