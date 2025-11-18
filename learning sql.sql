create database p_db;
use p_dp;

create table demo18(
    d_id int auto_increment ,
    name varchar(100), primary key(d_id)
);
insert into demo18(name)values
('sahil');
insert into demo18(name)values('raj'),('vijay'),('ramesh'),('dablu'),('pankaj'),('rohit'),('aryan'),('manoj');
select * from demo18;
ALTER TABLE demo18
ADD created_date DATE;
INSERT INTO demo18 (name, created_date)
VALUES ('Harpal', '2025-11-18');
select * from demo18;
alter table demo18
ADD Birthday DATE;
insert into demo18(name,created_date,Birthday)values('shiva',11/02/2026,14/08/2005);
select * from demo18;

