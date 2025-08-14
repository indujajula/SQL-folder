create database indu;
use indu;
create table Departments(Deptid int PRIMARY KEY,deptName varchar(20));
create table employees1(empid int PRIMARY KEY,empName varchar(20),deptid int,salary int,Hiredate date,FOREIGN KEY (deptid) references departments(deptid));
insert into departments values (1,'HR'),(2,'IT'),(3,'Sales');
insert into employees1 values(101,'jhon',1,50000,'2018-02-12'),
(102,'alice',2,60000,'2019-07-10'),
(103,'bob',3,55000,'2020-05-05'),
(104,'carol',4,45000,'2017-09-20');
select * from departments;
-- display all records from the employes table --
select * from employes;
-- display only empname and salary of all employes --
select empname,salary from employes;
-- find all employes who belong to IT department --
select * from employes join departments on employes.deptid-departments.deptid where departments.deptname-'IT';
-- list employes whose salary is greater than 50,000 --
select * from employes where salary>50000;
-- find employes hired before 2020-01-0select * from employes  --
select * from employes where hiredate < '2020-01-01'
-- disaplay employes in descending order of salary --
select * from employes order by salary desc;
-- count total number of all employes --
select count(*) as tol_cnt_emp from employes;
-- find the average of all employes --
select avg(salary) as avg_sal_of_all_emp from employes;
-- find the maximum salary in each department --
select deptname,max(salary)from employee join departments on employes.deptid-departments.deptid group by departments.deptname;
select deptid,max(salary) from employes group by deptid;
-- find departments having more than 1 employee --
select dept id from employes group by deptid having count(empid)>1;

