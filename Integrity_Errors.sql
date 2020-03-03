spool SpoolIntegrityErrorData.txt

alter session set nls_date_format = 'YYYY-MM-DD';

Insert into EMPLOYEE values ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555',null);
insert into department values ('Saga',5,'333445555','1988-05-22');
INSERT INTO employee VALUES ('Jennifer', 'S', 'Wallace', '987654321', '20-JUN-31', 'Bellaire,TX', 'F', 43000, '888665555', null);

DELETE FROM department where dnumber='5' ;

Insert into EMPLOYEE values ('John', 'B', 'Smith', '999999999', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555',5);
insert into department values ('Saga',7,'333445555','1988-05-22');
INSERT INTO employee VALUES ('Jennifer', 'S', 'Wallace', '987654312', '2020-06-10', 'Bellaire,TX', 'F', 43000, '888665555', 5);

spool off;