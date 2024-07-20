
select 
    gender,
    SeniorCitizen,
    count(1) no_of_customers
    from telecom_customer_churn_data
    group by gender,SeniorCitizen
group by gendr , SeniorCitizen
order by 3;
