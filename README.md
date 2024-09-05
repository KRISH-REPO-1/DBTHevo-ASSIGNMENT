# DBTHevo-ASSIGNMENT
Assignment for Hevo
Description:- This assignment is to build no code pipeline using Hevo account(using snwflake partner connect) from postgres to snowflake. postgres is hosted on my local using docker. Further use DBT- snowflake to transform the data and obtain customer order related data

prerequiite:
1. docker
2. python 3.10
3. DBT snowflake adapter for snowflake using 
4. source files
5. snowflake account
6. hevo account


How to build project:-

Source config:- 
1. install postgres and pgadmin using docker on windows.installation steps are in docker folder
2. create tables and import files on postgres.
3. Make sure to update configs so that hevo can find postgres db on network.

Hevo config
1. create postgres connection in Hevo using  host port user password and database
2. confgure hevo to ingest data into sowflake assign type of load full load  and frequency of the load for e.g 30 mins
3. by defauly hevo puts the file in public schema.

DBT config(shared in folders)
1. use vs code to create and manage your porject.
2. create python virtual environment.
3. create and configure DBT models snpashot and test to achive assignment goal.
Use DBT Build command to materialize table in assignment.


