create database AirlineTicketBooking;
use AirlineTicketBooking;
create table Registration(name varchar(50),email varchar(50), password varchar(50), cpassword varchar(50));
select * from Registration;
use AirlineTicketBooking;
create table avaflights(flightname varchar(50), fromcity varchar(50), tocity varchar(50), depdate varchar(50), retdate varchar(50), avaseats int, class varchar(50));
select * from avaflights;
insert into avaflights values
('A','Banglore','Delhi','20-11-2023','21-11-2023',20,'Economy'),
('B','Delhi','Kolkatha','20-11-2023','21-11-2023',5,'PrimiumEconomy'),
('C','Kolkatha','Chenni','20-11-2023','21-11-2023',10,'Bussiness'),
('D','Chenni','Banglore','20-11-2023','21-11-2023',15,'FirstClass');
insert into avaflights values
('E','Banglore','Delhi','20-11-2023','21-11-2023',20,'Bussiness');
create table bookingdetails(flightname varchar(50), fromcity varchar(50), tocity varchar(50), depdate varchar(50), retdate varchar(50), passengers int, class varchar(50));
select * from bookingdetails;


