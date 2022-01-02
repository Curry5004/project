select distinct dno from employee;

select * from dual;

select sysdate from dual;

select * from employee
where dno =1 or job = 'MANAGER';

SELECT * FROM EMPLOYEE
WHERE NOT DNO = 10;

SELECT * FROM EMPLOYEE
WHERE  DNO  <> 10;
-- �̰� �ּ�ó��
/*������ �ּ��� ����
*/
SELECT * FROM EMPLOYEE
WHERE  DNO  != 10;
 
 
 --btween ������ ���
SELECT * FROM EMPLOYEE
WHERE SALARY >= 1000 AND SALARY <= 1500;

select * from employee
where SALARY between 1000 and 1500;
--���� ����



--not between ���
SELECT * FROM EMPLOYEE
WHERE SALARY <1000 OR SALARY> 1500;

select * from employee
where salary not between 1000 and 1500;


-- Ŀ�̼��� 300 �̰ų� 500�̰ų� 1400�� ��� ����ϱ�
select * from employee
where commission = 300 or commission=500 or commission =1400;

-- in ������ {a, b, c} �� �� �ϳ��� ��ġ�ϸ� ����Ǵ� ������.
 select * from employee
  where commission in (300, 500, 1400);




--1982�⿡ �Ի��� ��� ����ϱ�
 select * from employee
 where hiredate between '1982/01/01' and '1982/12/31';


 --like ������. ���ϵ� ī��. ����ũ �����ڶ� �ۼ�Ʈ �����ڸ� �Բ� ����Ѵ�.
 --�̸��� f�� �����ϴ� ��� ����ϱ�.
select * from employee
where ename like 'F%';

--�̸� �߰��� M�� ���ԵǾ��ִ� ��� ����ϱ�.
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%M%';

--�̸��� N���� ������ ��� ����ϱ�
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%N';


--�̸��� �ι�° ���ڰ� A�� ��� ����ϱ�.
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '_A%';

--�̸��� �� ��° ���ڰ� A�� ��� ����ϱ�.
SELECT * FROM EMPLOYEE
--����� �ϳ��� �ѱ���!!!!!!!!
WHERE ENAME LIKE '__A%';

--��� �̸��� A�� ���Ե��� �ʴ� ���� ����ϱ�
SELECT * FROM EMPLOYEE
WHERE ENAME NOT LIKE '%A%';




--Ŀ�̼��� 0�λ���� ��ȸ�ϱ�
--�߸��� ����
SELECT * FROM EMPLOYEE
WHERE COMMISSION = NULL;

--�ùٸ� ����
--�̰� ���� ����Ű�� ���� ����.
SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NULL;

SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL;

--NULL ���� ���� ��ȣ�� �ٷ� ���� �ȵǰ� IS�� ���ų� IS NOT�� ����Ͽ� Ȯ���ؾ� �Ѵ�.

--IS LIKE BETWEEN  �̷��� ���� ���� ��.


--������������ ����.
SELECT * FROM EMPLOYEE
ORDER BY SALARY ASC;
--ORDER BY�� ��� �⺻������ ���������̱⿡ ASC �� ������ �ʰ� ������ ����� �����ϴ�.
SELECT * FROM EMPLOYEE
ORDER BY SALARY;

--������������ ����
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC;

SELECT * FROM EMPLOYEE
ORDER BY ENAME;

SELECT * FROM EMPLOYEE
ORDER BY HIREDATE DESC;

--�ΰ��� ������ �����ؼ� ���� �� �� �ִ�.
--�������� ������������ �Ǹ鼭 ���v�� �̸��� ��� �̸��� ���� ������ �ǤǷ� ���յǾ ��µǵ��� �ڵ�
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC, ENAME ASC;

--������ �׷��� ���� ���� ���̴� ���⼭ �߿��� ���� ���� ������� �⸣�� ���� �߿��ϴ�.

--211130 1545 �������� Ǯ�� ����

--1��
SELECT ename, salary, salary+300 FROM employee;

--2�� 
select ename, salary, salary*12+100 �Ѽ��� from employee
order by �Ѽ��� desc;

