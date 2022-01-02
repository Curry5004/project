select distinct dno from employee;

select eno, ename, salary, nvl(commission, 0) as commission, salary * 12 + nvl(commission, 0) ���� from employee;

select * from dual;

select sysdate from dual;

select eno, ename, salary from employee
where salary=1500;

select * from employee
where dno = 10;

select * from employee where ename = 'SCOTT';

SELECT * FROM EMPLOYEE WHERE HIREDATE <= '1981/01/01';

SELECT * FROM EMPLOYEE
WHERE dno = 10 and job='MANAGER';

select * from employee
where dno = 10 or job ='MANAGER';

SELECT * FROM EMPLOYEE
WHERE NOT DNO = 10;

SELECT * FROM EMPLOYEE
WHERE DNO <> 10;

SELECT * FROM EMPLOYEE
WHERE DNO != 10;

--   
SELECT * FROM EMPLOYEE
WHERE SALARY >= 1000 AND SALARY <= 1500;

SELECT * FROM EMPLOYEE
WHERE SALARY BETWEEN 1000 AND 1500;

SELECT * FROM EMPLOYEE
WHERE SALARY < 1000 OR SALARY >  1500;

SELECT * FROM EMPLOYEE
WHERE SALARY NOT BETWEEN 1000 AND 1500;

 -- 1982�⿡ �Ի��� ��� ����ϱ�
 SELECT * FROM EMPLOYEE
 WHERE hiredate between '1982/01/01' and '1982/12/31';
 
 
select * from employee;

-- Ŀ�̼��� 300 �̰ų� 500�̰ų� 1400�� ��� ����ϱ�
SELECT * FROM EMPLOYEE
 WHERE COMMISSION = 300 OR COMMISSION=500 OR COMMISSION = 1400;
 
 -- IN ������ IN (A, B, C)
 SELECT * FROM EMPLOYEE
 WHERE COMMISSION IN (300, 500, 1400);
 
-- �̸��� F�� �����Ѵ� ��� ����ϱ�
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE 'F%';
 
 SELECT * FROM EMPLOYEE
WHERE ENAME = 'F';

-- �̸� �߰��� M �� ���ԵǾ��ִ� ��� ����ϱ�
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%M%';
 
-- �̸��� N ���� ������ ��� ����ϱ�
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%N';
 
--�̸��� �ι�° ���ڰ� A�� ��� ����ϱ�
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '_A%';
 
-- �̸��� �� ��° ���ڰ� A�� ��� �˻��ϱ�
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '__A%';

-- �̸��� A�� ���� ��� ����ϱ�
SELECT * FROM EMPLOYEE
WHERE ENAME NOT LIKE '%A%';

SELECT * FROM EMPLOYEE
WHERE COMMISSION = null ;

SELECT * FROM EMPLOYEE
WHERE COMMISSION is null;

SELECT * FROM EMPLOYEE
WHERE COMMISSION is not null;

SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC ;

SELECT * FROM EMPLOYEE
ORDER BY ENAME;

SELECT * FROM EMPLOYEE
ORDER BY HIREDATE DESC;

SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC, ENAME ASC;

-- ȥ���غ���
--1 
SELECT ENAME, SALARY, SALARY + 300
  FROM EMPLOYEE;
--2 ����� �̸��� �޿��� �����Ѽ����� �Ѽ����� ���� �ͺ��� ���� ������ �Ƿ��Ͻÿ�. 
-- �����Ѽ����� ���޿� 12��  ���� �� $100 ���ؼ� 
SELECT ENAME, SALARY, SALARY * 12 + 100 �����Ѽ���
FROM EMPLOYEE
ORDER BY SALARY * 12 + 100 DESC;

--3.  �޿��� 2000�� �Ѵ»���� �̸����޿��� -�޿��� ���� �ͺ��� ���� ����������Ͻÿ� 
SELECT ENAME, SALARY
  FROM EMPLOYEE
 WHERE SALARY > 2000
 ORDER BY SALARY DESC;
-- 4. �����ȣ�� 7788�� ����� �̸����μ���ȣ�� ����Ͻÿ� 
SELECT ENAME, DNO
  FROM EMPLOYEE 
 WHERE ENO = 7788;
-- 5. �޿��� 2000���� 3000 ���̿� ���Ե��� �ʴ� ����� �̸��� �޿��� ����Ͻÿ�.
SELECT ENAME, SALARY
  FROM EMPLOYEE
 WHERE SALARY NOT BETWEEN 2000 AND 3000;
