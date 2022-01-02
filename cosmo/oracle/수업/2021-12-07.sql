select * from user_indexes;

select* from employee where rownum=1;

desc employee;

/*�߰� ����Ǯ�� */
/*01�� emp�й�c ���̺�� 
�÷��� id number(7), lname varchar2(25), fname varchar2(25), deptid number(7), 
id�÷��� primary key �������� ����, lname, deptid�� not null �������� �߰��ؼ� ���̺� ������ �ۼ�*/
drop table emp�й�c;
create table emp�й�c(
    id number(7) constraint emp�й�c_id_pk primary key,
    lname varchar2(25) constraint emp�й�c_lname_nn not null , 
    fname varchar2(25),
    deptid number(7) constraint emp�й�c_deptid_nn not null);
    
select table_name, constraint_name
from user_constraints
where table_name='EMP�й�C';

select *
from user_constraints
where ROWNUM=1;


/*02 emp�й�c ���̺��� �̸��� e�й����� �����ϼ���*/
rename emp�й�c to e�й�;
desc e�й�;

/*03 managerid number(7) not mull ������������ �߰�*/
alter table e�й�
add(managerid number(7) constraint e�й�_managerid_nn not null);
desc e�й�;

/*04 id �÷��� ���̸� ������ 10���� ����*/
alter table e�й�
modify id number(10);
desc e�й�;

/*05 lname Į���� not null ������ �����ϰ� ���̺��� ������ Ȯ���ϼ���*/
alter table e�й�
drop constraint emp�й�c_lname_nn;
desc e�й�;

/*06 e�й��� �����̺� manageridĮ���� d�й��� ���̺� no Į���� �����Ѵ� foreign key ���������� �߰��ϼ���*/
alter table e�й�
ADD constraint e�й�_managerid_fk FOREIGN KEY(MANAGERID) references D�й�(NO);

/*07 e�й� ���̺��� ���������� Ȯ���ϼ���*/
select table_name, constraint_name
from user_constraints
where table_name='E�й�';




--#####################################-
--chap 11 ���� ����� �� ����ϱ�.
--�� ���� �� ���̺� �ϳ� �����
drop table emp_second;
drop table dept_second;

create table emp_second
as
select * from employee;

create table dept_second
as
select * from Department;
--�ܼ��� �����ϱ�
--�ش� �÷� �ٷ� ��Ī �������ش�
create view v_emp_job(���, ����̸�, �μ���ȣ, ������)
as
select eno, ename, dno, job
    from emp_second
where job like 'SALESMAN';

SELECT * FROM v_emp_job;

--�÷� ��Ī�� �������� ������ ���� �������� ���̺� �ִ� �÷����� ��ӹ޾Ƽ� �̸��� �Ȱ�������.
create view v_emp_job2
as
select eno, ename, dno, job
    from emp_second
where job like 'SALESMAN';

select * from v_emp_job2;

--���� �� �����ϱ�.
create view v_emp_complex
as
select *
from emp_second natural join dept_second;

select * from v_emp_complex;

--������ ���� view �̿��ϱ�.
create view v_emp_sample
as
select eno, ename, job, manager, dno
from emp_second;
select * from v_emp_sample;
select * from emp_second;
--������ �ս��� ��� ���� view Ȱ���ϱ�.
create view v_emp_complex2
as
select e.eno, e.ename, e.salary, dno, d.dname, d.loc
 from emp_second e natural join dept_second d;
 
 --4���� ó������
 select view_name, text
 from user_views;

select *from v_emp_job;

--�پ��� ��
create view v_emp_salary
as 
select dno, sum(salary) as "sal_sum",
    round(avg(salary)) as "sal_avg"
    from emp_second
    group by dno;
    
select * from v_emp_salary;