--3��
select ename, salary from employee
where salary>=2000 order by salary desc;

--4��
select ename, dno from employee
where eno=7788;

--5��
select ename, salary from employee
where salary not between 2000 and 3000;

--6��
select * from employee;

select ename, job, hiredate from employee
--��¥ ���� �� '' �� �� ǥ�������
where hiredate between '81/02/20' and '81/05/01';


--7��
select ename, dno from employee
where dno between 20 and 30 order by ename desc;

--8��
select ename, salary, dno 
  from employee
WHERE dno in(20, 30) and salary between 2000 and 3000 ORDER BY ENAME;

--9��
select ename, hiredate from employee
where hiredate like '81%';

--10��
select ename, job from employee
where manager is null;

--11��
select * from employee;

select ename, salary, commission from employee
where commission is not null order by salary desc, commission desc ;

--�ð����� �� ��ǰ����������������

--1. �μ���ȣ 10���� ������� �����ȣ, ����̸�, ������ ����Ͻÿ�
select eno, ename, salary from employee
where dno=10;
--2.  �����ȣ 7369�� ��� �̸� �Ի���, �μ���ȣ�� ���
select ename, hiredate, dno from employee
where eno=7369;

--3. �����ȣ 7300���� ũ�� 7400 ���� ���� ��� �̸�, �Ի���, �μ���ȣ ���
select ename, hiredate, dno from employee
where eno>7300 and  eno<7400;

--4. employee�� ��� ������ �����ȣ ���� ������������ �˻��Ͻÿ�
select * from employee
order by eno desc;

--5. �̸��� s�� �����ϴ� ��� ����� �����ȣ�� �̸��� ����Ͻÿ�
select eno, ename from employee
where ename like 'S%';
--6. ���ӻ�� �����ȣ�� ���� ����� ��� ������ �˻��Ͻÿ�
select * from employee
where manager is null;



--1 ��å��  SALESMAN ANALYST ����� �� ������ ����Ͻÿ� ( OR, LIKE IN 3���� ���� ���)
select * from employee
where job='SALESMAN' OR job='ANALYST';

select * from employee
where job like 'SALESMAN' OR job like'ANALYST';

select * from employee
where job in ('SALESMAN', 'ANALYST');


--2 1981�� 5�� 1�� ~ 1982�� 2�� ���̿� �Ի��� ������� ��� ������ �μ���ȣ(��������) ���� �˻��Ϥӿ�
select * from employee
where hiredate between '81/05/01' and '82/02/01'
order by dno asc;

--3 81�⿡ �Ի��� ����� �̸��� ��� ��ȣ�� ����ϴµ� �����ȣ�� ������������ �����Ͻÿ�.
select ename, eno from employee
where hiredate like '81%'
order by eno desc;

--4 ������ salesman�� ����� �޿��λ��� (�޿� 1.1)�� �ؼ� �̸�, �Ի���, �޿��� ����Ͻÿ�
select ename, hiredate,salary, salary*1.1 as �޿��λ� from employee
where job = 'SALESMAN';
--5 ��� ����鿡�� Ŀ�̼Ǥ��� 200�� �߰��Ͽ� ����̸� , Ŀ�̼� ���� ����Ͻÿ�
select ename, nvl(COMMISSION, 0), nvl(COMMISSION, 0)+200 from employee;
--6 Ŀ�̼��� ������ �ִ� ����� y, Ŀ�̼��� null���� ����� n�� �����Ͽ� ��� �̸��� Ŀ�̼� ���� ����Ͻÿ� (nvl2)
select ename, nvl2(commission, 'Y', 'N') from employee;
--nvl2�� db��ũ�� �� �� ����.

--7 1981�� �Ի��ڵ��� ����ӱ� (AVG(salary))�� ����Ͻÿ�
select (AVG(salary)) from employee
where hiredate like '81%';

--8 �����ȣ, ����̸�, �� �޿� (salary+commission)�� ����Ͻÿ� (commission null ó��)
select eno, ename, nvl(commission, 0)+salary �ѱ޿� from employee;