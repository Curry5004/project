1. EMP�й�c ���̺��  
�÷���  ID        NUMBER(7)  , LNAME VARCHAR2(25) ,  FNAME VARCHAR2(25),  DEPTID NUMBER(7)   
ID�÷��� �����̸Ӹ� Ű���� �������� ����,   LNAME ��  DEPTID  NOT NULL �������� �߰��ؼ� ���̺� ������ �ۼ��غ�����.

CREATE TABLE EMP�й�c (
 ID    NUMBER(7)    CONSTRAINT EMP�й�c_ID_PK PRIMARY KEY,
 LNAME VARCHAR2(25) CONSTRAINT EMP�й�c_LNAME_NN NOT NULL,
 FNAME VARCHAR2(25),
 DEPTID NUMBER(7)   CONSTRAINT EMP�й�c_DEPTID_NN NOT NULL); 
 
SELECT * FROM USER_CONSTRAINTS WHERE ROWNUM = 1;  

2. EMP�й�c  ���̺��� �̸��� E�й� ���� �����ϼ���.
RENAME EMP�й�C TO E�й�;

3. managerid Į���� ������(7) NOT NULL ������������ �߰��ϼ���.
ALTER TABLE E�й� ADD managerid NUMBER(7) CONSTRAINT E�й�_MANAGERID_NN NOT NULL;

4. ID Į���� ���̸� ������(10)���� �����ϼ���.
DESC E�й�;
ALTER TABLE E�й� MODIFY ID NUMBER(10);

5. LNAME Į���� NOT NULL ���������� �����ϰ� ���̺��� ������ Ȯ���ϼ���.
ALTER TABLE E�й� DROP CONSTRAINT EMP�й�C_LNAME_NN;

6. E�й� ���̺��� managerid Į���� D�й� ���̺��� NO Į���� �����ϴ� FOREIGN KEY ���������� �߰��ϼ���.
ALTER TABLE E�й�
ADD CONSTRAINT E�й�_MANAGERID_FK FOREIGN KEY(MANAGERID) REFERENCES D�й�(NO);
desc E�й�;




7. E�й� ���̺��� ���������� Ȯ���ϼ���.(USER_CONSTRAINTS )

SELECT TABLE_NAME, CONSTRAINT_NAME, STATUS
  FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'E�й�';

--Chap 11 ���� ����� �� ����ϱ�
drop table emp_second;

create table emp_second
as
select * from employee;

drop table dept_second;

create table dept_second
as
select * from department;
--�ܼ��� �����ϱ� 
create view v_emp_job(���, ����̸�, �μ���ȣ, ������)
as
select eno, ename, dno, job
  from emp_second
 where job like 'SALESMAN';

select * from v_emp_job;

create view v_emp_job2
as
select eno, ename, dno, job
from emp_second
where job like 'SALESMAN%';

select * from v_emp_job2;

--���� �� �����ϱ�
create view v_emp_complex
as
select *
  from emp_second natural join dept_second;
  
--  ������ ���� �� �̿��ϱ�  
create view v_emp_sample
as
select eno, ename, job, manager, dno
from emp_second;

select * from v_emp_sample;
select * from emp_second;
 
select * from v_emp_complex;

-- ������ �ս��� ��� ���� �� Ȱ���ϱ� 
create view v_emp_complex2
as
select e.eno, e.ename, e.salary, dno, d.dname, d.loc
  from emp_second e natural join dept_second d;
  
-- 4 ���� ó�� ���� 

select view_name, text
  from user_views;

select * 
  from v_emp_job;

select view_name, text
  from user_views;
 
-- �پ��� ��  
create view v_emp_salary
as 
select dno
     , sum(salary) as "sal_sum"
     , round(avg(salary)) as "sal_avg"
  from emp_second
 group by dno;
 
 select * from v_emp_salary;

-- �� �����ϱ�
drop view  v_emp_job;

-- CREATE OR RELPACE VIEW
? �̹� �����ϴ� �信 ���ؼ� �� ������ ���Ӱ� �����Ͽ� �� ����
-- FORCE
? �⺻ ���̺��� ���� ���ο� ������� �� ����
-- WITH CHECK OPTION
? WITH CHECK OPTION�� ����ϸ�, �ش� �並 ���ؼ� �� �� �ִ� ����
�������� UPDATE �Ǵ� INSERT�� �����մϴ�
-- WITH READ ONLY
? �並 ���ؼ��� SELECT�� ����

