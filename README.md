# hive
This repository is a testament to my learnings on hive data warehousing application.

# Introduction

Hive is a data warehosusing technology built on top of hadoop. It was build at Facebook as the only way to process big data was via the map reduce jobs. 
The map reduce job were complex to write and could only be implemented in JAVA, thus restricting the SQL users to do transformations on big data. 
This use case gave rise to hive and it's widespread popularity. 
We HQL (Hive Query Language) to query and transform data

# Architecture of hive
# Basic Block diagram
![image](https://github.com/user-attachments/assets/942bf225-cf44-4a57-8ab6-99176e7c4393)

User Query : The user who will fire the HQL query from 3rd party tool or hive shell.
Hive Application : This is the main component of Hive that will process the data. Converting the HQL command into the Map reduce jobs
Embedded DB : This part stores the metadata such as column names , Table names and schema for the Hive. Usually MySqL is used as in-built but we can change as per need.

![image](https://github.com/user-attachments/assets/228535e9-86de-424f-91fb-b98112539c9c)

Thrift / JDBC / ODBC client : Hive is based upon Apache Thrift so Thrift based clients can execute HQL. Also, Hive supports connection requests from JDBC and ODBC connectors. 
Hive Server 2 : This is a successor to Hive server 1 . It supports queries from multiple users / concurrent queries and return the results.
Beeline : This is a command line interface provided by hive.
Driver : This recieves the query fired by the user and creates a session and passes it to the compiler
Query compiler : This is responsible for parsing the query , create execution plans and performs check on queries e.g. Appropriate table and column names and logic is as per synatx
Query Optimiser : It will choose the most beneficial query plan created by the compiler and decides on how many blocks the query needs to be divided and order of execution
Execution Engine : Converts the HQL to map reduce job

# Types of Tables 
External Table
These tables which reference the file that are kept in HDFS or any other external storage
The data persists even if the table is delted 
Managed Table
These tables are internal to hive
Once the table is deleted the data also goes away

# Partitioning and Bucketing in Hive
Partitioning
The process of splitting up the data into different folders on the basis of column values. Date , stae , country are few common columns used in partition
Partitioning is of 2 types :- Static and Dynamic

Bucketing
Suppose we do not have any "descriptive" column on the basis of which we can divide our data, we can use bucketing
In bucketing we use hash values on certian columns so that keys with the similar hash values goes into same bucket.

# Joins
Map-set join 
  We join the data at the mapper phase itself so that the reducer phase is skipped and results are executed faster
  Here, the small dataset out of the two is broadcast on all the nodes so that join happens at every node
Bucket Join 
  Here the join key being used in both tables is bucketed
  The buckets of the larger table is multiple of the smaller table
Sort Merge join
  Here the join key being used in both tables is bucketed
  The buckets of buckets is same fo both tables


# Resources 
1. Google DataProc service
2. HQL

![image](https://github.com/siddhantrawatdata/hive/assets/29181893/e6839c2d-9f90-48b2-b944-bb32c45c7b6a)



