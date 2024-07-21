# Hadoop Commands used during the analysis
###### hadoop fs -ls / 
  Used to list the files in a folder
###### hadoop fs -head filename
  Used to view the top 10 rows in a file
###### hadoop fs -put /local/filename /tmp/filename
  USed to move the file from local to HDFS


# Use Cases
### UC_001 - Analyze the distribution of customers based on gender and SeniorCitizen status.
  According to the result set displayed below we have the number of senior females , senior males , males , females . We can comprehend that senior females make up most of the user base for our services. This means that we can provide them few vouchers and gift coupons so we can maintain the customer base and expand. 
  Whereas young females are the least users, here we need to find ways to bridge the gap and improve services.
![image](https://github.com/user-attachments/assets/d98a4e73-b8d6-4b38-9fbf-4e1d5f15af93)

### UC_002 - Partition the table and find average MonthlyCharges for each type of Contract using the.
#### Partition table files in HDFS
  ![image](https://github.com/user-attachments/assets/b352d997-231a-4abb-93cd-68473aff1d27)
By the medium of Average monthly charges for contract type parameter we can tell the users how they can save money according to the contract type. 
  ![image](https://github.com/user-attachments/assets/691340de-1e4e-44c1-b78c-2a2038d590ee)

### UC_003 : Technical Scenario : Create the bucketed version of the table for future optimisations
  ![image](https://github.com/user-attachments/assets/223fdcb5-c93e-4951-b81d-50292ccd17b7)

### UC_004 : Technical Scenario : Differences between map side join , bucketed join and sorted merge join 
#### Map Side Join
![image](https://github.com/user-attachments/assets/d40aa323-6f5a-40d6-bc5b-4fdd90fe5dc6)
#### Bucketed join 
![image](https://github.com/user-attachments/assets/46e8fe94-afb4-44c3-8941-83717b536286)
#### Sorted merge bucket join 
![image](https://github.com/user-attachments/assets/95e783b7-2a6d-4151-89b4-240d1eb6ca3e)
We observed that when we are using the bucket join, we are joining at the mapping phase itself , by-passing the creation of reducers and hence optimising the join operations

### UC_005 : Calculate the churn rate (percentage of customers who left) for each InternetService category.
![image](https://github.com/user-attachments/assets/347998a1-bce4-4832-a595-e3f6f39d7fdf)
This metric will tell us, by which internet service our customers are most dis-satisfied. We can then work on it by organising workshops and improving our srvices and decrease the churn rate




  

