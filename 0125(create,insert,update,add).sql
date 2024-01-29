create database baseball_league;

create table teams (
	team_id int,
    name varchar(100),
    city varchar(100),
    founded_year year -- 날짜형 중 연도 데이터만 저장하는 타입'YYYY'
);

create table players (
	player_id int,
    name varchar(100),
    position enum('타자', '투수', '내야수', '외야수')
);

describe teams;
desc players;

alter table players
add birth_date date;

desc players;

drop table if exists games;
drop table if exists players;

drop database baseball_league;

insert into teams (team_id, name, city, founded_year)  values
(1, 'DUSAN', 'Seoul', '1999'),
(2, 'LOTTE', 'Busan', '1982'),
(3, 'SK', 'Incheon', '2000');

insert into players (player_id, name, position, birth_date) values
(101, 'Kim Min', '타자', '1992-05-20'),
(102, 'Lee Joon', '투수', '1990-08-15'),
(103, 'Choi Hyeon', '내야수', '1988-03-05'),
(104, 'Park Seo', '외야수', '1994-11-22'),
(105, 'Jung Tae', '타자', '1993-07-30');


update 
	teams
set 
	name = 'SSG'
where 
	team_id = 3;
    
    
DELETE FROM 
	teams
where
	founded_year > '2000';
    
Delete from
	players
where
	birth_date < '1990-01-01';


alter table 
	teams
add PRIMARY KEY (team_id);

alter table 
	teams
add UNIQUE (name);

alter table
	playsers
add PRIMARY KEY (playe_id);

alter table
	players
-- add NOT NULL (birth_date)
MODIFY birth_date date NOT NULL;