-- 6. 1981 �� �� 20�� ���� 1981 �� 5�� 1�� ���̾�| �Խ��ѻ���� �̸��� ��� ������ �Ի����� �Ƿ��Ͻÿ�. 
SELECT ENAME, JOB, HIREDATE
  FROM EMPLOYEE
 WHERE HIREDATE BETWEEN '81/02/20' AND '81/05/01';
-- 7. �μ� ��ȣ�� 20 �� 30�� ���� ����� �̸��� �μ���ȣ�� ����ϵ�| 
-- �̸��� ����{����ġ��)���� ������������ ����Ͻÿ� 
SELECT ENAME, DNO
  FROM EMPLOYEE
 WHERE DNO IN (20, 30)
 ORDER BY ENAME DESC;
--8 ����� �޿��� 2000���� 3000 ��-0 �� ���Եǰ� �μ���ȣ�� 20 �Ǵ� 30�� ����� �̸��� �޿��� �μ���ȣ�� 
-- ����ϵ� �̸� (����ġ��)���� ����Ͻÿ�. 
SELECT ENAME, SALARY, DNO
  FROM EMPLOYEE
 WHERE SALARY BETWEEN 2000 AND 3000
   AND DNO IN (20, 30)
 ORDER BY ENAME;
-- 9.1981 �⵵�� �Ի��� ����� �̸��� �Ի����� ����Ͻÿ�(like ������ ���ϵ�ī�� ���). 
SELECT ENAME, HIREDATE
  FROM EMPLOYEE
 WHERE HIREDATE LIKE '81%';
 
 -- 10. �����ڰ� ���»���� �̸��� ��� ����������Ͻÿ�. 
 SELECT ENAME, JOB
   FROM EMPLOYEE
  WHERE MANAGER IS NULL;
  
 -- 11 Ŀ�̼��� ���� �� �ִ� �ڰ��� ��|�� ����� �̸��� �޿��� Ŀ�̼��� ����ϵ� 
-- �޿� �� Ŀ�̼��� �������� �������������Ͽ� ǥ���Ͻÿ�  
SELECT ENAME, SALARY, COMMISSION
  FROM EMPLOYEE 
 WHERE COMMISSION IS NOT NULL
 ORDER BY SALARY DESC, COMMISSION DESC;
 
 -- 12. �̸��� �� ��° ���ڰ� �� ����� �̸��� ǥ���Ͻÿ� 
SELECT ENAME
  FROM EMPLOYEE
 WHERE ENAME LIKE '__R%';
 
 -- 13. �̸��� A �� E �� ��� �����ϰ� �ִ½ÿ��� �̸���ǥ���Ͻÿ�. 
 SELECT ENAME
   FROM EMPLOYEE
  WHERE ENAME LIKE '%A%' 
    AND ENAME LIKE '%E%';
 -- 14. ��� ������ �繫��(CLERK) �Ǵ� �������(SALESMAN)OI�鼭 
-- �޿��� $1600. $950 �Ǵ� $1300 01 �ƴ� ����� �̸��� ��� ������ �޿�������Ͻÿ� 
SELECT ENAME, JOB, SALARY
  FROM EMPLOYEE
 WHERE JOB IN('CLERK', 'SALAESMAN') 
   AND SALARY NOT IN (1600, 950, 1300);
-- 15  Ŀ�̼��� $500 �̻��� ����� �̸��� �޿� �� Ŀ�̼��� ����Ͻÿ�. 
SELECT ENAME, SALARY, COMMISSION
  FROM EMPLOYEE
 WHERE COMMISSION >= 500;
 
 
 1. �μ���ȣ 10���� ������� �����ȣ, ����̸�, ������ ����Ͻÿ�.
 SELECT ENO, ENAME, SALARY, DNO FROM EMPLOYEE WHERE DNO = 10;
 2. �����ȣ 7369�� ��� �̸�, �Ի���, �μ���ȣ�� ����Ͻÿ�.
 SELECT ENAME, HIREDATE, DNO FROM EMPLOYEE WHERE ENO = 7369;
 3. �����ȣ 7300ũ�� 7400 ����(�̸���) ��� �̸�, �Ի���, �μ���ȣ�� ����Ͻÿ�.
 SELECT ENAME, HIREDATE, DNO FROM EMPLOYEE WHERE ENO > 7300 AND ENO < 7400;
 4. EMPLOYEE ��� ������ (�����ȣ ���� ������������) �˻��Ͻÿ�.
 SELECT * FROM EMPLOYEE ORDER BY ENO DESC;
 5. �̸��� S�� �����ϴ� ��� ����� �����ȣ�� �̸��� ����Ͻÿ�. 
 SELECT * FROM EMPLOYEE WHERE ENAME LIKE 'S%';
 6. ���ӻ�� �����ȣ(MANAGER) �� ���� ����� ��� ������ �˻��Ͻÿ�.
 SELECT * FROM EMPLOYEE WHERE MANAGER IS NULL;
 
 SELECT * 
   FROM NLS_DATABASE_PARAMETERS 
  WHERE PARAMETER = 'NLS_CHARACTERSET';
