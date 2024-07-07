create  table card_insurance_cold_calls_partition
(
id int,
age int,
job string,
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
partitioned by (education string ,marital string)
row format delimited
fields terminated by ','
stored as textfile;
