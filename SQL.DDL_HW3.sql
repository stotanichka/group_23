select e.employee_name, s.monthly_salary 
from employees_salary as es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id;

select e.employee_name, s.monthly_salary 
from employees_salary as es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id
where s.monthly_salary<2000; 

--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает)
select  s.monthly_salary 
from employees_salary as es 
join employees e on e.id = es.employee_id 
right join salary s on s.id = es.salary_id
where e.employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.
select  s.monthly_salary 
from employees_salary as es 
join employees e on e.id = es.employee_id 
right join salary s on s.id = es.salary_id
where e.employee_name is null and s.monthly_salary<2000;

--Найти всех работников кому не начислена ЗП
select  e.employee_name 
from employees_salary as es 
right join employees e on e.id = es.employee_id
where es.salary_id is null;

--Вывести всех работников с названиями их должности.

select e.employee_name, r.role_name from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id;

 --7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
where r.role_name like '%Java %';

 --8. Вывести имена и должность только Python разработчиков.

select e.employee_name, r.role_name from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
where r.role_name like '%Python%';

 --9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
where r.role_name like '%QA%';
 --10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
where r.role_name like '%Manual QA%';

--11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
where r.role_name like '%Automation QA%';

 --12. Вывести имена и зарплаты Junior специалистов
select e.employee_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%';
 --13. Вывести имена и зарплаты Middle специалистов
select e.employee_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle%';
 --14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Senior%';
 --15. Вывести зарплаты Java разработчиков
select e.employee_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Java %';
 --16. Вывести зарплаты Python разработчиков
select e.employee_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Python%';
 --17. Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior Python%';
 --18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle JavaScript%';
 --19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like 'Senior Java %';
 --20. Вывести зарплаты Junior QA инженеров
select s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%' and r.role_name like '%QA%';
 --21. Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary) as avg_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%';

 --22. Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary) as sum_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%JavaScript%';

--23. Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary) as min_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%QA%';
--24. Вывести максимальную ЗП QA инженеров
select max(s.monthly_salary) as max_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
where r.role_name like '%QA%';
 --25. Вывести количество QA инженеров
select count(e.*) from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id 
where r.role_name like '%QA%';

 --26. Вывести количество Middle специалистов.
select count(e.*) as cnt from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id 
where r.role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(*) from employees;

 --28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary) as sum_salary from employees_salary es
join salary s on s.id = es.employee_id;

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, r.role_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id
order by s.monthly_salary asc;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary asc;
--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id
where s.monthly_salary < 2300
order by s.monthly_salary asc;
--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary from roles_employee re
join roles r on r.id = re.role_id
join employees e on e.id = re.employee_id
join employees_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary asc;







