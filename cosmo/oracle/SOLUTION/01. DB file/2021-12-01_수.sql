-- ����ó���Լ� :  ��ҹ��� ��ȯ�Լ�
select 'Oracle Mania'
     , UPPER('Oracle Maina')
      , LOWER('Oracle Maina')
       , INITCAP('oracle maina')
from dual;

select ename, lower(ename), job, initcap(job) 
  from employee;
  
select eno, ename, dno 
  from employee
 where lower(ename) = 'scott';
 
 select eno, ename, dno 
  from employee
 where initcap(ename) = 'Scott';
 
 -- ���� ���̸� ��ȯ�ϴ� �Լ�
 select length('OracleMania'), length('����Ŭ�ŴϾ�')
   from dual;
 select lengthb('OracleMania'), lengthb('����Ŭ�ŴϾ�')
   from dual;   
   
-- ���� ó�� �Լ�
select 'Oracle', 'mania', concat('Oracle', 'mania'), 'Oracle' || 'mania'
  from dual;
-- SUBSTR(���, ������ġ, �����Ұ���)  
select substr('Oracle mania', 4, 3) 
     , substr('Oracle mania', -4, 3)
  from dual;
 
-- �̸��� 'N'���� ������ ����� substr �Լ��� �̿��ؼ� ����Ͻÿ�
select * 
  from employee
 where substr(ename, -1, 1) = 'N';
 
-- 87�⵵�� �Ի��� �����   substr �Լ��� �̿��ؼ� ����Ͻÿ�
SELECT *
  FROM EMPLOYEE
 WHERE SUBSTR(HIREDATE, 1, 2) = '87';
 
 SELECT SUBSTR('����Ŭ�ŴϾ�', 3, 4)
      , SUBSTRB('����Ŭ�ŴϾ�', 3, 7)
   FROM DUAL;
 
-- INSTR �Լ� ����
-- INSTR(���,  ã������, �� ��° �߰�) 
SELECT INSTR('Oracle mania', 'a')
  from dual;
  
-- 5 ��°���� �� ��°�� �߰ߵǴ� ��a'�� ��ġ
SELECT INSTR('Oracle mania', 'a', 5, 2)
  from dual;  
  
select INSTR('����Ŭ�ŴϾ�', '��')
     , instrb('����Ŭ�ŴϾ�', '��')
  from dual;
  
--   �̸��� �� ��° �ڸ��� 'R���� ����� �˻��ϴ� �������� 
-- INSTR �Լ��� ����ؼ� ����Ͻÿ�
select * 
  from employee
 where instr(ename, 'R', 3, 1) = 3;
 
 -- ���� �ڸ��� Ư�� ��ȣ�� ä��� 
 select LPAD(salary, 10, '0') || RPAD(ename, 10, ' ') || dno  as rowData
   from employee;

select RPAD(salary, 10, '*')
  from employee;
 
-- ���� �����ϱ� 
select '  Oracle mania   ', LTRIM('  Oracle mania   ')
     , RTRIM('  Oracle mania   ')
     , TRIM('  Oracle mania   ')
     FROM DUAL;
-- ���� �Լ��� ���� �����͸� ó���ϱ� ���� �Լ�
-- ROUND(���, �ڸ���) 
SELECT 98.7654
     ,  ROUND(98.7654)
     , ROUND(98.7654, 2)
     , ROUND(98.7654, -1)
  FROM DUAL;    
-- TRUNC

SELECT 98.7654
     , TRUNC(98.7654)
     , TRUNC(98.7654, 2)
     , TRUNC(98.7654, -1)
  FROM DUAL;   

SELECT MOD(31, 2)
     , MOD(31, 5)
     , MOD(31, 8)
  FROM DUAL;
  
SELECT ENAME, SALARY, MOD(SALARY, 500)
  FROM EMPLOYEE;
-- ��¥ �����͸��ٷ�� �����Լ�
SELECT SYSDATE FROM DUAL;

SELECT SYSDATE-1   ����
     , SYSDATE     ����  
     , SYSDATE+1   ����
  FROM DUAL;
 
SELECT ENAME, ROUND(SYSDATE-HIREDATE) �ٹ��ϼ�
, (SYSDATE-HIREDATE), HIREDATE
, (SYSDATE - (SYSDATE-7))
  FROM EMPLOYEE;
 
SELECT HIREDATE
    , TRUNC(HIREDATE, 'MONTH')
 FROM EMPLOYEE;

SELECT ENAME, HIREDATE, ADD_MONTHS(HIREDATE, 6) 
  FROM EMPLOYEE;
 
 
 -- NEXT_DAY (date, �����ϡ�) 
 SELECT SYSDATE, NEXT_DAY(SYSDATE, '�����')
 FROM DUAL;

