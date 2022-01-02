create view v_em_dno
as
select eno, ename, dno from employee where dno=20;

select *
from user_views;

create or replace view v_em_dno
as
select eno, ename, dno, salary from employee where dno=20;

drop view v_em_dno;