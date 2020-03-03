spool SpoolItem3Data.txt

alter session set nls_date_format = 'YYYY-MM-DD';

Select FNAME,mnit,lname,ssn,bdate,address,sex,salary,super_ssn,dno from employee where  lname= 'Jones' or lname='James';
Select FNAME,mnit,lname,ssn,bdate,address,sex,salary,super_ssn,dno from employee where  fname= 'Kim' or fname='Wilson';
SELECT e.fname,e.ssn,count(*) as count_of_project,sum(w.hours) as Total_Hours from employee e, works_on w where e.ssn=w.essn GROUP BY e.fname,e.ssn having count(*)>1;
SELECT p.pname,p.pnumber,p.plocation,count(*) as No_of_Employee from project p, works_on w where p.pnumber=w.pno group by p.pname,p.pnumber,p.plocation;
select distinct e.ssn,e.fname,e.lname,p.pnumber,p.pname,w.hours from employee e, project p, works_on w, dept_locations de where
e.ssn=w.essn and w.pno=p.pnumber and p.dnum= de.dnumber and p.plocation='Houston' and de.dnumber='5';
SELECT e.lname, e.fname, sum(w.hours) as total_hours from employee e, works_on w where e.ssn=w.essn group by(e.lname, e.fname ) having sum(w.hours)>40;
Select e.fname,e.lname,count(*) from employee e,employee s, department d where d.mgr_ssn = e.ssn and e.ssn = s.super_ssn group by(e.fname,e.lname);
select pname,sum(hours) TOTAL_HOURS from   works_on,project where  pno = pnumber group by pname;
select fname,lname from employee where  ssn in (select essn from dependent where essn=ssn group by(essn) having count(essn)>2 );
select fname,lname from employee where  ssn in (select essn from dependent where essn=ssn and relationship='Son' or relationship='Daughter' group by(essn) having count(essn)>1 );
select fname,lname from employee where ssn in (select essn from works_on,project where pno = pnumber) and dno in (select dnumber from   dept_locations where  dlocation = 'Atlanta');
select dname, count(*) from department d, project p, dept_locations de where p.dnum=d.dnumber and de.dnumber=d.dnumber and de.dlocation like'%Houston%' group by(dname);

spool off;



