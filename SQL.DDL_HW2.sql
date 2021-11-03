--1.Таблица employees

--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.
create table employees (
  id serial primary key,
  employee_name varchar (50) not null
);

insert into employees (id,employee_name)
values (default, 'Сточанська Тетяна'), 
(default, 'Мария Кольцова'),
(default, 'Сточанська Тетяна');

select *from employees;
--===================================
--2.Таблица salary

--Создать таблицу salary
-- id. Serial  primary key,
--monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
-- 1000
-- 1100
-- 1200
-- 1300
-- 1400
-- 1500
-- 1600
-- 1700
-- 1800
-- 1900
-- 2000
-- 2100
-- 2200
-- 2300
---2400
-- 2500
create table salary (
  id serial primary key,
  monthly_salary Int not null
);
insert  into salary (id, monthly_salary)
values (default, 1000),  (default, 1100),  (default, 1200), 
 (default, 1300),  (default, 1400),  (default, 1500), 
 (default, 1600),  (default, 1700),  (default, 1800),  (default, 1900),  (default, 2000), 
 (default, 2100),  (default, 2200),  (default, 2300),  (default, 2400);
select * from salary;
---===============================

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
create table employees_salary (
  id serial primary key,
  employee_id int not null,
  salary_id int not null,
--  foreign key (employee_id)
--     references employees (id),
--  foreign key (salary_id)
--     references salary (id)
);
select * from employees_salary;
insert into employees_salary (id, employee_id, salary_id)
values (default, 3, 7);
select * from employees_salary;

select employee_name, monthly_salary  from employees_salary es
join employees e on es.employee_id = e.id
join salary s on es.salary_id = s.id
--====================

create table roles (
  id serial primary key,
  role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30);
insert into roles (id, role_name)
values (default, 'Junior Python developer'),
(default, 'Middle Python developer'),
(default, 'Senior Python developer'),
(default, 'Junior Java developer'),
(default, 'Middle Java developer'),
(default, 'Senior Java developer'),
(default, 'Junior JavaScript developer'),
(default, 'Middle JavaScript developer'),
(default, 'Senior JavaScript developer'),
(default, 'Junior Manual QA engineer'),
(default, 'Middle Manual QA engineer'),
(default, 'Senior Manual QA engineer'),
(default, 'Project Manager'),
(default, 'Designer'),
(default, 'HR'),
(default, 'CEO'),
(default, 'Sales manager'),
(default, 'Junior Automation QA engineer'),
(default, 'Middle Automation QA engineer'),
(default, 'Senior Automation QA engineer');

create table roles_employee (
  id serial primary key,
  employee_id int not null unique,
  role_id int not null,
  foreign key (employee_id)
     references employees (id),
  foreign key (role_id)
     references roles (id)
);

insert into roles_employee (id, employee_id, role_id)
values (default, 7, 2);
select * from roles_employee;














