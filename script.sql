CREATE DATABASE DB29April;
USE DB29April;
CREATE TABLE employee_master
(
  empcode VARCHAR(6) PRIMARY KEY,
  firstname VARCHAR(15) NOT NULL,
  middlename VARCHAR(15),
  lastname VARCHAR(15) NOT NULL,
  desig VARCHAR(15) NOT NULL,
  dept VARCHAR(15) NOT NULL,
  basic FLOAT(7,2) NOT NULL,
  date_of_birth DATE NOT NULL
);

INSERT INTO employee_master VALUES('E00001','Peter',null,'Desouza','Mgr','Mkt',18000,'1980-12-06');
INSERT INTO employee_master VALUES('E00002','Nalini','Kumari','Sharma','AsstMgr','Mkt',12000,'1985-10-12');
INSERT INTO employee_master VALUES('E00003','Pankaj','Kumar','Shukla','AsstMgr','HR',15000,'1980-09-10');
INSERT INTO employee_master VALUES('E00004','Ashish',null,'Kumar','AsstMgr','Sales',14000,'1981-09-10');
INSERT INTO employee_master VALUES('E00005','Atul','Kumar','Shukla','AsstMgr','Mkt',15000,'1983-09-10');


SELECT count(empcode) NUMBER_OF_EMPLOYEES 
FROM employee_master;

SELECT desig,count(empcode)  number_of_employees
FROM employee_master
GROUP BY desig;

SELECT desig,count(empcode) 
FROM employee_master
GROUP BY desig
HAVING count(empcode)>1;
 