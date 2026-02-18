create database college;

use college;

create table student(
rollno integer primary key,
name varchar(50),
marks integer NOT NULL,
grade varchar(1),
city varchar(20)
);

insert into student (rollno,name,marks,grade,city) values(101,'anil',78,'c','pune');
insert into student (rollno,name,marks,grade,city) values(102,'bhumika',93,'a','mumbai');
insert into student (rollno,name,marks,grade,city) values(103,'chetan',85,'b','mumbai');
insert into student (rollno,name,marks,grade,city) values(104,'dhruv',96,'a','delhi');
insert into student (rollno,name,marks,grade,city) values(105,'emanuel',12,'f','delhi');
insert into student (rollno,name,marks,grade,city) values(106,'farah',82,'b','delhi');

select * from student;

select distinct city from student;

select distinct city from student;

select * from student where marks >= 80;

select * from student where city like 'delhi';

select * from student where marks >= 80 AND city like 'delhi'; 

//sub query

select max(marks)
from (select * from student where city like 'delhi') as temp;

//arithmatic +
select * from student where marks+10 >100;

//between
select * from student where marks between 80 and 90;

//in
select * from student where city in('pune','mumbai');
//not in
select * from student where city not in('delhi');

//limit
select * from student LIMIT 3;

//orderby
select * from student order by rollno desc; 

//aggregate_function
select  count(rollno) from student;

//groupby
select city,avg(marks) from student group by city;

//finding a average marks in each city in ascending order
select city,avg(marks) from student group by city order by avg(marks) desc;

//gradewise count
select grade, count(rollno) from student group by grade;

//alter_table add_column
alter table student
add age int;

//alter_table remove_column
alter table student
drop column age;

select city,count(rollno) 
from student
group by city
having max(marks)>=90;

//update
update student
set grade = 'o'
where grade = 'a';

select * from student;

//one marks plus for each record
update student
set marks=marks+1
where marks>0;

//delete
delete from student where marks<33;

//practice
delete from student where marks<80;
alter table student drop column grade;

//two tables

create table dept(
	id int primary key,
	name varchar(50)
);

insert into dept values(01,'ce'),(02,'cs'),(03,'it');

update dept
set id=04
where id=03

delete from dept where id =04;
select * from dept;

create table teacher(
	id int primary key,
	name varchar(50),
	dept_id int
	foreign key (dept_id) references dept(id)
	on update cascade
	on delete cascade
);

insert into teacher values(101,'adam',02),(102,'bob',01),(103,'candy',03);

select * from teacher;


//inner_join
create table stud(
	student_id int primary key,
	name varchar(50)
);

insert into stud values(101,'ajay'),(102,'bob'),(103,'bist');
select * from stud;

create table course(
	course_id int primary key,
	subject varchar(50)
);

insert into course values(102,'cs'),(104,'ec');
select * from course;

select *
from stud as s
inner join course as c
on s.student_id = c.course_id;

//left join
select *
from stud as s
left join course as c
on s.student_id = c.course_id;

//right join
select * 
from stud as s
right join course as c
on s.student_id = c.course_id;

//full_join
select * 
from stud as s
full outer join course as c
on s.student_id = c.course_id;

//self_join


//union
select name from stud
union All
select name from stud;

//sub_query
select name,marks 
from student
where marks > (select avg(marks) from student);

select rollno,name 
from student
where rollno in(select rollno from student where rollno % 2 = 0);
