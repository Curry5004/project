select *
 from employee, department
 where employee.dno=department.dno;
-- �μ���ȣ ������ ����Ǿ� �� �ٿ� �ٰ��� ����.
-- �̰��� equal join.

select *
 from employee, department;
-- �� ���̺��� ������� �ʰ� �׳� ���� ������ �����ϱ⸸ �� ���� ī��þ� ��.


--equal join
--7788�� ����� �����ȣ, �̸�, �μ����� ����Ͻÿ�
select eno, ename, dname
 from employee, department
 where employee.dno=department.dno and eno=7788;
 
 --�ҷ��� �÷��� �ߺ��Ǿ����� �� �̷��� ���̺�.�÷� �ؼ� �ش� ���ϴ� ���̺��� �÷��� ������ �� �ִ�.
 select employee.eno, employee.ename, department.dname
 from employee, department
 where employee.dno=department.dno and eno=7788;
 

--�÷��� ��Ī�� �ٿ��� �ߴ� �� ó�� ���̺��� ��Ī�� �ٿ��� �����ϰ� �ش� ���̺� ��ġ�ϴ� �÷��� ������ �� �ִ�.
--��Ī �����ָ� �ٸ������� ������ ���̺��̳� �÷��� ��� �� �� �� ����ؼ� ȣ���ؾ��Ѵ�!
  select e.eno, e.ename, d.dname
 from employee e, department d
 where e.dno=d.dno and eno=7788;
 

select e.eno, e.ename, d.dname, dno
from employee e natural join department d
where e.eno=7788; /* natural join�� ����ϸ� -> e.dno, d.dno ���� ����. ������ natural join�� �Ǿ������� ������!
���������� �Ǿ��ִ� �κ��� ���̺�.�÷��� �����ʾƵ� �˾Ƽ� ����!!*/

--natural join�� �����ϳ� � �κ��� join�� ���;��� �� ��������.
select e.eno, e.ename, d.dname, dno
from employee e join department d
using(dno)
where e.eno=7788;

--join on 
select e.eno, e.ename, d.dname, e.dno
 from employee e join department d
 on e.dno = d.dno
 where e.eno = 7788;
 
--NON EQUI JOIN
--WHERE ���� ���
--������ �ƴ϶� ������ �ɾ ������ �ɾ��ִ� ��.