-- �Ի��� ���� ������ �����ϱ� 
SELECT ENAME, HIREDATE
     , LAST_DAY(HIREDATE)
  FROM EMPLOYEE;
 
 -- ��¥ �Լ� ����ϱ�
 SELECT ENAME, HIREDATE 
      , TO_CHAR(HIREDATE, 'YY-MM')
      , TO_CHAR(HIREDATE, 'YYYY-MM-DD DAY')
  FROM EMPLOYEE;
 
 SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') FROM DUAL;
 
 
 SELECT ENAME, HIREDATE
   FROM EMPLOYEE
   WHERE HIREDATE = TO_DATE(19810220, 'YYYYMMDD');
   
  SELECT TO_NUMBER('100,000', '999,999')
               - TO_NUMBER('50,000', '999,999')
     FROM  DUAL;
     
   SELECT TO_NUMBER('100000')
               - TO_NUMBER('50000')
     FROM  DUAL;  
     
     select to_number(replace('100,000', ',', '')) from dual;
     
-- �Ϲ��Լ�
SELECT ENAME, SALARY, COMMISSION,
      NVL(COMMISSION, 0),
      SALARY*12+NVL(COMMISSION, 0)
  FROM EMPLOYEE;
-- NVL2( EXPR1, EXPR2, EXPR3)
-- EXPR1 NULL�� �ƴϸ� EXPR2 , NULL �̸� EXPR3
SELECT ENAME, SALARY, COMMISSION,
      NVL2(COMMISSION, SALARY*12+COMMISSION, SALARY*12 )
  FROM EMPLOYEE;

select ename, salary, commission,
        COALESCE(commission, salary, 0)
   from employee
  order by job;
  
-- NULLlF(exprl. expr2) 
--�� ǥ������ ���Ͽ� ������ ��쿡�� NULL�� ��ȯ�ϰ� �������� �� 
-- ���� ù ��° ǥ������ ��ȯ
select NULLIF('A', 'A'), NULLIF('A', 'B')
  from dual;
  
-- DECODE
-- DECODE (ǥ����,  ����1 �� ���1 �� 
--  ����2 �� ���2 �� 
--  ����3 �� ���3 ��  
-- �⺻���  )

select ename, dno, DECODE(dno, 10, 'ACCOUNTING',
                               20, 'RESEARCH',
                               30, 'SALES',
                               40, 'OPERATIONS',
                               'DEFAULT') AS DNAME
 from employee
 order by dno;
 
--  CASE �Լ�   if else�� ���� ����� �� ����
select ename, dno, 
  CASE  WHEN dno=20 THEN 'ACCOUNTING'
       WHEN dno=20 THEN 'RESEARCH'
       WHEN dno=30 THEN 'SALES'
       WHEN dno=40 THEN 'OPERATIONS'
       ELSE 'DEFAULT'
   END AS DNAME
  from employee
 order by dno;
 
 select ename, dno, 
  CASE dno WHEN 10 THEN 'ACCOUNTING'
       WHEN 20 THEN 'RESEARCH'
       WHEN 30 THEN 'SALES'
       WHEN 40 THEN 'OPERATIONS'
       ELSE 'DEFAULT'
   END AS DNAME
  from employee
 order by dno;
 

1. 1981�� 5�� 1�� ~ 1982�� 2�� ���̿� �Ի��� ������� ��� ������ 
�μ���ȣ��(��������)���� �˻��Ͻÿ�.( TO_DATE )

select *
  from employee
 where hiredate >= TO_DATE('19810501', 'YYYYMMDD') 
   and hiredate <= TO_DATE(19820228, 'YYYYMMDD')
 ORDER BY DNO;

2. 1981�⿡ �Ի��� ����� �̸��� �����ȣ�� ����ϴµ� 
�����ȣ�� ������������ �����Ͻÿ�. (�񱳿�����, TO_CHAR)
select ENAME, ENO
  from employee
 where hiredate >= '19810101'
   and hiredate <= '19811231'
 ORDER BY ENO DESC;

select ENAME, ENO
  from employee
 where TO_CHAR(hiredate, 'YYYY') =  '1981'
 ORDER BY ENO DESC;


3. ( ������ SALESMAN �� ��� �޿� * 1.1, CLERK �� ��� �޿� * 1.3
, MANAGER �� ��� �޿� * 1.5 ) - �λ�ȱ޿�  �� �ϰ� 
  eno, job, ename, salary, �λ�ȱ޿� ������ ����Ͻÿ�. ( DECODE )

SELECT eno, job, ename, salary,
  DECODE(job, 'SALESMAN', salary*1.1, 
              'CLERK', salary*1.3, 
              'MANAGER', salary*1.5,
                salary) as �λ�ȱ޿�
    from employee;
  
--  ������� �޿� �Ѿף� ���, �ְ��, �ּҾ�
select sum(salary), round(avg(salary)), max(salary), min(salary)
  from employee;
-- �ֱٿ� �Ի��� ����� ����������� �Խ��� ����� �Ի��� �Ƿ��ϱ� 
select max(hiredate),
       min(hiredate)
  from employee;

-- ������� Ŀ�̼� �Ѿ������
select sum(commission) as "Ŀ�̼� �Ѿ�"
  from employee;
 
--   ��ü ��� �� ���ϱ� 
select count(*) as "����� ��"
  from employee;
  
