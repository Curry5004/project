/**/
drop table emp_insert;
create table emp_insert
as
select * from employee where 0=1;
select * from emp_insert;
--2
insert into emp_insert
values(10, '지환', '차장', 1, sysdate, 10000, 0,10);
commit;
--3
insert into emp_insert
values(11, '중한', '차장', 1, to_date(20211207), 10000, 0,10);
commit;
--4