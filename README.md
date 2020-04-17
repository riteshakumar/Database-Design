# Database-Design

Designing a database structure for company and its business components.

Execution: 
ssh nedt-id@omega.uta.edu
password

sqlplus /nolog
connect net-id@pcse1p
password
 
echo @Create_Tables | sqlplus net-id/password 

javac -classpath ojdbc6.jar Java_SQl.java

java Java_SQl

echo @Item3_Queries | sqlplus net-id/password  

echo @Item4_Queries | sqlplus net-id/password  

echo @Integrity_Errors | sqlplus net-id/password  