-- Ŀ�̼� �޴� ����� ���ϱ� 
select count(*) as "��ü����� ��", count(commission) as "Ŀ�̼� �޴� ��� ��"
 from employee;

-- ���� ������ ���� ����ϱ�
select count(distinct job) as "���� ������ ����"
  from employee;
  
  
select * from employee
where hiredate between to_date(19810501) and to_date(19820228) 
;

-- ����
-- select ename, max(salary)
--   from employee;

-- �Ҽ� �μ��� ��å�� ��� �޿��� �μ���ȣ�� �Բ� ����ϱ� 
select dno as �μ���ȣ, job, count(*), round(avg(salary)) as �޿����
  from employee
group by dno, job;

--�޿� �Ѿ��� 5000�� �Ѵ� ���޿� ���ؼ� ���ް� �޿� �Ѿ��� ǥ���ϵ� ������ 
--MANAGER�� ����� ���ܽ�Ų �� �޿� �Ѿ׿� ���� ����
SELECT JOB, COUNT(*), SUM(SALARY)
  FROM EMPLOYEE
 WHERE JOB NOT LIKE '%MANAGER%'
 GROUP BY JOB
HAVING SUM(SALARY) >= 5000
 ORDER BY SUM(SALARY) ;
-- �Ŵ����� �����ϴ� �����
SELECT count(MANAGER)
FROM EMPLOYEE 
WHERE MANAGER IS NOT NULL;
//�Ŵ��� ��
SELECT COUNT(DISTINCT MANAGER) AS "COUNT(MANAGER)"
FROM EMPLOYEE;

-- 1. ��� ����� �޿� �ְ�ף� �����ף� �Ѿ� �� ��� �޿�������Ͻÿ�
-- Į���� ��Ī�� ���ȭ��������ϰ� ���� �ϰ� ��տ� ���ؼ��� ������ �ݿø��Ͻÿ�
select max(salary) Maximum
     , min(salary) Minimum
     , sum(salary) Sum
     , round(avg(salary)) Average
  from employee;

-- 2. �� ��� ���� �������� �޿� �ְ�ף� �ֻ��� �Ѿ� �� ��վ��� ����Ͻÿ�
-- Į���� ��Ī�� ���ȭ��������ϰ� �����ϰ� ��տ� ���ؼ��� ������ �ݿø��Ͻÿ�
select job
     , max(salary) Maximum
     , min(salary) Minimum
     , sum(salary) Sum
     , round(avg(salary)) Average
  from employee
 group by job;
 
-- 3.  count(*) �Լ��� �̿��Ͽ� ��� ������ ������ ��� ���� ����Ͻÿ� 
select job, count(*)
from employee
group by job;

-- 4 �����ڼ��� �����Ͻÿ� Į���� ��Ī�� ���ȭ��������ϰ� �����Ͻÿ� 
select count(manager)
  from employee;
 
select distinct manager
  from employee;

-- 5 �޿� �ְ�ף� �޿� �������� ����������Ͻÿ�. Į���� ��Ī�� ���ȭ��������ϰ� �����Ͻÿ� 
select max(salary) - min(salary) as DIFFERENCE
  from employee;

-- 6 �۱޺� ����� ���� �޿��� ����Ͻÿ� �����ڸ� �� �� ���� ��� �� ���� �޿��� 2000 �̸��� �׷��� ���� 
-- ��Ű�� ������޿��� ���� ����ġ������ �����Ͽ� ����Ͻÿ� 
select job, min(salary)
  from employee
 where manager is not null
 group by job
 having not min(salary)<2000
 order by min(salary) desc;
 
 
-- 7 ���μ��� ���� �μ���ȣ�� ������� �μ� ���� ������� ��� �޿��� ����Ͻÿ� 
-- Į���� ��Ī�� ��� ȭ��� �����ϰ� �����ϰ� ��ձ޿��¼Ҽ��� ��° �ڸ��� �ݿø��Ͻÿ�
select dno
     , count(*) as "Number of People"
     , round(avg(salary), 2) as "Salary"
 from employee
group by dno
order by dno;

-- 8 ���μ��� ���� �μ���ȣ �̸��� ������ ������� �μ����� ��� ����� ��� �޿��� ����Ͻÿ�.
-- Į���� ��Ī��  ���ȭ��� �����ϰ� �����ϰ� ��ձ޿��� ������ �ݿø��Ͻÿ�. 



-- 9 ������ ǥ���� ���� �ش� ������ ���� �μ���ȣ�� �޿� �� �μ� 10 20 30�� �޿��Ѿ��� ���� ����Ͻÿ� 
--�� Į���� ��Ī�� ���� Job�� �μ� 10, �μ� 20, �μ� 30, �Ѿ����� �����Ͻÿ�

select job, dno,  
        decode(dno, 10, sum(salary), 20, 0, 30, 0) as "�μ� 10", 
        decode(dno, 20, sum(salary), 10, 0, 30, 0) as "�μ� 20", 
        decode(dno, 30, sum(salary), 10, 0, 20, 0) as "�μ� 30", 
        sum(salary) as "�Ѿ�" 
 from employee 
 group by job, dno 
order by dno; 
