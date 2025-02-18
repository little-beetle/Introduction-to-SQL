show databases;
use ebay;
show tables;
select * from good;
describe good;
create database sql_intro;
show databases;

use sql_intro;

create table emp_details (Name varchar(25), Age int, sex char(1), doj date, city varchar(15), salary float);

describe emp_details;

insert into emp_details
values("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("Shane", 30, "M", "1999-06-25", "Seattle", 55000),
("Marry", 28, "F", "2009-03-10", "Boston", 62000),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("Sara", 32, "F", "2017-10-27", "New York", 72000),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000)
;

select * from emp_details;

select distinct city from emp_details;

select count(name) as count_name from emp_details;

select avg(salary) from emp_details;

select name, age, city from emp_details;

select * from emp_details where age > 30;

select name, sex, city from emp_details where sex = 'F';

select * from emp_details where 
	city = 'Chicago' or city = 'Austin';

select * from emp_details where 
	city in ('Chicago', 'Austion');

select * from emp_details where 
	doj between '2000-01-01' and '2010-12-31';
    
select * from emp_details where
	age > 30 and sex in ("M");

select sex, sum(salary) as total_salary from emp_details
group by sex;

select * from emp_details order by salary;

select (10 + 20) as addition;

select length('India') as total_len;

select repeat('@', 10);

select upper('India');

select lower('India');

select curdate();

select day(curdate());

select now();


# Strings finctions

select upper('India') as upper_case;

select lcase('INDIA') as lower_case;

select character_length('India') as total_len;

select character_length(name) as total_len from emp_details;
select char_length(name) as total_len from emp_details

