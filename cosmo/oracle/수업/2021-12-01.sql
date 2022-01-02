show user;

--����ó�� �Լ����� ��ҹ��� ��ȯ�Լ�
select 'Oracle Mania' �Ϲ�
    , UPPER('Oracle Mania') �빮��
    , LOWER('Oracle Mania') �ҹ���
    , INITCAP('Oracle Mania') �ձ��ڸ��빮��
from dual;

select ename, lower (ename), job, initcap(job)
from employee;

select eno, ename, dno
from employee
where ename = 'scott';
--�̷��� ��ȸ�� �ȵ�. ��? scott�� �빮�ڷ� ����Ǿ������ϱ� �ҹ��ڷ� ã���� �ȵ�
--�׷��� �� �˻�� �빮�ڷ� �ٲܼ��� ������ ����ó�� �� �� �ִ�.

select eno, ename, dno
from employee
where lower(ename) = 'scott';
--�̷��� ename�� �ҹ��ڷ� ��ȯ���Ѽ� ���� �� ���� �ִ�.

--�ٸ� ���� ���� ����.
--INITCAP ���
select eno, ename, dno
from employee
where initcap(ename) = 'Scott';


--���� ���̸� ��ȯ�ϴ� �Լ�
--�̷��� �ϸ� �ѱ��ھ� ����
select length('OracleMania'), length('����Ŭ�ŴϾ�')
from dual;

select lengthb('OracleMania'), lengthb('����Ŭ�ŴϾ�')
from dual;
-- ������ ���� �Ȱ��� 11������ �ѱ��� ���ڵ� ����� �޶� �Լ����� ������ ������� �޶�����.


--��ҹ��� ��ȯ�Լ�
--�̷��� ��ҹ��ڰ� ��ȯ�Ǵ� ���� Ȯ�� �� �� ����
select JOB, UPPER(JOB), LOWER(JOB), INITCAP(JOB)
FROM EMPLOYEE;

select *
from employee
where UPPER 




--����ó�� �Լ�
--���� ��ġ�� �ϴٺ��� �̷� �Լ����� ���� ���� ��.
--���ڰ��� �����ִ� �Լ� concat
select 'Oracle', 'Mania', concat('Oracle', 'mania')
from dual;

--SUBSTR(���, ������ġ, �����Ұ���) ���� �߶� ����
--��� ��ġ�� 0���� �ƴ϶� 1������ ������.
select substr('Oracle mania', 4, 3)
--   -�� �ڿ��� ���� ���� ��
    , substr('Oracle mania', -4, 3)
from dual;

--�̸��� 'N'���� ������ ����� SUBSTR �Լ��� �̿��ؼ� ����Ͻÿ�
SELECT *
FROM EMPLOYEE
where substr(ename, -1, 1) = 'N';

--87�⵵�� �Ի��� ����� SUBSTR �Լ��� �̿��ؼ� ����Ͻÿ�
SELECT *
FROM EMPLOYEE
where substr(hiredate, 1, 2) = '87';

--�������� ��� substr�̳� substrb�� ���� ���̴� ������ �ѱ��� ���̰� ����.
--substrb�� ����Ʈ ������ ���ٺ��� �� �߷� ������ substr�� �׳� ���ڼ��� ����.
--substrb�� ���� ������ ������ ���� ���� �� ��.
select substr('����Ŭ�ŴϾ�', 3, 4)
    , substrb('����ũ���Ͼ�', 3, 4)
from dual;





--INSTR �Լ� ����
--INSTR(���, ã�� ����, �� ��° �߰�)
select INSTR('Oracle mania', 'a')
from dual;
--��ġ�� �κ��� �ݿ����ش�.

select INSTR('Oracle mania', 'k')
from dual;
--���°� ġ�� 0�� �����Ѵ�

--���ڿ����� ã�� ��ġ�� ������
--�ش� ���� 5��° ��ġ���� ���� 2��°�� �߰ߵǴ� a�� ã�ƶ� ��� �ǹ�
select INSTR('Oracle mania', 'a', 5, 2)
from dual;

