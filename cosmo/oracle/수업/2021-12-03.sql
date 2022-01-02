/*01 �̸��� ALLEN�� ����� ���� ������ �ϴ»����
�����ȣ �̸� ���� �޿� ����*/
SELECT * FROM EMPLOYEE;
SELECT eno, ename, job, salary
from employee
where job = (select job from employee where enaMe='ALLEN')
AND enaMe!='ALLEN';


/*02 EMP ���̺� �����ȣ�� 7521�� ����� ������ ���� �޿��� 7934�� ������� ���� �����
�����ȣ �̸� ������ �Ի��� �޿� ����*/
SELECT * FROM EMPLOYEE;
SELECT eno, ename, job, HIREDATE, salary
from employee
where JOB = (select job from employee where ENO=7521)
AND SALARY> (select SALARY from employee where ENO=7934);


/*03 EMP ���̺� �޿��� ��պ��� ���� �����
�����ȣ �̸� ���� �޿� �μ���ȣ ȣ��*/
SELECT * FROM EMPLOYEE;
SELECT eno, ename, job, salary, DNO
from employee
where SALARY < (select AVG(SALARY) from employee);


/*04 �μ��� �ּ� �޿��� 20�� �μ��� ���ּұ޿����� ū �μ���
�μ���ȣ �ּұ޿�*/
SELECT dno, min(salary)
from employee
group by dno
having min(salary) > (select min(salary) from employee where dno=20);
/*05 ������ �޿� ��� �� ���� ���� �޿������ 
������ �޿� ���*/
select job, avg(salary)
from employee
group by job
having avg(salary) = (select min(avg(salary)) from employee group by job);
/*06 ������ �ִ� �޿��� �޴� �����
�����ȣ �̸� ���� �Ի��� �޿� �μ���ȣ*/
select ENO, ename, job, hiredate, salary, dno
from employee
where (job, salary) in (select job, max(salary) from employee
group by job);



/*07 30�� �μ��� �ּұ޿��� �޴� ���������� ���� �޿��� �޴� �����
�����ȣ, �̸�, ����, �Ի���, �޿�, �μ���ȣ, �� 30�� �μ��� ���� ����*/
select eno, ename, job, hiredate, salary, dno
from employee
where salary>(select min(salary) from employee where dno=30)
and dno!=30;
/*08 BLAKE�� ���� ��縦 ���� �����
�̸� ���� ����ȣ*/
SELECT ename, job, manager
from employee
where manager = (select manager from employee where ename='BLAKE');
/*09 BLAKE�� ���� �μ��� �ִ� ��� ����� �̸��� �Ի����ڸ� ����*/
SELECT ename, HIREDATE
from employee
where DNO = (select DNO from employee where ename='BLAKE');
/*10 ��� �޿� �̻��� �޴� ��� ����� ���� 
����� ��ȣ�� �̸��� �޿��� ���� ������ ����*/
SELECT ENO, ENAME
FROM EMPLOYEE
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE)
ORDER BY SALARY DESC;
/*11 �̸��� T�� �ִ� ����� �ٹ��ϴ� �μ����� �ٹ��ϴ� ��� ����� ����
�����ȣ, �̸�, �޿��� ��� �����ȣ ������ �����Ұ�
INSTR �Լ� ���*/
SELECT ENO, ENAME, SALARY, DNO
FROM EMPLOYEE
WHERE DNO IN (SELECT distinct DNO FROM EMPLOYEE WHERE INSTR(ENAME, 'T') !=0)
ORDER BY ENO;
/*12 �μ���ġ�� CHICAGO�� ��� ����� ����
�̸� ���� �޿� ����*/
SELECT ENAME, JOB, SALARY
FROM EMPLOYEE
WHERE dno=(select dno from department where loc='CHICAGO');





------------------------------------------------------------------------
/*13�� KING���� �����ϴ� ��� ������� 
�̸��� �޿��� ����*/
SELECT ENAME, SALARY, MANAGER
FROM EMPLOYEE
WHERE MANAGER = (SELECT ENO FROM EMPLOYEE WHERE ENAME='KING');

