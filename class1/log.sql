--test in sakila
use `sakila`;
show tables;

select count(*) from actor;
create database sims;
use sims;
//新建userinfo表
create table sims_UserInfo(
UserId varchar(20) not null primary key,
UserName varchar(20),
UserSex varchar(1),
UserCollage varchar(20),
UserSpecialty varchar(20),
UserPwd varchar(8),
UserDescription varchar(20)
);

//新建uusertype表
create table sims_UserType(
UserTypeId varchar (10) not null primary key,
UserTypeName varchar (20),
UserRight varchar (10),
UserDescription varchar(20)
);

//初始数据
insert into sims_UserType value ('admin','admin','111','admin');
insert into sims_UserType value ('student','student','110','student');
insert into sims_UserInfo value ('admin','admin','男','admin','admin','admin','admin','admin');
insert into sims_UserInfo value ('admin','admin','男','admin','admin','admin','admin');

SELECT default_character_set_name FROM information_schema.SCHEMATA S WHERE schema_name = "sms";
ALTER DATABASE sms CHARACTER SET utf8 COLLATE utf8_general_ci;
show VARIABLES like 'character%';
ALTER TABLE  sims_UserType DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE  sims_UserInfo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
SELECT TABLE_NAME,CONCAT('ALTER TABLE  ',TABLE_NAME,' DEFAULT CHARACTER SET ',a.DEFAULT_CHARACTER_SET_NAME,' COLLATE ',a.DEFAULT_COLLATION_NAME,';') executeSQL FROM information_schema.SCHEMATA a,information_schema.TABLES b
WHERE a.SCHEMA_NAME=b.TABLE_SCHEMA
AND a.DEFAULT_COLLATION_NAME!=b.TABLE_COLLATION
AND b.TABLE_SCHEMA='sms'