--view �����ϱ�
--���� �����Ͱ� ���⋚���� ������ ������ �ִ°͸� �����ϴ°�,
drop view v_emp_salary;
--�˻��غ��� ���������
 select view_name, text
 from user_views;
 
 
 
 
 
 --create or replace view
 --�̹� �����ϴ� �信 ���ؼ� �� ������ ���Ӱ� �����Ͽ� �����(�׷��� ���� �Ⱦ�)
 
 --force
 --�⺻ ���̺긣�� ���� ���ο� ������� �� ����
 
 --with check option
 --with check option�� ����ϸ�, �ش� �並 ���ؼ� �� ���ִ� ���� �������� update �Ǵ� insert�� �����մϤ���
 
 --with read only
 --�並 ���޳ʴ� select�� ����
 
 
 create [or replace] [force|NONFORECE] NIEW NIEW_NAME
 [(�÷� ��Ī��, , , , ,)]
 AS SUBQUERY
 [WITH CHECK OPTION]
 [WITH READ ONLY];
 
 --ȥ���غ���
 /*01 20�� �μ��� �Ҽӵ� ����� �����ȣ, �̸��� �μ���ȣ�� �������ϴ� SELECT���� �ϳ��� VIEW(V_EM_DNO)�� �����Ͻÿ�*/
 CREATE VIEW v_em_dno
 as
 select eno, ename, dno from employee where dno=20;
 
 select * from v_em_dno;
 
 /*02 �̹� ������ �信�� �޿� ���� ����� �� �ֵ��� �����Ͻÿ�*/
CREATE OR REPLACE VIEW  V_EM_DNO
as
select eno, ename, dno, SALARY from employee where dno=20;

--��� ��ø�� �Ǿ� ������ ���� �ִ�.
create view v_EM_DNO_2
as
select eno from v_em_dno;


 SELECT * FROM V_EM_DNO_2;
 
 /*03 �並 �����Ͻÿ�*/
 DROP VIEW V_EM_DNO_2;
 

--���� ���պ信�� �׷��Լ�, group by, rownum�� ����� �� ����? 
drop view v_test; 
create view v_test
as
select dno, min(salary) �����ӱ� from employee e natural join department d where rownum=1 group by dno;
select * from v_test;



--force, noforce ����
select * from user_views;
create or replace noforce view v_emp
as
select eno, ename, job hiredate from emp;
--table or view does not exist ���̺��� ���� ��� ���̺��� ���� ���� �ʴ´ٸ� �������� �ʴ´�.

select * from user_views;
create or replace noforce view v_emp
as
select eno, ename, job hiredate from employee;
--���̺��� �ִ°�� ������,
drop view v_emp;

--force�� ���?
create or replace force view v_emp
as
select eno, ename, job hiredate from emp;
--���: ������ ������ �Բ� �䰡 �����Ǿ����ϴ�.
--�������� �ʴ� ���̺��� ������ view�� �����ϸ� ������ �߻��ϱ� �ϳ� force�� ���� ��������!


--##################################################################################
--chapter 12
select * from user_sequences;

create sequence dno_seq
increment by 10
start with 10;


select * from dept_second;
/*
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
*/
truncate table dept_second;

--������ ����
insert into dept_second
values(dno_seq.nextVal, 'ACCOUNTING', 'NEWYORK');
select * from dept_second;

insert into dept_second
values(dno_seq.nextVal, 'RESARCH', 'DALLAS');
select * from dept_second;

COMMIT;

--�и� ���� ������ �־����� ��ȣ�� �˾Ƽ� ī�������ִ� TLZNJSTMFMF TKQDLQGKA.


insert into dept_second
values(dno_seq.nextVal, 'SALES', 'CHICAGO');
select * from dept_second;


insert into dept_second
values(dno_seq.nextVal, 'OPERATION', 'BOSTON');
select SSS* from dept_second;

COMMIT;

--������ ���� �� ����
ALTER SEQUENCE DNO_SEQ
MAXVALUE 50;


drop sequence dno_seq;

select * from user_sequences;

select * from emp_second;


create sequence emp_eno_seq
increment by 1
start with 7000;

select * from user_sequences;

create table emp_second_2
as
select * from employee where 0=1;
select * from emp_second_2;
desc emp_second_2;

insert into emp_second_2
values(emp_eno_seq.nextval, '��ö��', '������', 7733, SYSDATE , 1000, null, 10);

insert into emp_second_2
values(emp_eno_seq.nextval, '��â��', '������', 7733, SYSDATE , 1000, null, 10);
COMMIT;






--�ε���
--�ε����� �ѹ����� ���� ����, �����̸Ӹ��� ��������.
--�ε����� �ӵ��� ������ �����ִ� ��.
SELECT INDEX_NAME, TABLE_NAME, COLUMN_NAME
from user_ind_columns
where table_name in ('EMPLOYEE', 'DEPARTMENT');

--�ε��� �����ϱ�
CREATE index idx_employee_ename
on employee(ename);

drop index idx_employee_ename;

--�ε��� ������ϱ�.
alter index pk_emp rebuild;

select * from dept_second;

