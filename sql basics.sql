use fullstack;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
desc persons;
insert into persons (personID,LastName,FirstName,Address,City)
values ( 29 , "GnanaAsritha", "Thallam", "shivalayam","khammam"),
( 34 , "Dhanush", "Bhaskaruni", "clocktower","Eluru"),
( 09 , "Sindhuja", "Enishetty", "something","Ramayanpet"),
( 44 , "Raghu", "Teja", "dontknow","karimnagar"),
( 54 , "sai krishna", "pabbolu", "telidhu","Bhimavaram"),
( 22 , "mouna", "mandalapu", "nuzvidu","Andhra"),
( 25 , "Sweety", "Naidu", "Eluru","vijaywada"),
( 27 , "summu", "shaik", "nono","AP");
select * from persons;
alter table persons
add gender varchar(10),
add age int;
select * from persons;
select gender,age from persons;
select firstname from persons
where personID>=30;
select lastname,address from persons
where personID>1 and city="Eluru"
order by personID;
select lastname,address from persons
where personID>1 or city="Hyderabad";
select * from persons
where not lastname = "GnanaAsritha";
select * from persons
where lastname like '%a';
select * from persons
where personid not in (29);
update persons
set address="gadiyaram vidhi"
where personId = 34;
select min(personId)
from persons;
select max(personId)
from persons;
select count(personId)
from persons;
select sum(personId)
from persons;
select avg (personId)
from persons;
select count(personID) , city
from persons
group by city
order by count (personID);
SELECT COUNT(personID), City
FROM persons
GROUP BY city
HAVING COUNT(personID) > 29;
drop table persons;
select * from persons;
set sql_safe_updates=0;
update persons 
set address="none" where personID=27;
select * from persons;
select * from persons
where personID > 25;


