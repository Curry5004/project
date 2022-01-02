/*������ SALESMAN �� ��� �޿� * 1.1, CLERK �� ��� �޿� * 1.3, MANAGER �� ��� �޿� * 1.5 �� ��
��� ����� �����ȣ, ����, �����, �޿������� ����Ͻÿ�.*/
SELECT eno, job, ename, decode(job, 'SALESMAN', salary*1.1, 'CLERK', salary*1.3, 'MANAGER', salary*1.5, salary) salary
from employee;

--[����2] �����ȣ, ����̸�, �� �޿�(salary+commission)�� ����Ͻÿ�.
select eno, ename, salary+nvl(commission,0) "�� �޿�"
from employee;

--[����3] �Ի����� '1981�� 5�� 1��' �� ����� �˻��Ͻÿ�.
select *
from employee
where hiredate = to_date(19810501, 'YYYYMMDD'); 




--[����4] �μ����̵� 20 �� ����� 
--�̸�, ����, �Ի���, �μ����̵� �˻��Ͻÿ�.
select ename, job, hiredate, dno
from employee
where dno = 20; 

--[����5] �޿��� 3000 �̻��̰� 5000 ������ 
--����� �̸�, �޿��� �˻��Ͻÿ�.
select ename, salary
from employee
where salary between 3000 and 5000; 

/*[����6] �����ھ��̵� 7566, 7782, 7902 �� �ش��ϴ� ����� 
������̵�, �����, �����ھ��̵�, �������̸�, �μ����̵� �˻��Ͻÿ�.
In Ű���� �Ἥ ���� ����°�*/
select e.eno, e.ename, m.eno, m.ename, e.dno
from employee e, employee m
where e.manager=m.eno
and e.manager in (7566, 7782, 7902);

/*
[����7] ������� 3�� �̻��� 
�μ���� �ο����� ����Ͻÿ�. ( group by, having )*/
select d.dname, count(*)
from employee e, department d
where e.dno=d.dno
group by d.dname
having count(*)>=3;

/*
[����8] ��ձ޿� �̻��� �޴� ��� ����� ���� 
����� ��ȣ�� �̸��� �޿��� ���� ������ ����( subquery )*/
select eno, ename
from employee
where salary>=(select avg(salary) from employee)
order by salary desc;

/*[����9] �ڽ��� ������ ��� ���޺��� ���� ����� 
�μ���ȣ, �̸�, �޿�, �ڽ��� �μ� ��ձ޿��� ����*/
select e.dno, e.ename, e.salary 
, (select avg(salary) from employee where dno=e.dno group by dno) AS "�μ� ��� �޿�"
from employee e
where salary<(select avg(salary) from employee where job=e.job group by job)/*�������*/;


--(select 

/*	
[����10] �̸��� 'C'�� �����ϴ� ����� �ٹ��ϴ� �μ����� �ٹ��ϴ� ��� ����� ����
�����ȣ,�̸�,�޿��� ���, �����ȣ ������ ����*/
select eno, ename, salary
from employee   
where dno in (select dno from employee where ename like 'C%')
ORDER BY ENO;