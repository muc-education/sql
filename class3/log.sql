use demo;
# example 1
# 大小写lower_case_table_names=1
create table student(
sno char(5) not null unique,
sname char(20) unique ,
ssex char(1),
sage int,
sdept char(15));

# example 2
use demo;
create table s(
sno char(5) not null unique,
sname char(20) unique ,
sex char(1),
age int);

create table sc(
sno char(5) not null unique,
cno char(5) ,
grade int);

create table c(
cno char(5) not null unique,
cname char(20) unique);


## 2.1
select sname,age from s,sc,c where s.sno=sc.sno and c.cno=sc.cno and cname='matchs';

# 2.2
select sno from sc where cno='c1' and sno in (select sno from sc where cno='c2');

# 2.3
select sno,sname,age from s where age between 18 and 20;

# 2.4
select sno, avg(grade) '平均成绩' from sc group bby sno having age (grade)>80;

# 2.5
select sname from s where not exists (select * from c where ot exists (select * from sc where sno=s.sno and cno=c.cno));

# 2.6
select sname from s,sc where s.sno =sc.sno group by sname having count (*)>3;

# example 3
create table student(
sno char(9) primary key ,
sname char(20) unique ,
sex char (2) check(sex='male' or sex='female'),
sage smallint
);

alter table c
alter column cname char (40);

insert student(sno,sname,sex,sage) values('2018','a','male',18)
select sname,sage from s where s.sex='female';
