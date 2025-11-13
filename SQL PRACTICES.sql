CREATE DATABASE student;
use student;
CREATE table branch(
name varchar(20),
course varchar(29),
age int Not null
);
insert into branch(name,course,age)values("aryan","b.tech",19),
("raj","MBA",20),
("rasi","BBA",21),
("ravi","B.COM",22);
select*from branch;
select*from jharbade;
use demo; 

CREATE TABLE Measurement(
measurement_id INT,
sensor_name VARCHAR(255),
temperature REAL
);
insert into Measurement(measurement_id,sensor_name,temperature)values
(1,"room sensor",23.5);
select*from Measurement;
show tables;
CREATE TABLE Events(
event_id INT,
event_name VARCHAR(225),
event_data DATE
);
INSERT INTO Events(event_id,event_name,event_data)values
(1,'mst exam',"2025-10-09");
select * from Events;
CREATE TABLE MeetingSchedule(
meeting_id INT,
topic varchar(255),
start_time TIME
);
insert into MeetingSchedule(meeting_id,topic,start_time)values
(1,"project Review","10:30:00");
select * from MeetingSchedule;

CREATE TABLE sale(
sale_id INT PRIMARY KEY,
product_id INT,
quantity_sold INT,
sale_date DATE,
total_price DECIMAL(10,2)
);
insert into sale(sale_id,product_id,quantity_sold,sale_date,total_price) values(1,101,5,'2024-01-01',2500.00),
(2,102,3,"2024-01-02",900),
(3,103,2,"2024-01-02",60),
(4,104,4,"2024-01-03",80),
(5,105,6,"2024-01-03",90);

select sale_id,product_id,total_price,quantity_sold from sale where quantity_sold < 4;
select * from sales where total_price>100;
select sale_id,total_price from sale where sale_date = "2024-01-03"; 
select * from sale where total_price > 100;
create table stu (
age int
);
insert into stu(age)values(23,12,34,56);
select min(total_price)
FROM sale;
select max(total_price)
FROM sale;
select sum(total_price)
FROM sale;
select avg(total_price)
FROM sale;
select avg(total_price)
FROM sale;
select avg(total_price)
FROM sale;
select avg(total_price)
FROM sale;
select count(total_price)
FROM sale;
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
unit_price DECIMAL(10,2)
);
INSERT INTO products(product_id,product_name,category,unit_price,salary)VALUES
(101,"laptop","Electronic",500.00,50000),
(102,"smartphone","Electronic",300.00,100000),
(103,"headphone","Electronic",30.00,30000),
(104,"keyboard","Electronic",20.00,27000),
(105,"mouse","Electronic",15.00,20000);
select * from products WHERE
category = 'Electronics';
select product_name , unit_price from products;
select product_id,product_name FROM products
WHERE unit_price > 100;
SELECT AVG(unit_price)AS average_unit_price FROM products;
select * from products;
SELECT product_name,unit_price
FROM products
ORDER BY unit_price DESC;


SELECT product_name,unit_price
FROM products
ORDER BY unit_price  asc;

ALTER TABLE products
ADD salary int;
SELECT * FROM products;
ALTER TABLE products
ADD date int;
select * from products; 
ALTER TABLE products
drop date ;
ALTER TABLE products
drop dates;
select * from products;
ALTER TABLE products
drop salary;
select * from products;
ALTER TABLE products
drop date;
ALTER TABLE products
modify column unit_price VARCHAR(50);
select * from products where product_name like '__p%';
select product_id from products;
select product_id AS ID from products;
select * from products AS person;
SELECT coloumn_name AS alias_name
FROM products;
SELECT product.product_id , product_name,category,unit_price AS p_id , pro_name, p_category, u_price AS product
FROM products;
SELECT SUM(quantity_sold) AS total_quantity_sold
FROM sale
JOIN products ON sale.product_id=products.product_id
WHERE products.category = "Electronic";

CREATE table employees2(
emp_id int primary key,
emp_name varchar(50),
emp_age int,
check(emp_age>18)
);

alter table employees2
add column salary int check (salary>15000);
insert into employees2(emp_id,emp_name,emp_age,salary)values
(1,'raj',19,17000);
insert into employees2(emp_id,emp_name,emp_age,salary)values 
(2,'aryan',22,18000),
(3,'harpal',20,22000);
insert into employees2(emp_id,emp_name,emp_age,salary)values (4,'satya',24,16000);