CREATE [OR REPLACE] [FORCE | NOFORCE] VIEW view_name
[(alias, alias, alias, ...)]
AS subquery
[WITH CHECK OPTION]
[WITH READ ONLY];

select * from user_views;

drop view v_emp;

create or replace noforce view v_emp
as
 select eno, ename, job, hiredate from emp;

create or replace force view v_emp
as
 select eno, ename, job, hiredate from emp;

-- Chapter 12
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

insert into dept_second
values(dno_seq.nextval, 'ACCOUNTING', 'NEW YORK');

select * from dept_second;

insert into dept_second
values(dno_seq.nextval, 'RESEARCH', 'DALLAS');

commit;

insert into dept_second
values(dno_seq.nextval, 'SALES', 'CHICAGO');

insert into dept_second
values(dno_seq.nextval, 'OPERATIONS', 'BOSTON');

alter sequence dno_seq
maxvalue 50;

drop sequence dno_seq;

select * from user_sequences;

select * from emp_second;

-- �ε���

select index_name, table_name, column_name
  from user_ind_columns
 where table_name in ('EMPLOYEE', 'DEPARTMENT');
 
 -- �ε��� �����ϱ�
 create index idx_employee_ename
 on employee(ename);

drop index idx_employee_ename;

alter index pk_emp rebuild;.


select * from dept_second;

update  dept_second
set dname = 'RESEARCH', loc = 'DALLAS'
where dno = 30;
commit;

create unique index idx_dept_dno
on dept_second(dno);

select index_name, table_name, column_name
  from user_ind_columns
 where table_name in ('DEPT_SECOND');
 
 SELECT * FROM DEPT_SECOND;

create unque index idx_dept_loc
on dept_second(loc);  -- ORA-00901: invalid CREATE command

-- �����ε���
create index idx_dept_com
on dept_second (dname, loc);

-- �Լ� ��� �ε���
create index idx_emp_second_annsal
on emp_second(salary*12);

select index_name, table_name, column_name
  from user_ind_columns
 where table_name in ('EMP_SECOND');

/*VIEW */

1. EMPLOYEES ���̺��� 30�� �μ��� ���λ���(����÷�)�� ǥ���ϴ� EMP_30    VIEW�� �����ϼ���.
CREATE OR REPLACE VIEW EMP_30
AS
SELECT * FROM EMPLOYEE WHERE DNO = 30;

2. EMPLOYEE ���̺��� 10�� �μ��� 
ENO�� EMP_NO�� ENAME�� NAME���� SALARY�� SAL�� �ٲٰ� �ٸ� �÷����� �״���ϰ� EMP_10 VIEW�� �����ϼ���.

CREATE OR REPLACE VIEW EMP_10(
EMP_NO
, NAME
, JOB
, MANAGER
, HIREDATE
, SAL
, COMMISSION
, DNO ) AS ( SELECT * FROM EMPLOYEE WHERE DNO = 10 );

3. �μ����� �μ���, �ּ� �޿�, �ִ� �޿�, �μ��� ��� �޿��� �׸����� �ϴ� DEPT_SUM     VIEW�� �����ϼ���.
CREATE OR REPLACE VIEW DEPT_SUM(
DNAME, MIN_SAL, MAX_SAL, AVG_SAL) AS
( SELECT D.DNAME, MIN(E.SALARY), MAX(E.SALARY), AVG(E.SALARY)
    FROM EMPLOYEE E, DEPARTMENT D
   WHERE E.DNO = D.DNO
   GROUP BY D.DNAME );

-- ���ѻ����  regexp_replace  �Լ� �̿��ؼ� ������� ����� ������
select �޴�����ȣ 
     , substr(�޴�����ȣ, 1,5) || REGEXP_REPLACE(substr(�޴�����ȣ,6), '[[:digit:]]', '*') �����÷�
from (
    select '010-123-1234' �޴�����ȣ from dual
    union all
    select '010-1234-1234' �޴�����ȣ from dual
);

1��. EMP(employee)�� DEPT(department) TABLE �� JOIN�Ͽ� �μ���ȣ, �μ���, �̸�, �޿��� ����϶�.
select e.dno, d.dname, e.ename, e.salary  
  from employee e, department d
 where e.dno = d.dno;

2��. �̸��� ALLEN�� ����� �μ����� ����϶�.
select d.dname 
  from employee e, department d
 where e.dno = d.dno
   and e.ename = 'ALLEN';
   