select ename, salary, grade
 from employee, salgrade
 where salary between losal and hisal;
 
 
 --3���� ���̺� �����ϱ�
 select e.ename, d.dname, e.salary, s.grade
 from employee e, department d, salgrade s
 where e.dno=d.dno
 and e.salary between losal and hisal;
 
 
 --self join �ϱ�
 select e.eno, e.ename, e.manager
 from employee e;
 
 select e.eno, e.ename, e.manager
 from employee e
 where e.eno=7902;
 
 select e.eno, e.ename as "�����̸�"
 , m.ename as "���ӻ�� �̸�"
 from employee e, employee m
 where e.manager=m.eno;
 
 --join - on ���� �̿��� self join
 select e.ename || '�� ���� ����� ' || m.ename
 from employee e join employee m
 on e.manager = m.eno;
 

  
 
 -- (+) ��ȣ�� ����� outer join 
 
 /* �ش��ϴ� ���� ����� ���� ���. on e.manager = m.eno; ����� �ȵȴ�.
 �ֳ�> ���ӻ���� null�̴ϱ� ������ �ȵǼ� �׳� �ƿ� ��� ��ü�� �ȵȴ�.*/
  select e.eno, e.ename "�����̸�"
 , m.ename as "���ӻ�� �̸�"
 from employee e, employee m
 where e.manager=m.eno(+);
 --(+) �ش� ������ �ִ� ���� ��� ����� �����ְ���� �� (+) �� �ٿ��� ���ִ°Ŵ�.
 
 --join on Ű���带 ���
  select e.eno || '�� ���� �����'|| nvl(m.ename, '�����ϴ�')
 from employee e left outer join employee m
 /*--������ ���������ؼ� ��� ������ ������ ���̴� ��� ��*/
 on e.manager=m.eno;
 
 --ȥ�ڼ� �غ��� ����
 --01 equi ������ ����ؼ� scott ����� �μ���ȣ�� �μ� �̸��� ����Ͻÿ�
 select ename, d.dno, dname
 from employee e, department d
 where e.dno=D.dno
 and ename='SCOTT';
 
 --02 inner join�� on �����ڸ� ����Ͽ� ��� �̸��� �Բ� �� ����� �Ҽӵ� �μ� �̸��� �������� ����Ͻÿ�
 select * from department;
 
 select ename, d.dno, dname, loc
 from employee e inner join department d
 on e.dno=d.dno;
 
 --03 inner join�� using �����ڸ� �����Ͽ� 10�� �μ��� ���ϴ� ��� ��� ���� ������� (�ѹ����� ǥ��)��
 --�μ��� ������� �����Ͽ� ����Ͻÿ�.
 --�� distinct�̰� ���� ����?
 select dno,  job, loc
 from employee e join department d
 using(dno)
 where dno =10;
 
 --04 natural join�� ����ؼ� Ŀ�̼��� �޴� ��� ����� �̸� �μ��̸� �������� ����Ͻÿ�
 
 select ename, dname, loc, commission
 from employee e natural join department d
 where commission is not null and commission !=0;
 
 --�ξ� ����� ǥ��
  select ename, dname, loc, commission
 from employee e natural join department d
 where commission >0;
 
 
 --05 equi ���ΰ� wildcard�� ����Ͽ� �̸��� a�� ���Ե� ��� ����� �̸��� �μ����� ����Ͻÿ�.
 select ename, e.dno, dname, loc
 from employee e, department d
 where e.dno=d.dno and ename like '%A%';
 
 
 --06 natural join�� ����Ͽ� new york�� 
 --�ٹ��ϴ� ��� ������� �̸�, ����, �μ���ȣ �� �μ����� ����Ͻÿ�
 select ename, job, dno, dname, LOC
 from employee e natural join department d
 where loc = 'NEW YORK';
 
 --07 SELF JOIN�� ����Ͽ� ����� �̸� �� �����ȣ�� ������ �̸� �� ������ ��ȣ�� �Բ� ����Ͻÿ�
 select e.ename Employee, e.eno Emp#, e.manager, m.ename Manager, m.eno Mgr#
 from employee e , employee m
 where e.manager=m.eno;
 
 --08 outer join, self join�� ����Ͽ� �����ڰ� ���� ����� �����Ͽ� �����ȣ�� �������� �������� �����Ͽ� ����Ͻÿ�
  select e.ename Employee, e.eno Emp#, e.manager, m.ename Manager, m.eno Mgr#
 from employee e left outer join employee m
 on e.manager=m.eno
 order by e.eno desc;

  select e.ename Employee, e.eno Emp#, e.manager, m.ename Manager, m.eno Mgr#
 from employee e , employee m
 where e.manager=m.eno(+)
 order by e.eno desc;
 
 --09 self join�� ����Ͽ� ������ ����� �̸�, �μ���ȣ, ������ ����� ������ �μ��� �ٹ��ϴ� ����� ����Ͻÿ�. 
 --�� �� ���� ��Ī�� �̸� �μ���ȣ ����� �Ͻÿ�
 select e.ename �̸�, e.dno �μ���ȣ, s.ENAME ����
 from employee e , employee s
 where e.dno=s.dno
 AND S.ENAME != 'SCOTT'
 AND e.ename = 'SCOTT';
  
  
--10 SELF JOIN�� ����Ͽ� WARD ������� �ʰ� �Ի��� ����� �̸����Ի����� ����Ͻÿ�
select * from employee;
select l.ename, l.hiredate
from employee e, employee l
where e.ename=l.ename 
and l.hiredate>'81/02/22'
order by hiredate;

