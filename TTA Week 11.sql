create database golf_analysis;
use golf;
create table meltham(
player_id int not null,
course_id int not null,
shot_id int not null,
hole_number int (18) not null,
par int (5) not null,
yards_from_green int,
club_used varchar (30) not null,
primary key (shot_id),
unique (shot_id)
);
show databases;
use golf_analysis;
explain meltham;
insert into meltham (player_id, course_id, shot_id, hole_number, par, yards_from_green, club_used)
values ('1', '1', '1', '1', '4', '371', 'driver'),
('2', '1', '2', '1', '4', '371', 'driver'),
('3', '1', '3', '1', '4', '371', 'driver'),
('3', '1', '4', '1', '4', '207', '4i'),
('2', '1', '5', '1', '4', '165', '6i'),
('1', '1', '6', '1', '4', '130', '9i'),
('2', '1', '7', '1', '4', '98', 'pw'),
('1', '1', '8', '1', '4', '30', '58'),
('3', '1', '9', '1', '4', '16', 'pw'),
('2', '1', '10', '1', '4', '3', 'pw'),
('1', '1', '11', '1', '4', '0', 'p'),
('2', '1', '12', '1', '4', '0', 'p'),
('3', '1', '13', '1', '4', '0', 'p'),
('3', '1', '14', '1', '4', '0', 'p');

create table player_info(
player_id int not null,
player_name varchar (30) not null,
handicap int,
date_of_birth date,
address varchar (70),
primary key (player_id)
);

insert into player_info (player_id, player_name, handicap, date_of_birth, address)
values
('2', 'Sam Clegg', '25', '98-04-17', 'HD9 4RQ'),
('3', 'Henry Wise', '29', '99-08-10', 'HD9 4LP');

select * from meltham