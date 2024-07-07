SELECT 
  age_group,
  COUNT(id) AS no_of_customers
FROM (
  SELECT 
    CASE WHEN age>=18 AND age<=30 THEN '18-30'
        WHEN age>=31 AND age<=45 THEN '31-45'
        WHEN age>=46 AND age<=60 THEN '45-60'
        ELSE '61+'
    END AS age_group,id 
  FROM 
    card_insurance_cold_calls_external
) a
GROUP BY 
    age_group;