select l.ename, l.hiredate
from employee e, employee l
where e.ename='WARD';

SELECT e.ename, e.hiredate
form employee e, employee d
where ;

--11 self join�� ����Ͽ� �����ں��� ���� �Ի��� ��� ����� �̸� �� �Ի����� �������� �̸� �� �Ի��ϰ� �Բ� ����Ͻÿ�
--�� . �� ���� ��Ī�� ��� ȭ��� ������ �Ͻÿ�

select e.ename AS "ENAME", e.hiredate AS "HIREDATE", m.ename AS "ENAME", m.hiredate AS "HIREDATE"
from employee e, employee m
where e.manager=m.eno 
and e.hiredate <= m.hiredate;













--�߰� ����
--���±������� �� �����ؼ� ����!!
--1. ������� 3�� �̻��� �μ���� �ο����� ����Ͻÿ�. (group by, having)*
select decode(dno, 10,'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES'), DNO,  count(dno)
from employee
group by dno
having count(dno)>=3;


--���亻
select d.dno, d.dname, count(*)
from employee e , department d
 where e.dno = d.dno
 group by d.dno, d.dname
 having count(*) >=3;

select * from employee where dno = '20';

--1.1 ��å���� 3�� �̻��� ��å��� �ο����� ����Ͻÿ�
select JOB,  count(JOB)
from employee
group by JOB
having count(JOB)>=3;

--02 ������ ���� ���� �������� ������ ������ ��� ������ ����Ͻÿ�
select job, avg(salary)
from employee
group by job
having avg(salary) = (select min(avg(salary)) from employee group by job);


--03 �����ȣ, ����̸�, �μ��̸�, �μ���ȣ�� ����Ͻÿ�
--1) natural join
select eno, ename, dname, dno
from employee natural join department;

--2) join on
select eno, ename, dname, e.dno
from employee e join department d
on e.dno = d.dno;

--3) JOIN USING
select eno, ename, dname, dno
from employee e join department d
USING(DNO);

/* natural join, join using�� �����÷� ���̺� ��Ī ����*/


--04 �μ��� 30�̰� �޿��� 1500�̻��� ����̤� �̸�, �޿�, �μ���, �μ���ȣ�� ����Ͻÿ�
select  ename, SALARY, dname, e.dno
from employee e join department d
on e.dno = d.dno
WHERE e.dno=30 and salary>=1500;

--�����ս������� �̷��� �ۼ��ϴ� ���� ����.
select  ename, SALARY, dname, e.dno
from employee e join department d
on e.dno = d.dno
WHERE  salary>=1500 and e.dno=30;
--��? where ������ �˻��Ͽ��� �� ���� ���� ���� �������� ���� ������ ����� �������� ������� �Է� �ϴ� ���� �����ս������� ����.



--05 ������� 5���� �Ѵ� �μ��� �μ���� ������� ����Ͻÿ� *
select * from department;
select decode(dno, 10,'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES'), DNO,  count(dno)
from employee
group by dno
having count(dno)>=5;


select d.dname,  count(*)
from employee e, department d
where e.dno = d.dno
group by d.dname
having count(*)>5;




--06 ADAMS ����� �ٹ��ϴ� �μ��̸��� ���� �̸��� ����Ͻÿ�
SELECT ename, dname, loc
from employee e, department d
where e.dno = d.dno and e.ename='ADAMS';


--07 NEWYORK�̳� DALLAS ������ �ٹ��ϴ� ������� �����ȣ, ����̸��� �����ȣ������ ����Ͻÿ�
SELECT e.eno, ename, loc
from employee e, department d
where e.dno = d.dno and d.loc in ('NEW YORK', 'DALLAS')
order by e.eno;




--��������
select ename, salary
from employee
where salary > (select salary from employee where ename= 'SCOTT');