select * from  employees2;
alter table employees2 modify salary int default '25000'; 
alter table employees2 rename to company_1;
truncate table company_1;
insert into company_1(emp_id,emp_name,emp_age,salary)values (5,'manish',26,76000);

select * from company_1;
select distinct emp_id,emp_name
from company_1;

create table person(
per_id int,
per_name varchar(40),
per_surename varchar(40),
per_age int
);
insert into person(per_id,per_name,per_surename,per_age)values 
(1,'manish','yadav',26),
(2,'raj','varma',21),
(3,'mahendra','dhoni',24),
(4,'virat','kohali',28),
(5,'satish','yadav',20),
(6,'anuj','yadav',17),
(7,'pintoo','kevat',16),
(8,'deep','kumar',18),
(9,'harpal','ahirwar',25),
(10,'pavan','singh',29);

select * from person;

create table orders(
ord_id int,
ord_num int,
per_id int
);
insert into orders(ord_id,ord_num,per_id)values
(101,1001,1), 
(102,1002,2), 
(103,1003,3), 
(104,1004,4), 
(105,1005,5), 
(106,1006,6), 
(107,1007,7), 
(108,1008,8), 
(109,1009,9),
(110,1010,10);
select * from orders;
select distinct per_id,per_id
from orders;
drop table person;
create table person(
per_id int,
per_name varchar(40), 
per_surename varchar(40),
per_age int
);
insert into person(per_id,per_name,per_surename,per_age)values 
(1,'per_name','yadav',26),
(2,'per_name','varma',21),
(3,'per_name','dhoni',24),
(4,'per_name','kohali',28),
(5,'per_name','yadav',20),
(6,'per_name','yadav',17),
(7,'per_name','kevat',16),
(8,'per_name','kumar',18),
(9,'per_name','ahirwar',25),
(10,'per_name','singh',29);

select * from person;
drop table person;
create table person(
per_id int not null,
per_name varchar(40) unique,
per_surename varchar(40) unique,
per_age int unique
);
insert into person(per_id,per_name,per_surename,per_age)values 
(1,'manish','yadav',26),
(2,'raj','varma',21),
(3,'mahendra','dhoni',24),
(4,'virat','kohali',18),
(5,'satish','yadav',20),
(6,'anuj','yadav',16),
(7,'pintoo','kevat',16),
(8,'raj','kumar',18),
(9,'harpal','ahirwar',25),
(10,'pavan','singh',29);
drop table person;
select * from person;
create table person(
per_id int not null,
per_name varchar(40) Not null  unique,
per_surename varchar(40) unique,
per_age int unique
);
drop table orders;
create table orders(
ord_id int not null,
ord_num int unique,
per_id int not null 
);
insert into orders(ord_id,ord_num,per_id)values
(101,1001,1), 
(102,1002,2), 
(103,1003,3), 
(104,1004,4), 
(105,1005,5);
select * into orders;
create table person(
per_id int not null,
per_name varchar(40) null,
per_surename varchar(40) null,
per_age int unique
);
insert into person(per_id,per_name,per_surename,per_age)values 
(1,'manish','yadav',26),
(2,'raj','varma',21),
(3,'mahendra','dhoni',24),
(4,'virat','kohali',18),
(5,'satish','yadav',20),
(6,'anuj','yadav',16);
insert into person(per_id,per_name,per_surename,per_age)values 
(1,'','',17),
(5,'','',14),
(1,'','',9);

select * from person; 

DELETE FROM person
WHERE per_name = null;

drop database company;


CREATE DATABASE company_db;
USE company_db;
CREATE TABLE company (
    com_id INT PRIMARY KEY AUTO_INCREMENT,
    com_name VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);

INSERT INTO company(com_id,com_name, city, state)VALUES 
(1,'TechSol Pvt Ltd', 'Bhopal', 'Madhya Pradesh'),
(2,'DataVision Ltd', 'Indore', 'Madhya Pradesh');
 select * from company;     
 
 CREATE TABLE empl (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    salary DECIMAL(10,2) CHECK (salary >= 10000),
    age INT CHECK (age > 25)
);
INSERT INTO empl (id,name, salary, age) 
VALUES (1,'Rohan', 15000, 28),
       (2,'Meena', 20000, 30);
select * from empl;  
ALTER TABLE empl
ADD COLUMN city VARCHAR(30);

UPDATE empl
SET city = 'Bhopal'
WHERE id = 1;
update empl
SET city = 'indore'
WHERE id = 2;

select *
FROM empl
WHERE salary >= 15000;

     

      
       












