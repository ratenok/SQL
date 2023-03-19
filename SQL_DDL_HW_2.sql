-- 1) Создать таблицу employees
-- -id. serial, primary key,
-- -employee_name. Varchar(50), not null

create table employees (
       id serial primary key,
       employee_name varchar(50) not null
);


select * from employees;


-- 2) Наполнить таблицу employee 70 строками.

insert into employees (id, employee_name)
      values (1, 'Anna_B'),
             (2, 'Petr_O'),
             (3, 'Alla_P'),
             (4, 'Koul_I'),
             (5, 'Henry_E'),
             (6, 'Bella_A'),
             (7, 'Vika_L'),
             (8, 'Anna_W'),
             (9, 'Nina_Z'),
             (10, 'Xenia_I'),
             (11, 'Valya_C'),
             (12, 'Marina_B'),
             (13, 'Alla_X'),
             (14, 'Vova_C'),
             (15, 'Kate_N'),
             (16, 'Nelli_E'),
             (17, 'Zoya_F'),
             (18, 'Olga_D'),
             (19, 'Sasha_Q'),
             (20, 'Monika_O'),
             (21, 'Andrey_F'),
             (22, 'Nikolay_E'),
             (23, 'Olga_Q'),
             (24, 'Sasha_M'),
             (25, 'Vadim_S'),
             (26, 'Olga_W'),
             (27, 'Olga'),
             (28, 'Mila_P'),
             (29, 'Sasha_N'),
             (30, 'Denis_R'),
             (31, 'Ramina_H'),
             (32, 'Sasha_V'),
             (33, 'Olga_R'),
             (34, 'Marta_D'),
             (35, 'Juliya_G'),
             (36, 'Oksana_O'),
             (37, 'Natalia_S'),
             (38, 'Alex_H'),
             (39, 'Sasha_C'),
             (40, 'Felix_O'),
             (41, 'Sasha_R'),
             (42, 'Victoria_B'),
             (43, 'Polina_T'),
             (44, 'Olga_T'),
             (45, 'Elina_K'),
             (46, 'Misha_Z'),
             (47, 'David_J'),
             (48, 'Alina_H'),
             (49, 'Ekaterina_W'),
             (50, 'Mustafa_C'),
             (51, 'Lika_T'),
             (52, 'Daria_B'),
             (53, 'Olga_Y'),
             (54, 'Yana_V'),
             (55, 'Danila_R'),
             (56, 'Anastasia_E'),
             (57, 'Olga_U'),
             (58, 'Elena_K'),
             (59, 'Marina_D'),
             (60, 'Kirill_K'),
             (61, 'Sasha_E'),
             (62, 'Valentina_T'),
             (63, 'Kristina_B'),
             (64, 'Tamara_E'),
             (65, 'Nadia_R'),
             (66, 'Sasha_H'),
             (67, 'Ahmed_W'),
             (68, 'Sofia_L'),
             (69, 'Ninel_D'),
             (70, 'Sasha_G');


-- 3) Создать таблицу salary
-- - id. Serial primary key,
-- - monthly_salary. Int, not null


create table salary(
      id serial primary key,
      monthly_salary1 int not null
);

select * from salary;


-- 4) Наполнить таблицу salary 15 строками:
-- - 1000
-- - 1100
-- - 1200
-- - 1300
-- - 1400
-- - 1500
-- - 1600
-- - 1700
-- - 1800
-- - 1900
-- - 2000
-- - 2100
-- - 2200
-- - 2300
-- - 2400
-- - 2500


insert into salary (monthly_salary1)
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
              
              
-- 5) Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null

              
create table employee_salary(
    id serial primary key,
    employee_id int not null unique,
    salary_id int not null

);


select * from employee_salary;
      
 
-- 6) Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id
               
insert into employee_salary(id, employee_id, salary_id)
values (1, 3, 7),
       (2, 1, 4),
       (3, 5, 9),
       (4, 40, 13),
       (5, 23, 4),
       (6, 11, 2),
       (7, 52, 26),
       (8, 15, 13),
       (9, 26, 4),
       (10, 12, 1),
       (11, 33, 7),
       (12, 66, 8),
       (13, 47, 14),
       (14, 48, 15 ),
       (15, 49, 15),
       (16, 4, 8),
       (17, 6, 9),
       (18, 67, 17),
       (19, 77, 12),
       (20, 2, 12),
       (21, 21, 3),
       (22, 8, 11),
       (23, 20, 10),
       (24, 44, 13 ),
       (25, 9, 19),
       (26, 10, 11),
       (27, 24, 4),
       (28, 16, 20),
       (29, 29, 17),
       (30, 51, 6),
       (31, 30, 5),
       (32, 39, 14),
       (33, 7, 13),
       (34, 28, 6),
       (35, 19, 14),
       (36, 18, 11),
       (37, 32, 4),
       (38, 22, 12),
       (39, 17, 2),
       (40, 70, 4);
           
           
           
-- 7) Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique     

      
create table roles(
     id serial primary key,
     role_name int not null unique
);


select * from roles;

-- 8) Поменять тип столба role_name с int на varchar(30)

alter table roles 
  drop column role_name;

alter table roles 
  add role_name varchar(30) unique not null;


-- 9) Наполнить таблицу roles 20 строками:

insert into roles(id, role_name)
values (1, 'Junior Python developer'),
       (2, 'Middle Python developer'),
       (3, 'Senior Python developer'),
       (4, 'Junior Java developer'),
       (5, 'Middle Java developer'),
       (6, 'Senior Java developer'),
       (7, 'Junior JavaScript developer'),
       (8, 'Middle JavaScript developer'),
       (9, 'Senior JavaScript developer'),
       (10, 'Junior Manual QA engineer'),
       (11, 'Middle Manual QA engineer'),
       (12, 'Senior Manual QA engineer'),
       (13, 'Project Manager'),
       (14, 'Designer'),
       (15, 'HR'),
       (16, 'CEO'),
       (17, 'Sales manager'),
       (18, 'Junior Automation QA engineer'),
       (19, 'Middle Automation QA engineer'),
       (20, 'Senior Automation QA engineer');
      
      
-- 10) Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
        id serial primary key,
        employee_id int not null unique, 
        role_id int not null,
        foreign key (employee_id)
		        references employees (id),
	    foreign key (role_id)
		        references roles (id), 

);


select * from roles_employee; 

-- 11) Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
                    values (7,2),
			   (20,4),
			   (3,9),
			   (5,13),
			   (23,4),
			   (4,2),
			   (43,9),
			   (22,13),
			   (21,3),
			   (34,4),
			   (6,7),
			   (44,12),
			   (24,5),
			   (66,15),
			   (39,2),
			   (38,7),
			   (37,9),
			   (36,17),
			   (35,12),
			   (33,4),
			   (27,1),
			   (25,2),
			   (50,4),
			   (19,7),
			   (28,12),
			   (40,15),
			   (1,16),
			   (10,16),
			   (17,3),
			   (15,5),
			   (14,9),
			   (31,1),
			   (9,13),
			   (2,8),
			   (26,19),
			   (11,12),
			   (12,11),
			   (8,17),
			   (46,14 ),
			   (49,14);
		
		
		
