-- query to see all the database  
show databases; 
-- query to create the new database
create database student;   
drop database student;
create database college;

use college;

create table student(
  first_name varchar(18),
  last_name varchar(20),
  city varchar(20),
  marks int,
  age integer
);

desc student;
show tables;

insert into student values('suraj', 'jadhav', 'akluj', 98, 22);
insert into student values('mahesh', 'patil', 'tasgoan', 70, 21);
insert into student values('nilesh', 'kene', 'kolhapur', 75, 22);
insert into student values('rutik', 'jagtap', 'wai', 80, 23);
insert into student values('bhushan', 'khade', 'pandharpur', 85, 22);

select * from student;

-- To add a column in a table
alter table student 
add column Email varchar(20);
-- To delete a column in a table
alter table student
drop column Email;
-- To rename a column in a table 
alter table student
rename column city to address;
-- To change the data type of a column in a table 
alter table student
modify column marks integer;

create table teacher(
  teacher_id integer primary key,
  teacher_name varchar(25) not null,
  teacher_expe int check (teacher_expe >= 4),
  teacher_course_count int unique,
  college varchar(15) default 'RIT' 
);

insert into teacher values (21 , 'prakash', 5, 2,'');
select * from teacher;