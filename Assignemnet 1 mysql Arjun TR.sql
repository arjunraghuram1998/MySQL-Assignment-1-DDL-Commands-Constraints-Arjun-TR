create database Employee;
use Employee;

create table departments(
department_id int primary key auto_increment,
department_name varchar(100));

select * from departments;

create table Location(
location_id int,
location varchar(30));

select * from Location;

create table Employees(
employee_id int,
employee_name varchar(50),
gender enum ("M,F"),
age int, 
hire_date Date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2));

select * from Employees;	


alter table Employees add email varchar(50);
alter table Employees modify designation varchar (250);
alter table Employees drop column age;
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;


Rename table departments to Departments_info;
select * from Departments_info;
Rename table location to Locations;


TRUNCATE TABLE employees;
select * from employees;

DROP TABLE Employees;
DROP DATABASE employees;

create table Employees(
employee_id int,
employee_name varchar(50),
gender enum ("M,F"),
age int, 
hire_date Date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2));

select * from Employees;
select * from department_info;


create table departments(
department_id int primary key auto_increment,
department_name varchar(100)not null unique);

select*from departments;

create table Location(
location_id int auto_increment Primary Key,
location  varchar(30) not null unique);
select * from location;

create table Employees(
employee_id int AUTO_INCREMENT PRIMARY KEY,
employee_name varchar(50) not null,
gender enum ("M","F") not null,
age int check (age>=18), 
hire_date Date default (current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2));

select * from Employees;

ALTER TABLE employees
  ADD CONSTRAINT fk_employees_department
    FOREIGN KEY (department_id)
    REFERENCES departments (department_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
  ADD CONSTRAINT fk_employees_location
    FOREIGN KEY (location_id)
    REFERENCES location (location_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT;



















