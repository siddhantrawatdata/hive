--DDL command for the syntax of the partitioned table

create table telecom_customer_churn_data_partition
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
PaperlessBilling string,
PaymentMethod string,
MonthlyCharges string,
TotalCharges string,
Churn string
)
partitioned by (Contract string)
row format delimited 
fields terminated by ',';

--we need to set this parameter in the case of using dynamic partitioning as by default the partitioning is static
set hive.exec.dynamic.partition.mode=nonstrict;

--insert command from non-partitioned table to the partitioned one
insert overwrite table telecom_customer_churn_data_partition partition (contract) select 
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
PaperlessBilling ,
PaymentMethod ,
MonthlyCharges ,
TotalCharges ,
Churn,
contract 
from telecom_customer_churn_data;