3��. DEPT TABLE �� �ִ� ��� �μ��� ����ϰ�, EMP  TABLE �� �ִ� DATA�� JOIN�Ͽ� 
    ��� ����� �̸�, �μ���ȣ, �μ���, �޿��� ����϶�.
 select e.ename, e.dno, d.dname, e.salary 
   from employee e, department d
  where e.dno = d.dno;   
    
4��. EMP TABLE �� �ִ� EMPNO�� MGR�� �̿�(A.EMPNO = B.MGR)�Ͽ� ������ ���踦 ������ ���� ����϶�.
 ex. SMITTH�� �Ŵ����� FORD�̴�.  ( "||" �̿�)
 select e.ename || '�� �Ŵ����� ' || m.ename  || '�̴�' as �Ŵ�������  
   from employee e, employee m
 where e.manager = m.eno;
 
5��. ALLEN�� ������ ���� ����� �̸�, �μ���, �޿�, ������ ����϶�.  (subquery)
select e.ename, d.dname, e.salary, e.job
  from employee e, department d
 where e.dno = d.dno
   and e.job = (select ee.job from employee ee where ee.ename = 'ALLEN');

6��. JONES �� �����ִ� �μ��� ��� ����� �����ȣ, �̸�, �Ի���, �޿��� ����϶�.  (subquery)
select eno, ename, hiredate, salary
  from employee
 where dno = (select dno from employee where ename = 'JONES');

7��. ��ü ����� ��� �ӱݺ��� ���� ����� �����ȣ, �̸�, �μ���, �Ի���, ����, �޿��� ����϶�.  (subquery)
select e.eno, e.ename, d.dname, e.hiredate, d.loc, e.salary
  from employee e, department d
 where e.dno = d.dno
   and e.salary > (select AVG(salary) from employee);

8��. 10�� �μ� ����� �߿��� 20�� �μ��� ����� ���� ������ �ϴ� ����� �����ȣ, �̸�, �μ���, �Ի���, ������ ����϶�. (subquery)
select e.eno, d.dname, e.hiredate, d.loc
   from employee e, department d
  where e.dno = d.dno
    and e.dno = 10
    and e.job in ( select job from employee where dno = 20);
    

9��. 10�� �μ��߿��� 30�� �μ����� ���� ������ �ϴ� ����� �����ȣ, �̸�, �μ���, �Ի���, ������ ����϶�.  (subquery)
 select e.eno, e.ename, d.dname, e.hiredate, d.loc --, e.job
   from employee e, department d
  where e.dno = d.dno
    and e.dno = 10
    and e.job not in  (select job from employee where dno = 30);

10��. 10�� �μ��� ���� ���� �ϴ� ����� �����ȣ, �̸� , �μ���, ����, �޿��� �޿��� ���� ������ ����϶�. (subquery)

 select e.eno, e.ename, d.dname, d.loc, e.salary  
   from employee e, department d
  where e.dno = d.dno
    and e.job in ( select job from employee where dno = 10)
  order by e.salary desc;

11��. MARTIN�̳� SCOTT�� �޿��� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.  (subquery)

select eno, ename, salary
  from employee
where salary in (select salary from employee where ename in ('MARTIN', 'SCOTT'))
  and ename not in ('MARTIN', 'SCOTT');
  
12��. �޿��� 30�� �μ��� �ְ� �޿����� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.  (subquery)
select eno, ename, salary 
  from employee
where salary > (select MAX(salary) from employee where dno = 30); 
 
13��. �޿��� 30�� �μ��� ���� �޿����� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.  (subquery)
select eno, ename, salary 
  from employee
where salary > (select MIN(salary) from employee where dno = 30); 

14��. EMP ���̺��� �μ� �ο��� 4���� ���� �μ��� �μ���ȣ, �ο���, �޿��� ���� ����϶�. (HAVING)
select dno, count(*) �ο���, sum(salary) �޿��հ�
  from employee
 group by dno
 having count(*) > 4;

15��. EMP ���̺��� ���� ���� ����� �����ִ� �μ���ȣ�� ������� ����϶�.(HAVING)
select dno, count(*)
  from employee
 group by dno
 having count(*) = (select MAX(count(*)) from employee group by dno);

16��. EMP ���̺��� ���� ���� ����� ���� MGR�� �����ȣ�� ����϶�.(HAVING)
select manager �����ȣ
  from employee
 group by manager
 having count(manager) = (select max(count(*)) from employee group by manager);
 -- 7698
 
 select manager, count(*)
   from employee
  group by manager;
   













