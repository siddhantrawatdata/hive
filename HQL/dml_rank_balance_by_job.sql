SELECT 
  age_group,
  job,
  balance
FROM 
  (
    SELECT 
    age_group,
    job,
    balance,
    dense_rank() over(partition BY job,age_group ORDER BY balance DESC) AS rnk
    FROM 
      (
      SELECT 
        CASE WHEN b.age>=18 AND b.age<=30 THEN '18-30'
              WHEN b.age>=31 AND b.age<=45 THEN '31-45'
              WHEN b.age>=46 AND b.age<=60 THEN '45-60'
            ELSE '61+' 
        END AS age_group 
        ,b.job
        ,b.balance 
      FROM 
          card_insurance_cold_calls_partition b 
      ) AS subquery 
) AS subquery_2
WHERE 
    rnk=1
ORDER BY 
    age_group,job;