/*14 FORD�� ������ ������ ���� ����� 
��� ������ ����*/
SELECT *
FROM EMPLOYEE
WHERE job = (SELECT JOB FROM EMPLOYEE WHERE ENAME='FORD')
AND SALARY = (SELECT SALARY FROM EMPLOYEE WHERE ENAME='FORD')
and ename!='FORD';


SELECT *
FROM EMPLOYEE
WHERE (job, SALARY) in (SELECT JOB, SALARY FROM EMPLOYEE WHERE ENAME='FORD')
and ename!='FORD';


/*15 ������ JONES�� ���ų� ������ FORD �̻��� �����
�̸� ���� �μ���ȣ �޿� ����*/
SELECT ENAME, JOB, dNO, SALARY
FROM EMPLOYEE
WHERE (JOB = (SELECT JOB FROM EMPLOYEE WHERE ENAME='JONES')
OR SALARY >= (SELECT SALARY FROM EMPLOYEE WHERE ENAME='FORD'))
AND ENAME NOT IN ('JONES', 'FORD');

/*16 SCOTT �Ǵ� WARD�� ������ ���� �����
�̸�, ����,�޿��� ����*/
Select ename, job, salary
from employee
where salary in ((SELECT SALARY FROM EMPLOYEE WHERE ENAME='SCOTT'), (SELECT SALARY FROM EMPLOYEE WHERE ENAME='WARD'))
AND ENAME NOT IN ('SCOTT', 'WARD');

/*17 SALES���� �ٹ��ϴ� ����� ���� ������ �ϴ� �����
�̸� ���� �޿� �μ���ȣ ����*/
select ename, job, salary eno
from employee
where job in (select distinct job from employee where dno =(select dno from department where dname='SALES'));

-- �̷��� ���������� ¥�� ��select job from employee natural join department where dname = 'SALES'

--select ���� �������� ����
/*18 �ڽ�(��������)�� �μ� ��� ���޺��� ���� �����
�μ���ȣ �̸� �޿� �ڽ��� �μ� ��ձ޿��� ����*/
select e.dno, e.ename, e.salary
, (select round(avg(salary)) from employee where dno=e.dno) �μ����
--round(decode(dno, 10, (select avg(salary) from employee where dno=10)
--,20, (select avg(salary) from employee where dno=20)
--,30, (select avg(salary) from employee where dno=30))) as "�μ� ��� �޿�"
FROM EMPLOYEE e
where e.salary<(select round(avg(salary)) from employee where dno=e.dno);


where salary < (round(decode(dno, 10, (select avg(salary) from employee where dno=10)
,20, (select avg(salary) from employee where dno=20)
,30, (select avg(salary) from employee where dno=30))));

select eno, ename, salary, X=(select avg(salary) from employee group dno)
FROM EMPLOYEE
where salary < (round(decode(dno, 10, (select avg(salary) from employee where dno=10)
,20, (select avg(salary) from employee where dno=20)
,30, (select avg(salary) from employee where dno=30))));






/*19 �����ȣ, �����, �μ���, �ҼӺμ� �ο��� , ����, �Ҽ� ���� �޿� ��ձ޿��� ����*/
--���õ�
select e.eno, e.ename, d.dname,
(select count(*) from employee where dno= e.dno) as "�ҼӺμ� �ο���", 
e.job, 
(select round(avg(salary)) from employee where job=e.job) as "�Ҽ� ���� ��ձ޿�"
from employee e, department d
where e.dno=d.dno;

