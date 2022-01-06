drop table member;

create table member(
	memberid varchar(10) not null primary key,
    password varchar(10) not null,
    name varchar(20) not null,
    email varchar(80)
    ) engine=InnoDB default character set = utf8;


insert into MEMBER(MEMBERID, PASSWORD, NAME)
VALUES('madvirus', '1234', '최범균');

insert into MEMBER(MEMBERID, PASSWORD, NAME, EMAIL)
VALUES('era13', '5678', '최범균', 'era13@mad.net');

select memberid, name from member
where name='최범균' and email = 'era13@mad.net';

select *
from member;

select *
from member
where email is null;

select *
from member
where name like '최%';

select *
from member
order by name asc, memberID asc;

select count(*) from member;

update member set memberid = "era13" where EMAIL ='era13@mad.net';

update member set name = "최범" where memberid ='era13';

select * from member;

insert into member(MEMBERID, PASSWORD, NAME ,EMAIL)
VALUES('cosmo', '1234', '최범준', 'cosmo@mad.net');

select * from member;

delete from member where MEMBERID ='era13';

create table member_etc(
	memberid varchar(10) not null primary key,
    birthdaty char(8));

insert into member_etc(MEMBERID, birthdaty)
VALUES('era13', '19780809');

insert into member_etc(MEMBERID, birthdaty)
VALUES('madvirus', '19780809');



create table MEMBER_HISTORY(
	memberid varchar(10) not null primary key,
    history LONG varchar
    ) default character set=utf8mb4;
    
select * from MEMBER_HISTORY;
insert into MEMBER_HISTORY values('madvirus', 
concat('2020 스프링4 프로그래밍 입문<br>', '2021 spring4.0 프로그래밍',
		'2022 객체지향과 디자인 패턴',
        '2022 JSP 2.2 웹프로그래밍\n')
);

/*
2020 스프링4 프로그래밍 입문<br>2021 spring4.0 프로그래밍<br>2022 객체지향과 디자인 패턴<br>2022 JSP 2.2 웹프로그래밍
*/

update MEMBER_HISTORY
set history = '2020 스프링4 프로그래밍 입문<br>2021 spring4.0 프로그래밍<br>2022 객체지향과 디자인 패턴<br>2022 JSP 2.2 웹프로그래밍'
where memberid='madvirus';