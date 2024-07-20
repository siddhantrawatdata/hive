--DDL command for the bucketed version of the table
create table telecom_customer_churn_data_bucket
(
customerID string,
gender string ,
SeniorCitizen string,
Partner string,
Dependents string,
tenure string,
PhoneService string,
MultipleLines string,
InternetService string,
OnlineSecurity string,
OnlineBackup string,
DeviceProtection string,
TechSupport string,
StreamingTV string,
StreamingMovies string,
Contract string,
PaperlessBilling string,
PaymentMethod string,
MonthlyCharges string,
TotalCharges string,
Churn string
)
clustered by (tenure) into 6 buckets
row format delimited 
fields terminated by ',';

--Insertion from the normal table to the bucketed table
insert overwrite table telecom_customer_churn_data_bucket select 
customerID ,
gender  ,
SeniorCitizen ,
Partner ,
Dependents ,
tenure ,
PhoneService ,
MultipleLines ,
InternetService ,
OnlineSecurity ,
OnlineBackup ,
DeviceProtection ,
TechSupport ,
StreamingTV ,
StreamingMovies ,
contract,
PaperlessBilling ,
PaymentMethod ,
MonthlyCharges ,
TotalCharges ,
Churn 
from telecom_customer_churn_data;
