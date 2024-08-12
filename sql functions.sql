use fullstack;
show tables;
select * from persons;
desc persons;
select concat("Dhanush"," ","Bhaskaruni") as full_name;
select personid, concat(lastname," ",firstname) as full_name , address from persons;
select concat_ws(",","a","b","c","d");
select concat_ws("_",lastname,firstname) as full_name , address from persons;
select upper("gnanaasritha");
select length("gnanaasritha");
select length(firstname) as size,firstname from persons;
select char_length("gnanaasritha");
select substring("gnanaasritha",2,5);
select substring(firstname,2,5),firstname from persons;
select replace("gnanaasritha","a","d");
select replace(firstname,"a","d") as newstr from persons;
select firstname from persons 
where firstname like "%a%";
select * from persons
where city like "_______";

-- constraints

create table student100(
id int primary key auto_increment,
fullname varchar(100) not null,
email varchar(30) unique,
mobile bigint default(100)
);
insert into student100(fullname,email,mobile)
values("asritha","asri@gmail.com",9387625473);
select * from student100;
truncate student100;
insert into student100 values(100,"asritha","asri@gmail.com",9387625473);
insert into student100(fullname,email,mobile)values("gnanaasritha","asritha@gmail.com",93853655473);
insert into student100(fullname,email)values("t.g.asritha","asrithag@gmail.com");
insert into student100(fullname,email)values("b.asritha","asrithab@gmail.com");