update dept_second
set dname='RESEARCH', loc= 'DALLAS'
WHERE dno =30;
commit;
--�̷��� �ع����� 2�� �ο�� 3���ο��� dname�� loc�� �ٸ�����dno�� �ε����� �Ǿ� ���θ� �������� �ȴ�.

create unique index idx_dept_dno
on dept_second(dno);

select index_name, table_name, column_name
 from user_ind_columns
 where table_name in ('DEPT_SECOND');
 
 SELECT *FROM DEPT_SECOND;
 
CREATE UNIQUE INDEX IDS_DEPT_LOC
ON DEPT_SECOND(LOC);
--�ߺ��Ȱ� �־����ϱ� �ϴ� ���� �ε����� ����� �� ����.

--�����ε���
--�÷��� ������ �ε���
create index inx_dept_com
on dept_second(dname, loc);
/*
INX_DEPT_COM	DEPT_SECOND	DNAME
INX_DEPT_COM	DEPT_SECOND	LOC
�� �ε����� �ϳ��� ���ӿ� �����Ͽ� ���� �ִ� ���� Ȯ�� �� �� �ִ�.
*/


-- �ռ� ��� �ε���
create index idx_emp_second_annsal
on emp_second(salary*12);

select index_name, table_name, column_name
 from user_ind_columns
 where table_name in ('EMP_SECOND');
 
 
 
 --ȥ���غ���
 --01
 create sequence emp_eno_seq
increment by 1
start with 7000;

drop sequence
 select *
 from user_sequences;
 
 --02
create table emp_second_2
as
select * from employee where 0=1;
select * from emp_second_2;
desc emp_second_2;

insert into emp_second_2
values(emp_eno_seq.nextval, '��ö��', '������', 7733, SYSDATE , 1000, null, 10);

insert into emp_second_2
values(emp_eno_seq.nextval, '��â��', '������', 7733, SYSDATE , 1000, null, 10);
COMMIT;

--03
create index idx_emp01_ename
on emp_second_2(ename);

select index_name, table_name, column_name
from user_ind_columns
where table_name = 'EMP_SECOND_2';







---���� Ǯ���~~~~~~~~~~~~~~~~~
/*VIEW*/
/*01 EMPLOYEE ���̺��� 30�� �μ��� ���λ����� ǥ���ϴ� EMP_30�� �����ϼ���*/
CREATE VIEW emp_30_view
as
select * from employee where dno=30;

/*EMPLOYEE ���̺��� 10�� �μ��� ENO�� ENO_NO ENAME�� NAME���� SALARY�� SAL�� �ٲٰ� �ٸ� �÷����� �״�� �ϰ� EMP_10_VIEW�� �����ϼ���*/
CREATE VIEW emp_10_view
as
select eno eno_no, ename name, salary sal from employee where dno=10;

--�׽���
CREATE VIEW emp_10_view
as
select eno eno_no, ename name, manager, hiredate, salary sal, commission, dno from employee where dno=10;

--����
create view emp_10_view(
    ENO_NO
    , NAME
    ,MANAGER
    ,HIREDATE
    ,SAL
    ,COMMISSION
    ,DNO)
    AS SELECT * FROM EMPLOYEE WHERE DNO=10;




/*�μ����� �μ���, �ּұ޿� �ִ�޿�, �μ���� �޿� �и��� ������� �ϴ� dept_sum_view ����*/
create view dept_sum_view
as
select d.dname, min(e.salary) �ּұ޿�, max(e.salary) �ִ�޿�,
avg(e.salary) �μ���� 
From employee e natural join department d group by d.dname;

--����
--view_name ()<- �� �κп� �÷� ��Ī �ѹ��� ��� ���°� �����ϱ�.
create OR REPLACE view dept_sum_view(
    NAME
    , �ּұ޿�
    , �ִ�޿�
    , �μ����)
as
select d.dname, min(e.salary), max(e.salary),avg(e.salary) 
From employee e natural join department d group by d.dname;



select * from department;

select * from emp_30_view;
select * from emp_10_view;
select * from dept_sum_view;

select *
from user_views;

--regexp_replace

select text, regexp_replace(text, '([0-9])','*',4) as �����÷�
from(
    select '010-123-1234' text from dual
    union all
    select '010-1234-1234' text from dual
);

--substr �Լ��� ���
select text, substr(text, 1,3) || regexp_replace(substr(text, 4), '[[:digit:]]', '*') as �����÷�
from(
    select '010-123-1234' text from dual
    union all
    select '010-1234-1234' text from dual
);


