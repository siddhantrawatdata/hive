/*
1. Create a Staging table and load the data from the external table to the staging table
2. From the staging table load the data into patitioned table
*/

-- DDL for staging table
create   table card_insurance_cold_calls_stage
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
tblproperties ("skip.header.line.count" = "1");

insert overwrite table card_insurance_cold_calls_stage select * from card_insurance_cold_calls_external;

-- Load data into the partitioned table from the staging table
insert overwrite table card_insurance_cold_calls_partition partition(education,marital) select 
id,
age,
job, 
default, 
balance,
hhinsurance,
car_loan,
communication,
lastcontactday,
lastcontactmatch,
no_of_contacts,
days_passed,
PrevAttempts,
Outcome,
CallStart,
CallEnd,
CarInsurance,
education,
marital
from default.card_insurance_cold_calls_stage where id is not null;
