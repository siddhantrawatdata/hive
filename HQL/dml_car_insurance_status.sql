SELECT 
  car_insurance_status,
  COUNT(id) no_of_customers 
FROM 
(
  SELECT 
  CASE 
  WHEN CarInsurance=1 THEN 'has_ca_insurance' 
  WHEN CarInsurance=0 THEN   'not_has_Car_insurance'
  ELSE 'status not present'
  END AS car_insurance_status,
  id
  FROM card_insurance_cold_calls_external
) AS subquery
GROUP BY car_insurance_status
ORDER BY car_insurance_status;