--SCOTT�� ������ �μ����� �ٹ��ϴ� ��� ����ϱ�
SELECT ename, dno
from employee
where dno = (select dno from employee where ename = 'SCOTT')
and ename != 'SCOTT';
--�ϳ��� ����� ������ ������ ����������� �Ѵ�.

--�����޿��� �޴� ����� �̸��� ��� ����, �޿��� ����Ͻÿ�
SELECT ename, job, salary
from employee
where salary = (select min(salary) from employee);

--30�� �μ����� �ּ� �޿����� ū �޿��� �޴� �μ� ��ȣ�� �ּ� �޿��� ����Ͻÿ�
select dno, min(salary)
from employee
group by dno
having min(Salary) > (select min(salary)
                        from employee
                        where dno = 30);




select eno, ename
from employee
where salary=(
        select min(salary)
        FROM EMPLoYEE
        group by dno );
--�������� �����µ� ����� ���� ��������� �ؼ� �̴� ������ �����������.

select eno, ename, salary
from employee
where salary in(
        select min(salary)
        FROM EMPLoYEE
        group by dno );
--�̰� �ٸ��� ���� salary in (950, 800, 1300)�̷��� ����µ� �̰Ͱ� �����ϰ� ����
--�������̳����� ���� ������ �����࿡ ���� �����ڸ� ����Ͽ��� �Ѵ�.


--13�� ���� Ǫ�� ��
select ename, salary
from employee
where manager = (select eno from employee where ename='KING');

--14�� RESEARCH �μ��� ����� ���� �μ���ȣ, ��� �̸� �� ��� ������ ǥ���Ͻÿ�
select * from department;
select dno, ename, job
from employee
where dno = (select distinct dno from employee join department using(dno) where dname='RESEARCH');
--15�� ��� �޿����� ���� �޿��� �ް� �̸��� M�� ���Ե� ����� ���� �μ�����
--�ٹ��ϴ�  ����� �����ȣ, �̸�, �޿��� ǥ���Ͻÿ�
--16�� ��� �޿��� ���� ���� ������ ã���ÿ�
--17�� ��� ������ MANAGER�� ����� �Ҽӵ� �μ��� ������ �μ��� ����� ǥ���Ͻÿ�






--�� �����ĸ��� �ñ� �������� ���� 12�� ���� �� Ǯ���µ� ��������� 
--13�� ���� Ǫ�� ��
select ename, salary
from employee
where manager = (select eno from employee where ename='KING');

--14�� RESEARCH �μ��� ����� ���� �μ���ȣ, ��� �̸� �� ��� ������ ǥ���Ͻÿ�
select * from employee;
select dno, ename, job
from employee
where dno = (select dno from department  where dname='RESEARCH');


--15�� ��� �޿����� ���� �޿��� �ް� �̸��� M�� ���Ե� ����� ���� �μ�����
--�ٹ��ϴ�  ����� �����ȣ, �̸�, �޿��� ǥ���Ͻÿ�

select eno, ename, salary
from employee
where dno in (select distinct dno from employee where ename like '%M%')
and salary>(select avg(salary) from employee);


--�̷��� �����ؾ��ϴ°� �ƴ�??
select eno, ename, salary
from employee
where dno ? (select distinct dno from employee where ename like '%M%' and salary>(select avg(salary) from employee));
--��� �޿� 2073
--16�� ��� �޿��� ���� ���� ������ ã���ÿ�
select job, avg(salary)
from employee
having avg(salary)=(select min(avg(salary)) from employee group by job)
group by job;
--17�� ��� ������ MANAGER�� ����� �Ҽӵ� �μ��� ������ �μ��� ����� ǥ���Ͻÿ�
select *
from employee
where dno in (select dno from employee where job='MANAGER');








--����
/* ���̺��� ���ٺ��� ���� ���̺� ����� ���̺���� �Ѳ����� ��� �� ���� ����.
�׷��� ���̺��� ���� ������ �÷��� ������ �� �����͸� ���� Ȯ���Ѵ�.*/

