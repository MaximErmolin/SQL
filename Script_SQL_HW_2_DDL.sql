--Таблица employees
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
    id serial primary key,
    employee_name Varchar(50) not null
);

insert into employees(employee_name)
values ('Jack SMITH'),
('Oliver BROWN'),
('James WILSON'),
('Charlie THOMSON'),
('Harris STEWART'),
('Lewis ROBERTSON'),
('Leo CAMPBELL'),
('Noah ANDERSON'),
('Alfie	SCOTT'),
('Rory TAYLOR'),
('Alexander	MACDONALD'),
('Max CLARK'),
('Logan	MURRAY'),
('Lucas	REID'),
('Harry	MORRISON'),
('Theo YOUNG'),
('Thomas WATSON'),
('Brodie WALKER'),
('Archiem MITCHELL'),
('Jacob	PATERSON'),
('Finlaym ROSS'),
('Finn GRAHAM'),
('Daniel MARTIN'),
('Joshua MILLER'),
('Oscar	KERR'),
('Arthur JOHNSTON'),
('Hunter DAVIDSON'),
('Ethan	HENDERSON'),
('Mason	HUNTER'),
('Harrison	MCDONALD'),
('Freddie	BELL'),
('Ollie	FRASER'),
('Adam HAMILTON'),
('William GRAY'),
('Jaxon	DUNCAN'),
('Aaron	FERGUSON'),
('Cameron KELLY'),
('Liam CAMERON'),
('George MACKENZIE'),
('Jamie	SIMPSON'),
('Callum MACLEOD'),
('Matthew ALLAN'),
('Muhammad GRANT'),
('Caleb	MCLEAN'),
('Nathan BLACK'),
('Tommy	RUSSELL'),
('Carter WALLACE'),
('Blake	MACKAY'),
('Andrew WRIGHT'),
('Luke	GIBSON'),
('Jude	MARSHALL'),
('Angus	GORDON'),
('Riley	JONES'),
('Luca WHITE'),
('Samuel KENNEDY'),
('Josephm STEVENSON'),
('David	SUTHERLAND'),
('Isaac	BURNS'),
('Ryan JOHNSTONE'),
('Hamish CRAIG'),
('Sonny	MCKENZIE'),
('Arlo MURPHY'),
('Arran	HUGHES'),
('Cole SINCLAIR'),
('Robert CUNNINGHAM'),
('Blair	WILLIAMSON'),
('Dylan	WOOD'),
('Louie	MILNE'),
('Ruaridh DOCHERTY'),
('Connor MUIR');

select * from employees

--Таблица salary

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками

create table salaryHW(
    id serial primary key,
    monthly_salary Int not null
);
insert into salaryHW(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);


select * from employee_salary;


--Таблица employee_salary

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id


   
create table employee_salary(
    id serial primary key,
    employee_id int not null unique,
    salary_id int not null
    );   
   
insert into employee_salary(employee_id,salary_id)
values (3,1),
       (1,2),
       (5,3),
       (40,3),
       (23,5),
       (11, 4),
       (22, 2),
       (15, 7),
       (26, 12),
       (27, 11),
       (4, 14),
       (6, 12),
       (9, 3),
       (30, 9),
       (33, 7),
       (31, 12),
       (13, 14),
       (17, 10),
       (21, 1),
       (12, 5),
       (39, 15),
       (19, 12),
       (34, 3),
       (32, 7),
       (25, 4),
       (18, 4),
       (24, 7),
       (35, 3),
       (7, 14),
       (10, 13),
       (8, 14),
       (14, 12),
       (16, 3),
       (20, 11),
       (28, 1),
       (29, 3),
       (36, 4),
       (37, 14),
       (38, 6),
       (41, 15);
      
--Таблица roles

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table rolesHW(
    id serial primary key,
    role_name int not null unique,
    salary_id int not null
    );   
   
ALTER TABLE rolesHW
ALTER COLUMN role_name type varchar(30); 

insert into rolesHW(salary_id, role_name)
values (1, 'Junior Python developer'),
       (2,'Middle Python developer'),
       (3, 'Senior Python developer'),
       (4,'Junior Java developer'),
       (5,'Middle Java developer'),
       (6,'Senior Java developer'),
       (7,'Junior JavaScript developer'),
       (8,'Middle JavaScript developer'),
       (9,'Senior JavaScript developer'),
       (10,'Junior Manual QA engineer'),
       (11,'Middle Manual QA engineer'),
       (12,'Senior Manual QA engineer'),
       (13,'Project Manager'),
       (14,'Designer'),
       (15,'HR'),
       (16,'CEO'),
       (17,'Sales manager'),
       (18,'Junior Automation QA engineer'),
       (19,'Middle Automation QA engineer'),
       (20,'Senior Automation QA engineer');

select * from rolesHW;

Таблица roles_employee

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:


   create table roles_employee(
   id serial primary key,
   employee_id int not null unique,
   role_id int not null,
   foreign key (employee_id) references employees (id),
   foreign key (role_id) references rolesHW (id)
   );
  
  insert into roles_employee(employee_id, role_id) 
  values (1,2),
         (2,3),
         (3,7),
         (4,1),
         (5,13),
         (6,16),
         (7,16),
         (8,1),
         (9,2),
         (10,8),
         (11,3),
         (12,7),
         (13,3),
         (14,15),
         (15,17),
         (16,12),
         (17,2),
         (18,20),
         (19,19),
         (20,17),
         (21,12),
         (22,17),
         (23,12),
         (24,17),
         (25,14),
         (26,5),
         (27,2),
         (28,8),
         (29,6),
         (30,11),
         (31,12),
         (32,3),
         (33,8),
         (34,1),
         (35,7),
         (36,6),
         (37,4),
         (38,2),
         (39,4),
         (40,1);
   
  select * from roles_employee;