-- AL32UTF8
-- �����ڵ��� CES���� �� �κ��Դϴ�. 11,172���� �ѱ��� ǥ���մϴ�.(�ѱ� ����Ʈ: 3byte)

-- KO16KSC5601 �ϼ��� �ѱ��Դϴ�. ���� ���� ���˴ϴ�.
-- 2,350���� �ѱ۰� 4,888���� ����, ����, ��ȣ �� ���󰡳�,��Ÿī���� ǥ���մϴ�.(�ѱ� ����Ʈ : 2btye)

-- KO16MSWIN949
-- ������ �ѱ��Դϴ�. �ϼ����� �����Ͽ� 11,172���� �ѱ��� ǥ���մϴ�.(�ѱ� ����Ʈ : 2byte)

1. ��å(JOB)�� SALESMAN, ANALYST�� ����� ��� ������ ����Ͻÿ�. ( or, like, in )

SELECT * FROM EMPLOYEE WHERE JOB LIKE 'SALES%' OR JOB LIKE 'A%';
SELECT * FROM EMPLOYEE WHERE JOB IN ('SALESMAN' ,'ANALYST' );
SELECT * FROM EMPLOYEE WHERE JOB = 'SALESMAN' OR JOB = 'ANALYST';


2. 1981�� 5�� 1�� ~ 1982�� 2�� ���̿� �Ի��� ������� ��� ������ �μ���ȣ��(��������)���� �˻��Ͻÿ� 
SELECT * FROM EMPLOYEE WHERE HIREDATE BETWEEN '81/05/01' AND '82/02/28' ORDER BY DNO;

3. 1981�⿡ �Ի��� ����� �̸��� �����ȣ�� ����ϴµ� �����ȣ�� ������������ �����Ͻÿ�.
SELECT ENAME, ENO FROM EMPLOYEE WHERE HIREDATE LIKE '81%' ORDER BY ENO DESC;

4. ������ SALESMAN�� ����� �޿��λ�����( �޿� * 1.1 )�� �ؼ� �̸��� �Ի��ϣ� �޿�������Ͻÿ� 
SELECT ENAME, HIREDATE, SALARY*1.1 AS SALARY FROM EMPLOYEE WHERE JOB = 'SALESMAN';

5. ��� ����鿡�� Ŀ�̼��� 200�� �߰��Ͽ� ����̸�, Ŀ�̼� ���� ����Ͻÿ�. 
SELECT ENAME, NVL(COMMISSION, 0) + 200 FROM EMPLOYEE;
 
/*NVL(column, ������) : column�� ���� NULL�̸� �������� ��ȯ.
NVL2(column, ������1, ������2) : column�� ���� NULL�� �ƴϸ� ������1�� ��ȯ column�� ���� NULL�̸� ������2�� ��ȯ.
*/
6.  Ŀ�̼��� ������ �ִ� ����� Y, Ŀ�̼��� NULL���� ����� N�� �����Ͽ� ����̸��� Ŀ�̼� ���� ����Ͻÿ�.( nvl2 ) 
SELECT ENAME, NVL2(COMMISSION, 'Y', 'N'), COMMISSION FROM EMPLOYEE;

7. 1981�� �Ի��ڵ��� ����ӱ�(AVG(salary))�� ����Ͻÿ� 
SELECT AVG(SALARY) FROM EMPLOYEE WHERE HIREDATE LIKE '81%';

8. �����ȣ, ����̸�, �� �޿�(salary+commission)�� ����Ͻÿ�. (commission ��ó��) 
SELECT ENO, ENAME, SALARY + NVL(COMMISSION, 0) FROM EMPLOYEE;
 


 
 
 
 
 
 
   
 