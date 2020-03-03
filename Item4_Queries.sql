spool SpoolItem4Data.txt

alter session set nls_date_format = 'YYYY-MM-DD';

insert into department(Dname,Dnumber,Mgr_ssn,Mgr_start_date) values ('Services',1, '123456789', '2012-08-11'); 
insert into department(Dname,Dnumber,Mgr_ssn,Mgr_start_date) values ('Purchasing', 3, '990110110', '2013-02-02'); 
insert into department(Dname,Dnumber,Mgr_ssn,Mgr_start_date) values ('Customers', 12, '333445555', '2013-01-14'); 
update dept_locations set dnumber='9' where dlocation='Seattle';
update employee set salary=55000 where ssn='444444444';
Insert into EMPLOYEE(FNAME,mnit,lname,ssn,bdate,address,sex,salary,super_ssn,dno) values ('Jane', 'B', 'Smith', '666666606', '1980-03-01', '3556 W Second Street,Miami,FL', 'F', 85000, '666666603', 5); 
update works_on set hours='25' where essn='666884444' and pno='1' ; 
delete from employee where ssn='432765098'; 
DELETE from department where dnumber='9'; 
DELETE from dependent where essn='666666608'; 

spool off;


