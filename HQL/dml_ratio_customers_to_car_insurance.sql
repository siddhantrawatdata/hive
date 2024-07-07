SELECT 
  job,
  people_with_carInsurance/people_without_Carinsurance AS ratio
FROM 
( 
   SELECT 
   job,
   SUM(CASE WHEN CarInsurance=1 THEN 1 ELSE 0 END ) AS people_with_carInsurance ,
   SUM(CASE WHEN CarInsurance=0 THEN 1 ELSE 0 END ) AS people_without_Carinsurance
   FROM 
     card_insurance_cold_calls_partition
   GROUP BY 
          job 
   ORDER BY 
          job
 ) AS subquery 
ORDER BY 
        job;