--instrb�� ���
--����Ʈ ������ ã���ش�.
select instr('����Ŭ�ŴϾ�', '��')
    ,instrb('����Ŭ�ŴϾ�', '��')
from dual;

--�̸��� ������ �ڸ��� 'R'�� ����� �˻��ϴ� �������� INSTR �Լ��� ����Ͽ� ����Ͻÿ�
select *
from employee
where instr(ename, 'R', 3, 1) = 3;
--3��° �ڸ��� R�� ������ 3�� �����Ҳ��ϱ� �񱳸� ���� 3�� ������ ���� ������ �ǵ��� �Ͽ� �̷��� ������ �Ѵ�.




--LPAD �Է¹��� ���ڿ��� ��ȣ�� �����Ͽ� Ư�� ������ ���ڿ��� ��ȯ�Ѵ�
--LPAD�� RPAD�� �ƶ��� ����ϴ�. L�� ���� R�� ������

--���� �ڸ��� Ư�� ��ȣ�� ä���
--���ʿ� ���� �߰��Ǿ� 10�ڸ��� ä����.  �ش��ϴ� �ڸ�����ŭ *�� ä���� �������
select LPAD(Salary, 10, '*')
from employee;

--�ݴ�� �����ʿ� ���ڸ� �־� Ư�� ������ ���ڿ��� �������ش�.
select RPAD(salary, 10, '*')
from employee;



--���������� �Լ� trim
--TRIM�� �׳� �յ� �� Ʈ������
--���� �����ϱ�
-- L, R �� �ٴ°ſ� ���� ����ʿ� �پ��ִ� ������ ������ �� ������ ������ �� ������ �׳� TRIM�� ������ �� ���̵� ���θ� �����ش�.
select '     Oracle mania     ', LTRIM('     Oracle mania     '), RTRIM('     Oracle mania     '), TRIM('     Oracle mania     ')
FROM DUAL;









--���� �Լ�
--���� �Լ��� ���� �����͸� ó���ϱ� ���� �Լ�

--ROUND (���, �ڸ���) Ư�� �ڸ������� �ݿø��Ѵ�.
--�ڸ��� ��ǥ�� - �Ҽ��� ���� ����
--�ڸ��� ǥ�� - �ű���� ����
--�ڸ��� - ǥ�� - �տ��� ���� ����
SELECT 98.7654
    , round(98.7654)
    , round(98.7654, 2)
    , round(98.7654, -1)
from dual;



--TRUNC Ư�� �ڸ������� �߶󳽴�.
--�ڸ��� ��ǥ�� - �Ҽ��� ���� ����
--�ڸ��� ǥ�� - �Ҽ��� �ű���� ����
--�ڸ��� - ǥ�� - �տ��� ���� ����
SELECT 98.7654
    , TRUNC(98.7654)
    , TRUNC(98.7654, 2)
    , TRUNC(98.7654, -1)
from dual;



--MOD �Է¹��� ���� ���� ������ ���� ��ȯ�Ѵ�.
SELECT MOD (31, 2)
      ,MOD(31,5)
      ,MOD(31,8)
FROM DUAL;

SELECT ENAME, SALARY, MOD(salary, 500)
from employee;





--��¥ �Լ�
--��¥ �����͸� �ٷ�� ���� �Լ�

--sysdate ���� ��¥�� ��ȯ�Ѵ�.
--����ĵ� �����ѵ� �ܼ��� ����� ������ day�� �������� �ϳ� ������.
select sysdate-1 ����,SYSDATE , sysdate+1 ���� FROM DUAL;


select ENAME, round(sysdate-HIREDATE) �ټ��ϼ�
    , (sysdate-HIREDATE)
    , HIREDATE
    ,(sysdate-(sysdate-7)) 
FROM EMPLOYEE;

--TRUNC Ư�� ���� �� ����. �� ���� �⵵ ���Ͽ� �ִ� ���� ���� �����ش�.
select HIREDATE
    , TRUNC(HIREDATE, 'YEAR')
FROM EMPLOYEE;

--Ư�� ��¥�� ���� ���� ���Ѵ�.
select ename, hiredate, add_months(hiredate, 6)
from employee;

