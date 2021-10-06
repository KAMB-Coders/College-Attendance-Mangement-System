drop database College;
create database College;
use College;
show tables;
/*select * from C3012020;*/
create table Department(d_id varchar(3) primary key,d_name varchar(40),hod varchar(6));
desc Department;

create table Teacher(t_id varchar(6) primary key,t_name varchar(20),t_dept varchar(3) references Department(d_id),phone varchar(10),email varchar(30),pass varchar(20));
desc Teacher;

create table Course(c_id integer primary key,c_name varchar(15),branch varchar(20),semester integer,n_sub integer);
desc Course;

create table Student(s_id varchar(6) primary key,s_name varchar(30),s_course integer references Course(c_id),phone varchar(10),email varchar(30),pass varchar(20));
desc Student;

create table Admins(a_id varchar(6) primary key,a_name varchar(20),phone varchar(10),email varchar(30),pass varchar(20));
desc Admins;

create table Subjects(sub_code varchar(6) primary key,sub_name varchar(20),c_id integer references Course(c_id));
desc Subjects;

create table Lecture(l_id varchar(6) primary key,class varchar(20),sub_code varchar(6),t_id varchar(6),l_date date);
desc Lecture;

show tables;
