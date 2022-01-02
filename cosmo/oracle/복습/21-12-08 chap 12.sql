select *
from user_ind_columns;

/*È¥ÀÚÇØº¸±â*/
--1¹ø
create table emp_copy
as
select * from employee where 0=1;
select * from emp_copy;

create sequence emp_eno_seq
start with 7000
increment by 1;

select * from user_sequences;

insert into emp_copy
values(emp_eno_seq.nextval, 'Âû¸®', '»ç¿ø', emp_eno_seq.currval, sysdate, 1000, null,10);
insert into emp_copy
values(emp_eno_seq.nextval, 'Ã¶¼ö', '»ç¿ø', emp_eno_seq.currval, sysdate, 1000, null,10);
insert into emp_copy
values(emp_eno_seq.nextval, 'Âû¸®', '»ç¿ø', emp_eno_seq.currval, '21/11/05', 1000, null,10);
commit;

drop table emp_copy;
drop sequence emp_eno_seq;

create index idx_empc_ename
on emp_copy(ename);

select table_name, INDEX_NAME from user_ind_columns where table_name='EMP_COPY';

drop table emp_copy;
drop sequence emp_eno_seq;
DROP INDEX idx_empc_ename;