--NEXT_DAY (date, '����')
--Ư�� ��¥���� ���ʷ� �����ϴ� ���ڷ� ���� ������ ��¥�� ��ȯ�Ѵ�.
select sysdate, next_day(sysdate, '�����')
from dual;

--last_day �ش� ���� ������ �� ���ϱ�.
--�Ի��� ���� ������ ���ϱ�.
--Ư�� ���� ������ ��¥�� �˰���� �� �����Ѵ�.
select ename, hiredate
    ,last_day(hiredate)
from employee;






--�� ��ȯ �Լ�
select ename, HIREDATE
    , TO_CHAR(HIREDATE, 'YY-MM')
    , TO_CHAR(HIREDATE, 'YYYY-MM-DD DAY')
FROM EMPLOYEE;

select to_char(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL;

--�̷��� �˻��ϸ� �׳� ���ڿ� Ÿ���̴ϱ� ����Ʈ Ÿ�Կ� ����Ǿ� ��µ�������
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE = 198110220;

--���ڿ� Ÿ���� ����Ʈ Ÿ������ ��ȯ�Ͽ� ���� �� �ְ� ����
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE =TO_DATE(19810220, 'YYYYMMDD');


--�̴� ���ڿ��̱� ������ ����� ���� �ʰ� ����� �ȵ�
SELECT '100,000'-'50,000'
FROM DUAL;
--Ư������ ���ڿ��� ��ȯ���ִ� ��.
SELECT TO_NUMBER('100,000', '999,999') - TO_NUMBER('50,000', '999,999')
FROM DUAL;




--�Ϲ��Լ�
--NVL �Լ�
--NULL ���� 9 �Ǵ� �ٸ� ������ ��ȯ�ϱ� ���� ����ϴ� �Լ�.
select ename, salary, commission ,nvl(commission, 0),salary*12+nvl(commission, 0)
from employee;

--nvl2 �Լ�
--nvl2(exrp1, exrp2, exrp3) exrp1�� null�� �ƴϸ� exrp2�� �ϰ� ������ exrp3�� �Ѵ�.
--���� ������ ó�� �� �� �ִ�. �ٸ� ���� ù��° ���� ���� null���� �����θ� �Ǵ��Ѵ�.
select ename, salary, commission ,
    nvl2(commission, salary*12+commission, salary*12)
from employee;

--coalesce (expr-1, expr-1expr-1 expr-1/....)

select ename, salary, commission
    ,coalesce(commission, salary, 0)
    from employee;
    order by job;
    
    
--nullif(expr1, expr2)
--�� ǥ������ ���Ͽ� ������ ��쿡�� null�� ��ȯ�ϰ� �������� ������ ù���� ǥ������ ��ȯ.
--���� ���� ��쿡�� ù���� ǥ������ ��ȯ.
select nullif('A', 'A')
    ,nullif('A', 'B')
FROM DUAL;

--DECODE, CASE. ���� ����ϳ� CASE�� �� �� ������.
--DECODE(ǥ����, ����1, ���1, ���� 2, ��� 2, ..... ����N, ���N, �⺻���N)
--CASE(WHEN ����1 THEN ���1, WHEN ����2 THEN ���2 ..... ELSE ���N) IF ELSE�� ������ ������ ������ �ִ�.
--1) DECODE ( ǥ����, ����1, ���1, ����2, ���2, ����3, ���3.....�⺻���N)
select ename, dno, DECODE(dno, 10, 'ACCOUNTING', 
                               20, 'RESEARCH',
                               30, 'SALES',
                               40, 'OERATIONS',
                                'DEFALUT') AS DNAME
FROM EMPLOYEE
ORDER BY DNO;
--�ǹ��Ҷ� �ʹ��ʹ� ���� ���̴� �Լ�.

--2)CASE �Լ� if else�� ���� ����� �� ����
select ename, dno,
    CASE WHEN dno=10 THEN 'ACCOUNTING'
         WHEN DNO=20 THEN 'RESEARCH'
         WHEN DNO=30 THEN 'SALES'
         WHEN DNO=40 THEN 'OPERATIONS'
         ELSE 'DEFAULT'
    END AS DNAME
