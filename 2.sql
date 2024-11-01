show databases;

use sql_intro;

show tables;

create table employees (Emp_Id int primary key, Emp_name varchar(25), Age int, Gender char(1), Doj date, Dept varchar(20), City varchar(15), Salary float);

describe employees;



INSERT INTO employees (Emp_Id, Emp_name, Age, Gender, Doj, Dept, City, Salary) VALUES
(1, 'Alice', 28, 'F', '2015-01-12', 'HR', 'New York', 55000),
(2, 'Bob', 35, 'M', '2012-03-22', 'Finance', 'Los Angeles', 67000),
(3, 'Charlie', 42, 'M', '2010-05-15', 'IT', 'San Francisco', 92000),
(4, 'Diana', 30, 'F', '2018-07-18', 'Marketing', 'Chicago', 48000),
(5, 'Ethan', 26, 'M', '2019-11-01', 'Tech', 'Houston', 51000),
(6, 'Fiona', 29, 'F', '2017-09-07', 'Sales', 'Seattle', 60000),
(7, 'George', 40, 'M', '2011-02-14', 'Product', 'Austin', 82000),
(8, 'Hannah', 33, 'F', '2016-04-19', 'Finance', 'Miami', 73000),
(9, 'Ian', 38, 'M', '2013-08-25', 'Tech', 'Boston', 85000),
(10, 'Jenna', 27, 'F', '2020-06-12', 'IT', 'Dallas', 54000),
(11, 'Kyle', 31, 'M', '2014-10-30', 'Product', 'San Diego', 62000),
(12, 'Lara', 24, 'F', '2021-01-04', 'HR', 'Denver', 45000),
(13, 'Mike', 37, 'M', '2009-11-23', 'Sales', 'New York', 90000),
(14, 'Nina', 34, 'F', '2012-07-11', 'Tech', 'San Francisco', 88000),
(15, 'Oscar', 29, 'M', '2016-05-05', 'Marketing', 'Chicago', 52000),
(16, 'Paula', 41, 'F', '2008-03-17', 'Finance', 'Houston', 78000),
(17, 'Quinn', 25, 'M', '2019-10-15', 'Product', 'Seattle', 49000),
(18, 'Rita', 32, 'F', '2015-06-22', 'IT', 'Miami', 68000),
(19, 'Sam', 45, 'M', '2006-01-29', 'HR', 'New York', 95000),
(20, 'Tina', 28, 'F', '2017-04-08', 'Sales', 'Austin', 62000),
(21, 'Umar', 33, 'M', '2013-05-14', 'Tech', 'Dallas', 74000),
(22, 'Vera', 39, 'F', '2011-09-20', 'Marketing', 'Chicago', 87000),
(23, 'Will', 36, 'M', '2012-12-15', 'Finance', 'Los Angeles', 78000),
(24, 'Xena', 27, 'F', '2020-02-10', 'IT', 'San Francisco', 56000),
(25, 'Yuri', 29, 'M', '2016-08-04', 'Tech', 'Houston', 61000),
(26, 'Zara', 30, 'F', '2015-11-30', 'Product', 'Seattle', 65000),
(27, 'Adam', 31, 'M', '2014-06-19', 'Sales', 'Boston', 63000),
(28, 'Betty', 26, 'F', '2018-09-12', 'HR', 'Miami', 50000),
(29, 'Carl', 40, 'M', '2009-07-23', 'Finance', 'New York', 89000),
(30, 'Dana', 35, 'F', '2013-10-28', 'IT', 'Chicago', 71000),
(31, 'Eli', 34, 'M', '2011-02-18', 'Product', 'Los Angeles', 83000),
(32, 'Fay', 28, 'F', '2020-03-29', 'Tech', 'San Francisco', 58000),
(33, 'Gus', 41, 'M', '2008-12-16', 'Marketing', 'Houston', 76000),
(34, 'Holly', 36, 'F', '2015-07-10', 'Finance', 'Austin', 75000),
(35, 'Isaac', 39, 'M', '2009-11-02', 'Sales', 'Chicago', 86000),
(36, 'Jill', 26, 'F', '2019-05-27', 'IT', 'Dallas', 50000),
(37, 'Ken', 37, 'M', '2013-08-14', 'HR', 'New York', 77000),
(38, 'Lena', 29, 'F', '2017-03-06', 'Tech', 'Miami', 64000),
(39, 'Mason', 43, 'M', '2006-04-21', 'Product', 'Seattle', 91000),
(40, 'Nora', 31, 'F', '2012-12-01', 'Finance', 'San Francisco', 72000),
(41, 'Owen', 27, 'M', '2018-01-09', 'Marketing', 'Houston', 56000),
(42, 'Pia', 34, 'F', '2014-09-16', 'IT', 'Los Angeles', 67000),
(43, 'Quincy', 38, 'M', '2009-03-08', 'Sales', 'Chicago', 85000),
(44, 'Rene', 30, 'F', '2016-11-22', 'Tech', 'Austin', 59000),
(45, 'Steve', 45, 'M', '2005-10-14', 'HR', 'New York', 93000),
(46, 'Tara', 33, 'F', '2013-06-18', 'Finance', 'Dallas', 73000),
(47, 'Uma', 28, 'F', '2018-02-07', 'Product', 'Miami', 54000),
(48, 'Vic', 36, 'M', '2012-04-02', 'Marketing', 'Seattle', 74000),
(49, 'Wendy', 29, 'F', '2017-09-10', 'Sales', 'Chicago', 61000),
(50, 'Xander', 37, 'M', '2014-05-23', 'Tech', 'San Francisco', 82000);

select * from employees;

select distinct city from employees;

select distinct dept from employees;

select avg(age) from employees;

#avg age in each dept

select dept, round(avg(age),1) as average_age from employees group by dept;

select dept, sum(salary) as total_salary from employees
group by dept;

select count(emp_id), city from employees
group by city
order by count(emp_id) desc;

select year(doj) as year, count(emp_id) 
from employees
group by year(doj);

create table sales (product_id int, sell_price float, quantity int, state varchar(20));

INSERT INTO sales VALUES
(121, 320.0, 3, 'California'),
(121, 320.0, 6, 'Texas'),
(121, 320.0, 4, 'Alaska'),
(123, 290.0, 2, 'Texas'),
(123, 290.0, 7, 'California'),
(123, 290.0, 4, 'Washington'),
(121, 320.0, 7, 'Ohio'),
(121, 320.0, 2, 'Arizona'),
(123, 290.0, 8, 'Colorado');

select * from sales;

select product_id, sum(sell_price * quantity) as revenue
from sales group by product_id;

create table c_product (product_id int, cost_price float);

insert into c_product 
values(121, 270.0),
(123, 250.0);

select * from employees;

select dept, avg(salary) as avg_salary
from employees
group by dept
having avg(salary) > 70000;

select city, sum(salary) as total
from employees
group by city
having sum(salary) > 200000;

select dept, count(*) as emp_count
from employees
group by dept
having count(*) > 2;

select city, count(*) as emp_count
from employees
where city != 'Houston'
group by city
having count(*) > 2;

select dept, count(*) as emp_count
from employees 
group by dept
having avg(salary) > 70000;