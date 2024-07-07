SELECT 
  * 
FROM 
(
  SELECT 
    communication,
    average_no_of_contacts,
    ROW_NUMBER() over(order by average_no_of_contacts) as rnk 
  FROM 
    (
  SELECT 
    a.communication as communication ,
    round(avg(a.no_of_contacts),2) as average_no_of_contacts
  FROM 
    card_insurance_cold_calls_partition a 
  JOIN 
    card_insurance_cold_calls_bucket b 
  ON 
    a.id=b.id 
  WHERE 
    a.CarInsurance='1'
  GROUP BY 
    a.communication
    ) AS subquery 
) AS sub 
WHERE   
  rnk<=2;
