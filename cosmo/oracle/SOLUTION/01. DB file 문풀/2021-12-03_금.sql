--1. �����ȣ�� 7788�� ����� ��� ������ ��������� ǥ��
--(����̸��� ��� ����)�Ͻÿ�.

select ename, job
  from employee
 where job = (select job
                from employee
               where eno = 7788);

--2.   �ÿ���ȣ�� 7499�� ������� �޿��� ���������
--ǥ�� (����̸��� ��� ����)
select ename, job
  from employee
 where salary > ( select salary
                    from employee
                   where eno = 7499 );
                   
--3.  �ּұ޿��� �޴»���� �̸��� ��� ���� �� �޿���ǥ���Ͻÿ�
--(�׷��Լ����).                  
select ename, job, salary
  from employee
 where salary = ( select min(salary) from employee);
 
--4. ��ձ޿��� ������������� ��� ������ ã�� 
--���ް� ��ձ޿��� ǥ���Ͻÿ� 
select job, avg(salary)
  from employee
 group by job
having avg(salary) = 
(select min( avg(salary) ) from employee group by job);

--5. ���μ��� �ּұ޿��� �޴»����
--�̸��� �޿��� �μ���ȣ�� ǥ���Ͻÿ� 

select ename, salary, dno
  from employee
--where  salary in (select  min(salary) from employee group by dno );  
where (dno, salary) in (select dno, min(salary) from employee group by dno );

-- ��� ������ �м���(ANALYST)�� ������� �޿��� �����鼭 
-- ������ �м���(ANALYST)�� �ƴ� ������� ǥ��(�����ȣ�� �̸��� ��� ������ �޿�)�Ͻÿ� 
select eno, ename, job, salary
  from employee
 where job != 'ANALYST'
   and salary < any (select salary  from employee where job = 'ANALYST') ;
  
-- 7. ���������� ���»���� �̸��� ǥ���Ͻÿ�.   -- 8
  
 select ename
   from employee
  where eno not in (select manager 
                      from employee
                     where manager is not null
                     group by manager);
 select ename
   from employee
  where eno  in   (  select eno from employee
                     minus
                     select manager from employee);
/*
SMITH   ALLEN   WARD   MARTIN  TURNER  ADAMS  JAMES  MILLER    */
select count(1) from employee;  -- 14

-- 8 ���������� �ִ� ����� �̸���ǥ���ϥ�|��. -- 6
 select ename
   from employee
  where eno  in (select manager 
                      from employee
                     where manager is not null
                     group by manager);
/*  KING CLARK BLAKE FORD JONES SCOTT  */
--9 BLAKE�� ������ �μ��� ���� ����� �̸��� �Ի����� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ�
--(��. BLAKE�� ����). 
select ename, hiredate
  from employee
where dno = (
    select dno from employee where ename = 'BLAKE'   -- 30
    )
and ename != 'BLAKE';

-- 10 �޿��� ��� �޿� ���� ���� ������� 
-- �����ȣ�� �̸��� ǥ���ϵ� ����� 
-- �޿��� ���ؼ� ����ġ������ ���� 
select eno, ename
  from employee
 where salary > (select avg(salary) from employee )
order by salary asc;

-- 11.  �̸��� 'K' �� ���Ե� ����� ���� �μ����� ���ϴ� ����� 
--�����ȣ�� �̸��� ǥ���ϴ� ���Ǹ� �ۼ��Ͻÿ� 
select eno, ename--, dno
  from employee
 where dno in ( select dno from employee where ename like '%K%' );
 
-- 12 �μ� ��ġ�� DALLAS�� ����� �̸��� �μ���ȣ �� ��� ������ ǥ���Ͻÿ�
select ename, dno, job
 from employee
where dno = (select dno from department where loc= 'DALLAS' );

-- 13 KING���� �����ϴ� ����� �̸����޿��� ǥ���Ͻÿ�.
select ename, salary-- , manager
  from employee
where manager = (select eno from employee where ename = 'KING');  -- 7839

-- 14 RESEARCH �μ��� ����� ���� �μ���ȣ ����̸� �� ��� ������ ǥ���Ͻÿ� 
select dno, ename, job
  from employee
 where dno = (select dno from department where dname = 'RESEARCH' ) ; 
 
-- 15 ��� �޿� ���� ���� �޿��� �ް� 
--�̸��� M �� ���Ե� ����� ���� �μ�����
-- �ٹ��ϴ� ����� �����ȣ.�̸��� �޿���ǥ���Ͻÿ� 
select eno, ename, salary 
  from employee
 where salary >(select avg(salary) from employee)
   and dno in (select dno from employee where ename like '%M%');
   
--16 ��ձ޿��� �������� ������ ã���ÿ� 
 select job, avg(salary)
  from employee
 group by job
 having avg(salary) = ( select  min( avg(salary) ) from employee group by job);
 
