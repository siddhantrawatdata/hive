--Bucketing is done to implement bucket joins
--In bucket joins the buvket should be implemented upon the joining columns

create table telecom_customer_churn_data_bucket_2
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
clustered by (customerid) into 4 buckets
row format delimited 
fields terminated by ',';

insert overwrite table telecom_customer_churn_data_bucket_2 select * from telecom_customer_churn_data;