FROM EMPLOYEE
ORDER BY DNO;


--���� Ǯ�� ����
--01 SUBSTR �Լ��� ����Ͽ� ������� �Ի��� �⵵�� �Ի��� �޸� ����Ͻÿ�.
select ename,HIREDATE, substr(hiredate, 1,2) �⵵, substr(hiredate, 4,2) �� from employee;
select * from employee;

--02 substr �Լ��� ����Ͽ� 4���� �Ի��� ����� ����Ͻÿ�
select ename, substr(hiredate, 4,2)
from employee
where substr(hiredate, 4,2) = 04;
SELECT * FROM EMPLOYEE;

                                
--03 MOD �Լ��� ����Ͽ� �����ȣ�� ¦���� ����� ����Ͻÿ�    
SELECT * FROM EMPLOYEE
where mod(eno,2)=0;

--04 �Ի����� ������ 2�ڸ�(YY), ���� ���� (MON)�� ����ϰ� ������ ��� (DY)�� �����Ͽ� ����Ͻÿ�.
SELECT ENO, ENAME, JOB, MANAGER,
    TO_CHAR(hiredate, 'YY,MON,DY') ��¥
FROM EMPLOYEE;

--05 ���� ��ĥ�� �������� ����ϽäǤ�. ���� ��¥���� ���� 1�� 1���� �A �ܷΰ��� ����ϰ� TO_DATE �Լ��� ����Ͽ� ������ ���� ��ġ��Ű�ÿ�.
SELECT ROUND(SYSDATE-TO_DATE(210101, 'YY/MM/DD')) "���� ������" FROM DUAL;

--06 ������� ��� ����� ����ϵ� ����� ���� ����� ���ؼ��� NULL �� ��� O���� ����Ͻÿ�
SELECT ename, job, nvl(manager, 0) from employee;

--07 DECODE �Լ��� ���޿� ���� �޿��� �λ��ϵ��� �Ͻÿ�. ������ 'ANALYST�� ����� 200, 'SALESMAN'�� ����� 180, 
--'MANAGER'�� ����� 150, 'CLERK'�� ����� 100�� �λ��Ͻÿ�
SELECT ENAME, JOB, salary, salary+decode(job, 'ANALYST',200, 'SALESMAN', 180, 'MANAGER', 150, 'CLERK', 100, 0) �λ���
FROM EMPLOYEE
ORDER BY JOB;


select * from employee;

--1. 1981�� 5�� 1�� 1982�� 2�� ���̿� �Ի��� ������� ��� ������ �μ� ��ȣ ��(��������)���� �˻��Ͻþ� (TO_DATE)
select * from employee
where hiredate between to_date(19810501, 'YYYYMMDD') AND to_date(198202, 'YY/MM')
ORDER BY ENO;
--�̷��� TO_TADE ��ȯ�ؼ� DATE Ÿ���� �����Ϳ� ���Ҷ� ' ' �� Ÿ���� �׷��� ��� ��������.

--2. 1981�⿡ �Ի��� ����� �̸��� �����ȣ�� ����ϴµ� ��� ��ȣ�� ������������ �����Ͻÿ�. (�񱳿�����, TO_CHAR)
SELECT ename, eno, HIREDATE
from employee
where TO_CHAR(hiredate, 'YY')=81
ORDER BY ENO DESC;

--�̷��Ե� ������ �� ����
SELECT ename, eno, HIREDATE
from employee
where HIREDATE >='19810101'
AND HIREDATE <='19811231'
ORDER BY ENO DESC;


--3. ������ SALESMAN�� ��� �޿�*1.1,CLERK�� ��� �޿�*1.3, MANAGER�� ��� �޿�*1.5�� �ϰ� ��� ������ ����Ͻÿ� (DECODE)
select * from employee;

select eno, ename, job, manager, hiredate, salary, 
    decode(job, 'SALESMAN', salary*1.1,
    'CLERK', salary*1.3, 
    'MANAGER', salary*1.5, 
    salary) �λ�ȱ޿�, commission, dno
FROM EMPLOYEE;