/*
REGEXP_REPLACE (source_char, pattern

                         [, replace_string

                         [, position

                         [, occurrence

                         [, match_param[[[

)



ù��° �μ� Source_char 

 : ����������, �÷����̳�, ���ڿ��� �ü� �ִ�.



�ι��� �μ� pattern

 : ã���� �ϴ� ������ �ǹ�



����° �μ� replace_string

 : ��ȯ�ϰ��� �ϴ� ����



�׹�° �μ� position 

 : �˻� ���� ��ġ�� ����, �ƹ��� ���� ���� ���� ��� �⺻�� : 1



�ټ� ��° �μ� occurrence

 : ���ϰ� ��ġ�� �߻��ϴ� Ƚ���� �ǹ�, 0�� ��� ���� ��ä, �ٸ� n�̶� ���ڸ� �ָ� n��° �߻��ϴ� ���ڿ��� ����



���� ��° �μ� match_parameter

 : �⺻������ �˻��Ǵ� �ɼ��� �ٲܼ� �ִ�.

   - c : ��ҹ��ڸ� �����ؼ� �˻�

   -  i : ���Ǭ�ڸ� �������� �ʰ� �˻�

   - m : �˻� ������ ���� �ٷ� �� �� ����

   - c�� i�� �ߺ����� �����Ǹ� �������� ������ ���� ��� ex) ic�� �ߺ����� �����Ǹ�  c �ɼ� ����

*/

/*
07�� ����Ʈ�� �������� �־ ���� ������?

ȫ��ȯ���� ������ (DM) 05:56 PM
1��. EMP(employee)�� DEPT(department) TABLE �� JOIN�Ͽ� �μ���ȣ, �μ���, �̸�, �޿��� ����϶�.
2��. �̸��� ALLEN�� ����� �μ����� ����϶�.
3��. DEPT TABLE �� �ִ� ��� �μ��� ����ϰ�, EMP  TABLE �� �ִ� DATA�� JOIN�Ͽ� 
    ��� ����� �̸�, �μ���ȣ, �μ���, �޿��� ����϶�.
4��. EMP TABLE �� �ִ� EMPNO�� MGR�� �̿�(A.EMPNO = B.MGR)�Ͽ� ������ ���踦 ������ ���� ����϶�.
 ex. SMITTH�� �Ŵ����� FORD�̴�.  ( "||" �̿�)
5��. ALLEN�� ������ ���� ����� �̸�, �μ���, �޿�, ������ ����϶�.  (subquery)
6��. JONES �� �����ִ� �μ��� ��� ����� �����ȣ, �̸�, �Ի���, �޿��� ����϶�.  (subquery)
7��. ��ü ����� ��� �ӱݺ��� ���� ����� �����ȣ, �̸�, �μ���, �Ի���, ����, �޿��� ����϶�.  (subquery)
8��. 10�� �μ� ����� �߿��� 20�� �μ��� ����� ���� ������ �ϴ� ����� �����ȣ, �̸�, �μ���, �Ի���, ������ ����϶�. (subquery)
9��. 10�� �μ��߿��� 30�� �μ����� ���� ������ �ϴ� ����� �����ȣ, �̸�, �μ���, �Ի���, ������ ����϶�.  (subquery)
10��. 10�� �μ��� ���� ���� �ϴ� ����� �����ȣ, �̸� , �μ���, ����, �޿��� �޿��� ���� ������ ����϶�. (subquery)
11��. MARTIN�̳� SCOTT�� �޿��� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.  (subquery)
12��. �޿��� 30�� �μ��� �ְ� �޿����� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.  (subquery)
13��. �޿��� 30�� �μ��� ���� �޿����� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.  (subquery)
14��. EMP ���̺��� �μ� �ο��� 4���� ���� �μ��� �μ���ȣ, �ο���, �޿��� ���� ����϶�. (HAVING)
15��. EMP ���̺��� ���� ���� ����� �����ִ� �μ���ȣ�� ������� ����϶�.(HAVING)
16��. EMP ���̺��� ���� ���� ����� ���� MGR�� �����ȣ�� ����϶�.(HAVING)*/



/*���չ���*/
/*01 emp�� dept table�Ѥ��� �����Ͽ� 
�μ���ȣ �μ��� �̸� �޿��� ����϶�*/
select e.eno, d.dname, e.ename, e.salary
from employee e, department d
where e.dno=d.dno;

/*02�̸��� allen�� ����� �μ����� ����϶�*/
select d.dname
from employee e , department d
where e.dno= d.dno and e.ename='ALLEN';

