
create external table card_insurance_cold_calls_external
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
row format delimited
fields terminated by ','
stored as textfile
location '/tmp/card_insurance_cold_Calls/'
tblproperties ("skip.header.line.count" = "1");