--chap05 �׷��Լ�
--������� �޿� �Ѿ�, ��վ�, �ְ��, �ּҾ�
select sum(salary), round(avg(salary)), max(salary), min(salary)
from employee;

--�ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �Ի��� ����ϱ�.
select max(hiredate), min(hiredate) from employee;

--������� Ŀ�̼� �Ѿ�
select sum(nvl(commission,0)) from employee;
--�׷��Լ��� null ���� �˾Ƽ� ����� �ֱ� ������ nvl�� ������ �ʾƵ� �ȴ�.
select sum(commission) from employee;

--��ä ����� �� ���ϱ�.
select count(*) as "����� ��" from employee;
--Ŀ�̼��� �޴� ��� �� ���ϱ�
--null ���� �˾Ƽ� ���شٴ� ����� ��������!
select count(commission) as "Ŀ�̼� �޴� ��� ��" from employee;
--����
select count(*) as "����� ��", count(commission) as "Ŀ�̼� �޴� ��� ��" from employee;

-- ���� ������ ����ϱ�
select distinct job from employee;
-- ���� ������ ������ ����ϱ�
select count(distinct job) "���� ������ ����" from employee;


--�̷��� �ϸ� �����߻�. �׷��� ����ϱ� ���ؼ� �׷�
select ename, max (salary) from employee;
--���߿� ����Ŀ������ �� ���� �ϴ� �� ���

