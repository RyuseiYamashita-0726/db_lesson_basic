
-- Q1

use db_lesson;

create table department (
department_id int unsigned auto_increment primary key,
name varchar(20) not null,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);

-- /Q2/

 alter table people add column department_id int unsigned after email;

--  /Q3/

 insert into people (name, email, age, gender) values
('Aさん', 'A@beyond-works.co.jp', 30, 1),
('Bさん', 'B@beyond-works.co.jp', 30, 1),
('Cさん', 'C@beyond-works.co.jp', 30, 1),
('Dさん', 'D@beyond-works.co.jp', 30, 1),
('Eさん', 'E@beyond-works.co.jp', 30, 1),
('Fさん', 'F@beyond-works.co.jp', 30, 1),
('Gさん', 'G@beyond-works.co.jp', 30, 1),
('Hさん', 'H@beyond-works.co.jp', 30, 1),
('Iさん', 'I@beyond-works.co.jp', 30, 1),
('Jさん', 'J@beyond-works.co.jp', 30, 1);

    update people set department_id = 2 where person_id between 10 and 13;
    update people set department_id = 3 where person_id = 14;
    update people set department_id = 4 where person_id = 15;
    update people set department_id = 5 where person_id = 16;

 insert into reports (person_id, content) values
(7, 'Aですよおおおおおお'),
(8, 'Bですよおおおおおお'),
(9, 'Cですよおおおおおお'),
(10, 'Dですよおおおおおお'),
(11, 'Eですよおおおおおお'),
(12, 'Fですよおおおおおお'),
(13, 'Gですよおおおおおお'),
(14, 'Hですよおおおおおお'),
(15, 'Iですよおおおおおお'),
(16, 'Jですよおおおおおお');

-- /Q4/

update people set department_id = 2 where person_id between 1 and 6;

-- /Q5/

select name, age from people where gender = 1 order by age desc;

-- /Q6/

peopleテーブルのレコードの中から、name,email,ageカラムのみを表示するクエリで、department_idの値が1のレコードのみを、created_atの値の昇順に並び変えている。

-- /Q7/

select name from people
where age between 20 and 29 and gender = 2
or age between 40 and 49 and gender = 1;

-- /Q8/

elect * from people where department_id = 1 order by age;

-- /Q9/

 select avg(age) as average_age from people where gender = 2;

--  /Q10/

  select p.name, d.name, r.content
   from people p join departments d join reports r 
   on p.person_id = r.person_id and p.department_id = d.department_id;

--    /Q11/

   select p.name from people p left outer join reports using (person_id) where con
   tent is null;

   