--The below DDL command will be used to load the data from HDFS location to the managed hive table

create table telecom_customer_churn_data
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
row format delimited 
fields terminated by ',';

load data inpath '/tmp/Telecom_customer_churn_data.csv' into table telecom_customer_churn_data;