-- 17 ��� ������ MANAGER�� ����� �Ҽӵ� �μ�
-- �� �����Ѻμ��� �����ǥ���Ͻÿ�  
 select eno, ename
  from employee
 where dno in (select dno from employee where job = 'MANAGER' ) ;
 
 1. �̸��� ALLEN�� ����� ���� ������ �ϴ� ����� �����ȣ, �̸�, ����, �޿� ����
 select eno, ename, job, salary from employee
 where job = (select job from employee where ename = 'ALLEN') and ename != 'ALLEN' ;
 
 2. EMP(employee) ���̺��� �����ȣ�� 7521�� ����� ������ ���� 
    �޿��� 7934�� ������� ���� ����� �����ȣ, �̸�, ������, �Ի���, �޿� ����
select eno, ename, job, hiredate, salary
  from employee
where job = ( select job from employee where eno = 7521)
    and salary > (select salary from employee where eno = 7934); 
    
 3. EMP ���̺��� �޿��� ��պ��� ���� ����� �����ȣ, �̸�, ����, �޿�, �μ���ȣ ����
 select eno, ename, job, salary, dno  from employee
 where salary < (select avg(salary) from employee);
 
 4. �μ��� �ּұ޿��� 20�� �μ��� �ּұ޿����� ū �μ��� �μ���ȣ, �ּ� �޿� ����
select dno, min(salary) from employee 
 group by dno
  having min(salary) > (select min(salary) from employee where dno = 20);
  
 5. ������ �޿� ��� �� ���� ���� �޿������ ������ �޿���� ����
 select job, avg(salary) from employee
 group by job
 having avg(salary) = (select   min(avg(salary)) from employee group by job);
 
 6. ������ �ִ� �޿��� �޴� ����� �����ȣ, �̸�, ����, �Ի���, �޿�, �μ���ȣ ����
 
 select eno, ename, job, hiredate, salary, dno from employee
 where (job, salary) in (select job, max(salary) from employee group by job);
 
 /*
 7499	ALLEN	SALESMAN	81/02/20	1600	30
7566	JONES	MANAGER	81/04/02	2975	20
7788	SCOTT	ANALYST	87/07/13	3000	20
7839	KING	PRESIDENT	81/11/17	5000	10
7902	FORD	ANALYST	81/12/03	3000	20
7934	MILLER	CLERK	82/01/23	1300	10
*/
 select eno, ename, job, hiredate, salary, dno from employee
where salary in (select max(salary) from employee group by job);


 7. 30�� �μ��� �ּұ޿��� �޴� ������� ���� �޿��� �޴� ����� 
    �����ȣ, �̸�, ����, �Ի���, �޿�, �μ���ȣ, �� 30�� �μ��� �����ϰ� ����
   select eno, ename, job, hiredate, salary, dno from employee 
    where salary > (select min(salary) from employee where dno=30)
      and dno != 30;
    
 8. BLAKE�� ���� �����ڸ� ���� ����� �̸�,����, ����ȣ ����
    select ename, job, manager from employee
     where manager = ( select manager from employee where ename = 'BLAKE' );  -- 7839
    
 -- 9. BLAKE�� ���� �μ��� �ִ� ��� ����� �̸��� �Ի����ڸ� ����
     select ename, hiredate from employee
     where dno = ( select dno from employee where ename = 'BLAKE' );
     
 10. ��ձ޿� �̻��� �޴� ��� ����� ���� ����� ��ȣ�� �̸��� �޿��� ���� ������ ����
   select eno, ename from employee 
    where salary > (select avg(salary) from employee)
   order by salary desc;
   
 11. �̸��� T�� �ִ� ����� �ٹ��ϴ� �μ����� �ٹ��ϴ� ��� ����� ���� 
     �����ȣ,�̸�,�޿��� ���, , �����ȣ ������ ���� 
     (�̸��� T�� �ִ� ��� ã���� instr �Լ� ����Ұ�)
     
     select eno, ename, salary--, dno 
       from employee
      where dno in ( select dno from employee where instr(ename, 'T') != 0 ) 
     order by eno;
     
 12. �μ���ġ�� CHICAGO�� ��� ����� ���� �̸�,����,�޿� ����
 
select e.name, e.job, e.salary -- , d.loc
  from employee e, department d
 where e.dno = d.dno
   and d.loc = 'CHICAGO';
 --#########################################################
 
 13. KING���� �����ϴ� ��� ����� �̸��� �޿��� ����
   select ename, salary--, manager
     from employee
    where manager = (select eno from employee where ename = 'KING');
  
 14. FORD�� ������ ������ ���� ����� ��� ���� ����
 select * from employee
 where (job, salary) in (select job, salary from employee where ename = 'FORD');
 
 15. ������ JONES�� ���ų� ������ FORD �̻��� ����� �̸�,����,�μ���ȣ,�޿� ����
 select ename, job, dno, salary from employee
 where job = (select job from employee where ename = 'JONES')
    or salary >= (select salary from employee where ename = 'FORD');
 
 16. SCOTT �Ǵ� WARD�� ������ ���� ����� �̸�,����,�޿��� ����
 select ename, job, salary from employee
  where  salary = (select salary from employee where ename = 'SCOTT')
    or salary = (select salary from employee where ename = 'WARD');
    
 select ename, job, salary from employee
  where  salary in (select salary from employee where ename in( 'SCOTT', 'WARD'  ))
    and ename not in( 'SCOTT', 'WARD'  );
     
 17. SALES���� �ٹ��ϴ� ����� ���� ������ �ϴ� ����� �̸�,����,�޿�,�μ���ȣ ����
  select ename, job, salary, dno from employee
 where job in ( select job from employee natural join department where dname = 'SALES');
 