-- �Ҽ� �μ��� ��� �޿��� �μ���ȣ�� �Բ� ����ϱ�.
select dno as �μ���ȣ, round(avg(salary)) �޿����
from employee
group by dno;
--�̷��� �μ���ȣ ���� �� ���̶�� ���� �����༭ �׷�ȭ�� �� ����� (????

--�Ҽ� �μ��� �μ��� �������� ����ִ��� ī���� �� �� �ִ� �� ���� ���������� job�� �׷�ȭ �ؾ����� ����� �� �ִ�.
select dno as �μ���ȣ, job, count(*), round(avg(salary)) �޿����
from employee
group by dno, job;


--�޿� �Ѿ��� 5000�� �Ѵ� ���޿� ���ؼ� �����ް� �޿� �Ѿ��� ǥ���ϵ������� MANAGER�� ����� ���ܽ�Ų �� �޿� �Ѿ׿� ���� ����.

SELECT JOB, COUNT(*), SUM (SALARY)
FROM EMPLOYEE
WHERE JOB not like '%MANAGER%'
-- �׷��ռ��� WHERE ���ǿ��� �� �� ����. �׷��� ������ �ڿ� HAVING ���� �־ �ݿ��Ѵ�.
group by job
HAVING SUM(SALARY) >= 5000
ORDER BY SUM(salary);

--�������� �׷쿡�� �̷��� ��Ƽ� �ϴ� ���� ������ �����Ѵ�. ȣ


--chap 05 ����
--01 ��� ����� �޿� �ְ��, ������, �Ѿ� �� ��� �޿��� ����Ͻÿ�. 
--Į���� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��տ� ���ؼ� ������ �ݿø��Ͻÿ�
select max(salary) Maximum, min(salary) Minimum, sum(salary) Sum, round(avg(salary)) Average
from employee;


--02 �� ��� ���� �������� �޿� �ְ��, ������, �Ѿ� �� ��վ��� ����Ͻÿ�. 
--Į���� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��տ� ���ؼ��� ������ �ݿø��Ͻÿ�
SELECT JOB, max(salary) Maximum, min(salary) Minimum, sum(salary) Sum, round(avg(salary)) Average
FROM EMPLOYEE
GROUP BY JOB;

--03 COUNT(*) �Լ��� �̿��Ͽ� ��� ������ ������ ��� ���� ����Ͻÿ�
SELECT JOB, COUNT(JOB) "���Ͼ��� �ο���"
FROM EMPLOYEE
GROUP BY JOB ;

--04 MANAGER ���� �����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�
SELECT * FROM EMPLOYEE;
SELECT COUNT(JOB)
FROM EMPLOYEE
WHERE JOB = 'MANAGER';

--������ ���°� ��� ������ ������ ���� �𸣰ڳ�
SELECT COUNT(MANAGER)
FROM EMPLOYEE;

--����
SELECT COUNT(distinct MANAGER)
FROM EMPLOYEE;

--05 �޿� �ְ��, �޿� �������� ������ ����Ͻÿ�. Į���� ��Ī�� ��� ȭ��� �����ϰ� �����Ͻÿ�.
SELECT MAX(SALARY)-MIN(SALARY) DIFFRENCE
FROM EMPLOYEE;

--06 ���޺� ����� ���� �޿��� ����Ͻÿ�. 
--�����ڸ� �� �� ���� ��� �� ���� �޿��� 2000�̸��� �׷��� ���ܽ�Ű�� ����� �޿��� ���� ������������ �����Ͽ� ����Ͻÿ�

SELECT JOB, MIN(SALARY)
FROM EMPLOYEE
WHERE  MANAGER IS NOT NULL
GROUP BY JOB
having min(salary)>2000
ORDER BY MIN(SALARY)DESC;

--PRESIDENT �� MANAGER�� �� �� �����ʳ�? ���ݾ�.

SELECT JOB, MIN(SALARY)
FROM EMPLOYEE
WHERE SALARY>2000 
GROUP BY JOB
ORDER BY MIN(SALARY)DESC;

-- 07 �� �μ��� ���� �μ���ȣ, �����, �μ� �� ��� ����� ��� �޿��� ����Ͻÿ�.
--Į���� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��� �޿��� �Ҽ��� �Ѥ��ڸ��� �ݿø��Ͻÿ�.
SELECT * FROM EMPLOYEE;
SELECT DNO, COUNT(DNO) as "Number of People", ROUND(AVG(SALARY),2) as "Salary"
FROM EMPLOYEE
GROUP BY DNO
ORDER BY DNO;


select * from department;


--08�� �� �μ��� ���� �μ���ȣ �̸�, ������, �����, �μ����� ��� ����� ��� �޿��� ����Ͻÿ�.
--�÷��� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��� �޿��� ������ �ݿø��Ͻÿ�.
SELECT Decode(dno, 10, 'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES', 40, 'OPERARIONS') Dname,
    Decode(dno, 10, 'NEW YORK', 20, 'DALLAS', 30, 'CHICAGO', 40, 'BOSTON') Location,
 COUNT(dno)"Number of People", ROUND(AVG(SALARY)) FROM EMPLOYEE
GROUP BY dno;
select * from employee;
--���� �̰�

--09�� ������ ǥ���� ���� �ش� ������ ���� �μ���ȣ�� �޿� �� �μ� 10,20,30�� �޿� �Ѿ��� ���� ����Ͻÿ�.
--�� �÷��� ��Ī�� ���� JPB, �μ� 10, �μ� 20, �μ� 30, �Ѿ����� �����ÿ�
SELECT job, dno, Decode(dno, 10, sum(salary), 0) as "�μ� 10", Decode(dno, 20, sum(salary), 0), Decode(dno, 30, sum(salary), 0) ,sum(salary)
from employee
GROUP BY job, dno
order by dno;








--����
--1. �����Լ�
--1.1 ��ҹ��� ��ȯ�Լ�
--upper('----'): �빮�� ��ȯ
select upper('abc') from dual;
select upper(ename) from employee;
--lower('---'): �ҹ��� ��ȯ
select lower('ABC') from dual;
select lower(ename) from employee;
--initcap('----') �ձ��ڸ� �빮�ڷ��ϰ� ������ ���ڴ� �ҹ��ڷ� ��ȯ�Ѵ�.
select initcap('aASDas��dWE') FROM DUAL;
select initcap(ename) from employee;
--�ѱ� ������ �� �߱�� �Ѿ

--1.2 ������ ���̸� ��ȯ�ϴ� �Լ�
select length('Oracle mania')
       , length('���ѹα� ����')
       , lengthb('Oracle mania')
       , lengthb('���ѹα� ����')
FROM DUAL;
-- length ���� ���� ����, lengthb ����Ʈ�� ���� �׷��� �ѱ�� ġ�� 3����Ʈ���� ���ϱ� 3�� ��.

--1.3 ���� ���� �Լ�
--concat�� 2�� �ۿ� �ȵȴ�.
select concat('oracle', ' oracle') as "concat"
--����Ŭ�� ���ڸ� 1�� ���� ����. 1�� ���ڸ� �����Ͽ� 2������ 2���� �߶�´ٴ� ��.
, substr('oracle mania', 1, 2)
, substr('����Ŭ ���Ͼ�', 1, 2) as "substr"
--substrb�� ����Ʈ�� �߶� �����Ѵ�. 1����Ʈ�� ��������� �����ϰ� �߸��� 2����Ʈ�� �ѱ��� 3�� �Է��ؾ� ��μ� �߶����� �ѱ� �ѱ��ڸ� �ڸ��� ���ؼ� 3 ������ �������� �Ѵ�.
, substrb('oracle mania', 1, 2)
, substrb('����Ŭ ���Ͼ�', 1, 2)
, substrb('����Ŭ ���Ͼ�', 1, 3)
, substrb('����Ŭ ���Ͼ�', 1, 5)
, substrb('����Ŭ ���Ͼ�', 1, 6)
-- ��ġ�� - ������ �Ųٷ� �����ʿ��� �������� ����.
from dual;

select instr('oracle mania', 'a', 1, 1)
, instr('oracle mania', 'a')
--���� ���� �����ϴ�. ������ġ�� ����� �߰��� �Է����� ������ �׳� �����ȴ�.
--�̵� ���������� �߰���ġ�� - �� ġ�� �Ųٷ� ���� �о���� ������ ������ �Է��������� �����ϰ�
--�����ʿ��� �����̴�b �� ������ ���� �����ϰ� ����Ʈ ������ �����Ѵ�.
, instr('oracle mania', 'l', -1, 1)
from dual;


--���� *�� ä�� ���� 10�ڸ��� ���� �����. RPAD�� �̿� ����.
select lpad(salary, 10, '*')
from employee;

--TRIM �Լ�
--TRIM ('-' FROM 'SANTANCE')
--�̷��� �ϸ� ���ٽ� �� �ڿ� �ش��ϴ¤� '-'�� �� ��� �̰� ���� ��������
SELECT 
TRIM('O' FROM ' ORACLE MANIAO ')
FROM DUAL;
--�ƹ��͵� ������ �� �� ���� �߶� ����.
SELECT 
TRIM(' ORACLE MANIAO ')
FROM DUAL;


--2 ���� �Լ�.
-- ROUND �ݿø� �Լ�, TRUNC ���� �Լ�
-- �ش� ��, �ݿø�or������ �ڸ� �̷������� ���ư��µ� �տ� instr�̳� �̳� substr ó�� - ���� �ڿ��� ���� ����.

select round(93.12341, 2)
from dual;

select round(93.12341, -1)
,mod(10,3)
from dual;

--coalesce(n1, n2, n3, n4 ......)
--n1�� null�� �ƴϸ� n1�� �����ϰ� ������. ���� null�̸� n2�� �̵��Ͽ� �տ��� �ߴ� ������ �ݺ��Ͽ� null�� �ƴ� ������ ���ö� ���� �ݺ��Ѵ�.
--���� ���� null�̸� �� null���� �����Ѵ�.
select coalesce(null, null, null)
from dual;




select * from employee;
--ȥ���غ��� ���� 1
select hiredate, substr(hiredate, 1, 2) as "��", substr(hiredate, 4,2)"��"
from employee;

--ȥ���غ��� ���� 2
select *
from employee
where substr(hiredate, 4,2)=04;

--3������
select *
from employee
where mod(eno, 2)=0;

--4������
select to_char(hiredate, 'yy-mon-dy')
from employee;

--5�� ����
select ROUND(sysdate-to_date(20210101, 'YYYY/MM/DD'))
from dual;

--6������
SELECT NVL(MANAGER, 0)
FROM EMPLOYEE;

--7�� ���� 
SELECT JOB, SALARY, DECODE(JOB, 'ANALYST', SALARY+200, 'SALESMAN', SALARY+180, 'MANAGER', SALARY+150, SALARY)
FROM EMPLOYEE;