--�밡��
select e.eno, e.ename, d.dname, 
decode(e.dno, 10, (select count(*) from employee where dno=10)
,20, (select count(*) from employee where dno=20)
,30, (select count(*) from employee where dno=30)) as "�μ��ο���"
, e.job , 
decode(e.job, 'ANALYST', (select ROUND(avg(salary)) from employee where JOB='ANALYST')
, 'CLERK', (select avg(salary) from employee where JOB='CLERK')
, 'MANAGER', (select ROUND(avg(salary)) from employee where JOB='MANAGER')
, 'PRESIDENT', (select avg(salary) from employee where JOB='PRESIDENT')
, 'SALESMAN', (select avg(salary) from employee where JOB='SALESMAN')) as "�Ҽ� ���� ��ձ޿�"
from employee e, department d
where e.dno=d.dno;


/*20 �����ȣ, �����, �μ���ȣ, ����, �޿�, �ڽ��� �Ҽ� ���� ��ձ޿��� ����*/
select e.eno, e.ename, e.eno, e.job, e.salary,
(select round(avg(salary)) from employee where job=e.job) as "�Ҽ� ���� ��ձ޿�"
from employee e;

--�밡��
select e.eno, e.ename, e.eno, e.job,
decode(e.job, 'ANALYST', (select ROUND(avg(salary)) from employee where JOB='ANALYST')
, 'CLERK', (select avg(salary) from employee where JOB='CLERK')
, 'MANAGER', (select ROUND(avg(salary)) from employee where JOB='MANAGER')
, 'PRESIDENT', (select avg(salary) from employee where JOB='PRESIDENT')
, 'SALESMAN', (select avg(salary) from employee where JOB='SALESMAN')) as "�Ҽ� ���� ��ձ޿�"
from employee e;

/*21 �ּ��� �� ���� ���������� �ִ� �������� 
�����ȣ,�̸�,�Ի�����, �޿� ����*/
select eno, ename, hiredate, salary
from employee
where eno in (select distinct manager from employee);

select eno, ename, hiredate, salary
from employee e
where exists (select 1 from employee t where t.manager=e.eno);
--�ش� METHOD�� �������� ���������� ���̰� ��ٸ� ��� �����͸� �ҷ��ͼ� �ϴٺ��ϱ� �ð��� �����ɸ��µ�
--�̰ɷ� �Ѵٸ� from ���̺� �ִ� �����͸� ������ �����ϱ� �ӵ��� ������.
--���� �ӵ��� ������ �ϱ� ���� �̷��� ����! ���� ������! Ȯ���� �����ϰ� �� �� �ֵ��� ����.

/*22 ���������� ���� ����� 
�����ȣ, �̸�, ����, �μ���ȣ�� ���� exists Ű���� ����� ��*/
select  eno, ename, job, dno
from employee e;
where not exists(select 1 from employee t where);

select eno, ename, hiredate, salary
from employee e
where not exists (select 1 from employee t where t.manager=e.eno);


/*23 BLAKE�� ���������� 
�̸� ���� ����ȣ ����*/
SELECT ename, job, manager
from employee
where MANAGER= (select eno from employee where ename='BLAKE');












/*chapr 068 ���̺� ���� ���� �����ϱ�*/

--���̺� �����ϱ�
drop table dept;

--���̺� �����ϱ�
create table dept(
    dno number(2),
    dnma varchar2(14),
    loc varchar(13));

--���̺� ���� �� �������� ���
--���������� ����Ͽ� ���� ���̺��� �����Ͽ� ����
create table department_bak
as
select*
from department;
--ġ�� ����!!
select * from department_bak;


--�������� �ۼ� �� �����͸� �缳���Ͽ� ������
--20�� �μ��� ���� ���̺��� ������
create table dept20
as 
select eno, ename, salary*12 annasal
from employee
where dno=20;
--�� �� ���۵� �÷��� ������ �� �÷��� ��Ī�� �������־�� �Ѵ�. �ȱ׷��� ���� �߻�.

-- �� ����!!
select * from dept20;




--�μ� ���̺� ������ �����ϱ�. ������ �������� ����
create table dept_third
as
select dno, dname
 from department
 where 0=1;

--ã�ƺ��� �ο�� ���� �÷��� ����!!!
select * from dept_third;
