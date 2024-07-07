select 
    count(1) 
FROM  
  card_insurance_cold_calls_external
WHERE 
  id is null or 
  age is null or 
  job is null or 
  marital is null or
  education is null or
  default is null or
  balance is null or
  hhinsurance is null or
  car_loan is null or
  communication is null or
  lastcontactday is null or
  lastcontactmatch is null or
  no_of_contacts is null or
  days_passed is null or
  PrevAttempts is null or
  Outcome is null or
  CallStart is null or
  CallEnd is null or
  CarInsurance is null;
