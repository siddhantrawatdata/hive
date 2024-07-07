CREATE  TABLE card_insurance_cold_calls_bucket
(
id int,
age int,
job string,
marital string,
education string,
default string,
balance string,
hhinsurance string,
car_loan string,
communication string,
lastcontactday string,
lastcontactmatch string,
no_of_contacts string,
days_passed string,
PrevAttempts string,
Outcome string,
CallStart string,
CallEnd string,
CarInsurance string
)
clustered BY (age)
INTO 4 buckets;

INSERT overwrite TABLE card_insurance_cold_calls_bucket SELECT * FROM card_insurance_cold_calls_external WHERE id IS NOT NULL;