* ��Ʈ: select ���� �������� ���� *

 18. �ڽ�(��������)�� �μ� ��� ���޺��� ���� �����
 �μ���ȣ, �̸�, �޿�, �ڽ��� �μ� ��ձ޿��� ����
 (������ row ��)
 
 select e.dno, e.ename, e.salary
      , (select round(avg(salary)) from employee where dno = e.dno ) �μ���ձ޿� 
   from employee e
  where e.salary < (select round(avg(salary)) from employee where dno = e.dno ) ;
 
 19. �����ȣ,�����,�μ���, �ҼӺμ� �ο���, ����, �Ҽ� ���� �޿����,�޿��� ����
  select e.eno, e.ename, d.dname
      , (select count(*) from employee where dno = e.dno ) �ҼӺμ��ο���
      , e.job
      , (select round(avg(salary)) from employee where job = e.job ) �����޿���� 
      , e.salary
      , e.dno
   from employee e, department d
  where e.dno = d.dno ;
 
 select count(*) from employee where dno = '30';
  select salary from employee where job = 'SALESMAN' ;
1600
1250
1250
1500  
 select round(avg(salary)) from employee where job = 'SALESMAN' ;
 1400
 
 20. �����ȣ,�����,�μ���ȣ,����,�޿�, �ڽ��� �Ҽ� ���� ��ձ޿��� ����
   select e.eno, e.ename, e.dno, e.job, e.salary
   , (select round(avg(salary)) from employee where job = e.job ) �ҼӾ�����ձ޿� 
  from employee e;
  
 21. �ּ��� �� ���� ���������� �ִ� �������� �����ȣ,�̸�,�Ի�����,�޿� ����
 
 
 select eno, ename, hiredate, salary
   from employee e
  where eno in (  select manager from employee group by manager);
 
 
 
 select eno, ename, hiredate, salary
   from employee e
  where exists (select 1 from employee t
                        where t.manager = e.eno );
 
 
          
          select 1 from employee t
                        where t.manager = 7839;              

    
 
 22. ���������� ���� ����� �����ȣ, �̸�, ����, �μ���ȣ ���� ( exists Ű���� ����Ұ�)
  select eno, ename, hiredate, salary
   from employee e
  where not exists (select 1 from employee t
                        where t.manager = e.eno );
 
  23. BLAKE�� ���������� �̸�, ����, ����ȣ ����
 select ename, job, manager from employee 
 where manager = (select eno from employee where ename = 'BLAKE' );
 
 -- CHAP 8  ���̺� ���� / ���� / �����ϱ�
 drop table dept;

create table dept(
   dno number(2),
   dname varchar2(14),
   loc varchar2(13));
 
 create table department_bak
 as
 select *
   from department;
   
   select * from department_bak;
   
 create table dept20
 as 
 select eno, ename, salary*12 annsal
   from employee
  where dno = 20;
   
   select * from dept20;
   
 create table dept20_err
 as 
 select eno, ename, salary*12
   from employee
  where dno = 20;     -- ORA-00998:
   
 -- �μ� ���̺� ������ �����ϱ� 
 
 create table dept_third
 as
 select dno, dname
   from department
  where 0=1 ; 
 
 select * from dept20;
 
 desc dept20;
 
 --##############################################
 -- �÷� �߰� ��ɹ�
 alter table dept20
 add(birth date);
 
  alter table dept20
 add(job varchar2(30));
 
 -- ��� �̸� Į�� ũ�� �����ϱ� 
 alter table dept20
 modify ename varchar2(30);
 
 desc dept20;
 -- ��� ���̺��� ���� �÷� �����ϱ� 
 
alter table dept20
drop column job;

desc dept20;

alter table dept20
set unused(birth);
 
 desc dept20;
 
 alter table dept20
 drop unused columns;
 
--##############################################
-- ���̺� �� �����ϱ�
rename dept20 to emp20;

desc emp20;
select * from emp20;

--##############################################
-- ���̺� �����ϱ�
drop table emp20;

desc emp20;

select * from department_bak;
--  ���̺��� ��� ����Ÿ ����
truncate table department_bak;

select table_name from user_tables;

select owner, table_name from all_tables;

select owner, table_name from dba_tables;

 