/*03DEPT TABLE�� �ִ� ��� �μ��� ��¤��� EMP TABLE�� �ִ� DATA�� JOIN �Ͽ� 
��� ����� �̸� �μ���ȣ �μ��� �޿��� ����϶�*/
SELECT e.ename, dno, d.dname, e.salary
from employee e natural join department d;

/*04 emp table�� �ִ� empno�� mgr�� �̿��Ͽ� ���� ���踦 ������ ���� ����϶�*/
select e.ename||'�� �Ŵ�����'||m.ename||'�̴�'
from employee e, employee m
where e.manager=m.eno;


/*05 allen�� ������ ���� ����� 
�̸�, �μ���, �޿�, ������ ����϶�*/
select e.ename, d.dname, e.salary, e.job
from employee e natural join department d
where e.job=(select job from employee where ename='ALLEN');

/*06 JONES�� �����ִ� �μ��� ��� ����� 
�����ȣ, �̸�, �Ի���, �޿��� ����϶�*/
select eno, ename, hiredate, salary
from employee
where dno=(select dno from employee where enamE='JONES');

/*07 ��ü ����� ����ӱݺ��� ���� �����
�����ȣ �̸� �μ��� �Ի��� ���� �޿��� ����϶�*/
SELECT e.eno, e.ename, d.dname, e.hiredate, d.loc, e.salary
from employee e, department d
where e.dno=d.dno
and e.salary>(select avg(salary) from employee);

/*08 10�� �μ� ���Ե� �߿��� 20�� �μ��� ���� ������ �ϴ� �����
�����ȣ �̸� �μ��� �Ի��� ������ ����϶�*/
select e.eno, e.ename, d.dname, e.hiredate, d.loc
from employee e, department d
where e.dno=d.dno
and e.dno=10
and e.job in (select job from employee where dno=20);

/*09 10�� �μ��߿��� 30�� �μ����� ���� ������ �ϴ� ����� 
�����ȣ, �̸�, �μ���, �Ի���, ������ ����϶�.  (subquery)*/
select e.eno, e.ename, d.dname, e.hiredate, d.loc
from employee e, department d
where e.dno=d.dno
and e.dno=10
and e.job not in (select job from employee where dno=20);

select * from employee;

/*10��. 10�� �μ��� ���� ���� �ϴ� ����� 
�����ȣ, �̸� , �μ���, ����, �޿��� �޿��� ���� ������ ����϶�. (subquery)*/
select e.eno, e.ename, d.dname, d.loc, e.salary
from employee e join department d
on e.dno=d.dno
where job in (select job from employee where dno=10)
order by e.salary desc;

/*11��. MARTIN�̳� SCOTT�� �޿��� ���� 
����� �����ȣ, �̸�, �޿��� ����϶�.  (subquery)*/
select eno, ename, salary
from employee
where salary in (
    select salary from employee where ename='MARTIN'
    UNION ALL
    select salary from employee where ename='SCOTT'
    )
AND ename not in ('MARTIN', 'SCOTT');

/*12��. �޿��� 30�� �μ��� �ְ� �޿����� ���� �����
�����ȣ, �̸�, �޿��� ����϶�.  (subquery)*/
SELECT ENO, ENAME, salary
from employee
where salary>(select max(salary) from employee where dno=30 group by dno);

/*13��. �޿��� 30�� �μ��� ���� �޿����� ���� ����� 
�����ȣ, �̸�, �޿��� ����϶�.  (subquery)*/
select eno, ename, salary
from employee
where salary>(select min(salary) from employee where dno=30 group by dno);

/*14��. EMP ���̺��� �μ� �ο��� 4���� ���� �μ��� 
�μ���ȣ, �ο���, �޿��� ���� ����϶�. (HAVING)*/
select dno, count(*), sum(salary)
from employee
having count(*)>4
group by dno;

/*15��. EMP ���̺��� ���� ���� ����� �����ִ� 
�μ���ȣ�� ������� ����϶�.(HAVING)*/
select dno, count(*)
from employee
having count(*) = (select max(count(*)) from employee group by dno)
group by dno;

/*16��. EMP ���̺��� ���� ���� ����� ���� MGR�� 
�����ȣ�� ����϶�.(HAVING)*/
select eno
from employee
where eno=(select manager from employee group by manager having count(*)=5);


select eno
from employee
where eno=(select manager from employee group by manager having count(*) all ();
select manager, count(*) from employee group by manager;

--����
SELECT *
FROM USER_VIEWS;