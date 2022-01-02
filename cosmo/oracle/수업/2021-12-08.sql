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
and e.job not in (select job from employee where dno=30);

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
    UNION
    select salary from employee where ename='SCOTT'
    )
AND ename not in ('MARTIN', 'SCOTT');
--�� ���� ���°�
select eno, ename, salary
from employee
where salary in (select salary from employee where ename in ('MARTIN', 'SCOTT'))
AND ename not in ('MARTIN', 'SCOTT');


/*12��. �޿��� 30�� �μ��� �ְ� �޿����� ���� �����
�����ȣ, �̸�, �޿��� ����϶�.  (subquery)*/
SELECT ENO, ENAME, salary
from employee
where salary>(select max(salary) from employee where dno=30 group by dno);
--�׷��� �����൵ ��
SELECT ENO, ENAME, salary
from employee
where salary>(select max(salary) from employee where dno=30);

/*13��. �޿��� 30�� �μ��� ���� �޿����� ���� ����� 
�����ȣ, �̸�, �޿��� ����϶�.  (subquery)*/
select eno, ename, salary
from employee
where salary>(select min(salary) from employee where dno=30 group by dno);

/*14��. EMP ���̺��� �μ� �ο��� 4���� ���� �μ��� 
�μ���ȣ, �ο���, �޿��� ���� ����϶�. (HAVING)*/
select dno, count(*), sum(salary)
from employee
group by dno
having count(*)>4;

/*15��. EMP ���̺��� ���� ���� ����� �����ִ� 
�μ���ȣ�� ������� ����϶�.(HAVING)*/
select dno, count(*)
from employee
group by dno
having count(*) = (select max(count(*)) from employee group by dno);

/*16��. EMP ���̺��� ���� ���� ����� ���� MGR�� 
�����ȣ�� ����϶�.(HAVING)*/
select eno
from employee
where eno=(select manager from employee group by manager having count(*)=5);

select eno
from employee
where eno=(select manager from employee group by manager having count(*)=(select max(count(*)) from employee group by manager));


/*17��. EMP(employee) ���̺��� �μ���ȣ�� 10�� ������� �μ���ȣ�� 30�� ������� ���� ����϶�.( COUNT(DECODE(~  )

18��. EMP ���̺��� �����ȣ�� 7521�� ����� ������ ���� �����ȣ�� 7934�� ����� �޿�(SAL)���� 
         ���� ����� �����ȣ, �̸�, ����, �޿��� ����϶�.  (subquery)

19��. ����(JOB)���� �ּ� �޿��� �޴� ����� ������ �����ȣ, �̸�, ����, �μ����� ����϶�.  (subquery + group �Լ�)

20��. �� ��� �� �ñ��� ����Ͽ� �μ���ȣ, ����̸�, �ñ��� ����϶�.
      ( ����1. �Ѵ� �ٹ��ϼ��� 20��, �Ϸ� �ٹ��ð��� 8�ð��̴�. 
        ����2. �ñ��� �Ҽ� �� ��° �ڸ����� �ݿø��Ѵ�.
        ����3. �μ����� �������� ����,  ����4. �ñ��� ���� ������ ��� )    (����� + �Լ�)

21��. �� ��� �� Ŀ�̼��� 0 �Ǵ� NULL�̰� �μ���ġ�� ��GO���� ������ ����� ������ 
      �����ȣ, ����̸�, Ŀ�̼�, �μ���ȣ, �μ���, �μ���ġ�� ����϶�.  ( Ŀ�̼��� NULL�̸� 0���� ��� )

22��. �� �μ� �� ��� �޿��� 2000 �̻��̸� �ʰ�, �׷��� ������ �̸��� ����϶�.  (�׷��Լ� CASE WHEN ���)
             (����> CASE WHEN AVG(salary) > 2000 THEN '�ʰ�'  )

23��. �� �μ� �� �Ի����� ���� ������ ����� �� �� ������ �����ȣ, �����, �μ���ȣ, �Ի����� ����϶�. (�׷��Լ�)
*/


/*17�� EMP ���̺��� �μ���ȣ�� 10�� ������� �μ���ȣ��30�� 
������� ���� ����϶�*/
SELECT COUNT(DECODE(DNO, 10, 1)) as "10�� ��� ��", COUNT(DECODE(DNO, 30, 1)) as "30�� ��� ��"
FROM EMPLOYEE;


/*18��. EMP ���̺��� �����ȣ�� 7521�� ����� ������ ���� �����ȣ�� 7934�� ����� �޿�(SAL)���� 
         ���� ����� �����ȣ, �̸�, ����, �޿��� ����϶�.  (subquery)*/
SELECT eno, ename, job, salary
from employee
where job=(select job from employee where eno=7521) and salary>(select salary from employee where eno=7934);

/*19��. ����(JOB)���� �ּ� �޿��� �޴� ����� ������ 
�����ȣ, �̸�, ����, �μ����� ����϶�.  (subquery + group �Լ�)*/
select e.eno, e.ename, e.job, d.dname, e.salary
from employee e natural join department d
where (job, salary) in (select job , min(salary) from employee group by job);

/*20��. �� ��� �� �ñ��� ����Ͽ� 
�μ���ȣ, ����̸�, �ñ��� ����϶�.
      ( ����1. �Ѵ� �ٹ��ϼ��� 20��, �Ϸ� �ٹ��ð��� 8�ð��̴�. 
        ����2. �ñ��� �Ҽ� �� ��° �ڸ����� �ݿø��Ѵ�.
        ����3. �μ����� �������� ����, 
        ����4. �ñ��� ���� ������ ��� )    (����� + �Լ�)*/
select eno, dno,ename, round(((salary/20)/8), 1)
from employee
order by dno, round(((salary/20)/8), 1) desc;

/*21��. �� ��� �� Ŀ�̼��� 0 �Ǵ� NULL�̰� �μ���ġ�� ��GO���� ������ ����� ������ 
      �����ȣ, ����̸�, Ŀ�̼�, �μ���ȣ, �μ���, �μ���ġ�� ����϶�.  ( Ŀ�̼��� NULL�̸� 0���� ��� )*/
select e.eno, e.ename, nvl(e.commission, 0), dno, d.dname, d.loc
from employee e natural join department d
where (e.commission IS NULL or e.commission=0) and d.loc like '%GO';

/*22��. �� �μ� �� ��� �޿��� 2000 �̻��̸� �ʰ�, �׷��� ������ �̸��� ����϶�.  (�׷��Լ� CASE WHEN ���)
             (����> CASE WHEN AVG(salary) > 2000 THEN '�ʰ�'  )*/
select dno,case when avg(salary)>=2000 then '�ʰ�'
                when avg(salary)<2000 then '�̸�'
                end
from employee
group by dno;

/*23��. �� �μ� �� �Ի����� ���� ������ ����� �� �� ������ 
�����ȣ, �����, �μ���ȣ, �Ի����� ����϶�. (�׷��Լ�)*/
select eno, ename, dno, hiredate
from employee
where (dno, hiredate) in (select dno, min(hiredate) from employee group by dno) ;




---############################################�����###################


/*24��. 1980��~1982�� ���̿� �Ի�� �� �μ��� ������� �μ���ȣ, �μ���, �Ի�1980, �Ի�1981, �Ի�1982�� ����϶�. (�׷��Լ�)
25��. 1981�� 5�� 31�� ���� �Ի��� �� Ŀ�̼��� NULL�̰ų� 0�� ����� Ŀ�̼��� 500���� �׷��� ������
      ���� Ŀ�̼��� ����϶�.(DECODE)
26��. 1981�� 6�� 1�� ~ 1981�� 12�� 31�� �Ի��� �� �μ����� SALES�� ����� �μ���ȣ, �����, ����, �Ի����� ����϶�.
        ����1. �Ի��� �������� ����    
27��. "����ð�"�� ���� �ð����κ��� "�ѽð���"�� �ð��� ����϶�.
       ����1. "����ð�" ������ ��4�ڸ���-2���Ͽ�-2�ڸ��� 24��:2�ڸ���:2�ڸ��ʡ��� ���
       ����2. "�ѽð���" ������ ��4�ڸ���-2���Ͽ�-2�ڸ��� 24��:2�ڸ���:2�ڸ��ʡ��� ��� 
28��. �� �μ��� ������� ����϶�. (group by  dno, dname)  (����. �μ�����  �ƿ��� ���� �����Ұ�)
       ����1. �μ��� ������� ������ �μ���ȣ, �μ����� ���   decode(count(
       ����2. �μ��� ������� 0�� ��� �������� ���
       ����3. �μ���ȣ �������� ����
29. ��� ���̺��� �� ����� �����ȣ, �����, �Ŵ�����ȣ, �Ŵ������� ����϶�.
       ����1. �� ����� �޿�(SAL)�� �Ŵ��� �޿����� ���ų� ����.
30. ������� ù ���ڰ� ��A���̰�, ó���� �� ���̿� ��LL���� ���� ����� Ŀ�̼��� COMM2�϶�, 
    ��� ����� Ŀ�̼ǿ� COMM2�� ���� ����� �����, commission, COMM2, COMM+COMM2�� ����϶�.
31. �� �μ����� 1981�� 5�� 31�� ���� �Ի����� �μ���ȣ, �μ���, �����ȣ, �����, �Ի����� ����Ͻÿ�.
     ����1. �μ��� ��������� ������ �μ���ȣ, �μ����� ���
     ����2. �μ���ȣ �������� ����
     ����3. �Ի��� �������� ����
     24��. 1980��~1982�� ���̿� �Ի�� �� �μ��� ������� �μ���ȣ, �μ���, �Ի�1980, �Ի�1981, �Ի�1982�� ����϶�. (�׷��Լ�)
25��. 1981�� 5�� 31�� ���� �Ի��� �� Ŀ�̼��� NULL�̰ų� 0�� ����� Ŀ�̼��� 500���� �׷��� ������
      ���� Ŀ�̼��� ����϶�.(DECODE)
26��. 1981�� 6�� 1�� ~ 1981�� 12�� 31�� �Ի��� �� �μ����� SALES�� ����� �μ���ȣ, �����, ����, �Ի����� ����϶�.
        ����1. �Ի��� �������� ����    
27��. "����ð�"�� ���� �ð����κ��� "�ѽð���"�� �ð��� ����϶�.
       ����1. "����ð�" ������ ��4�ڸ���-2���Ͽ�-2�ڸ��� 24��:2�ڸ���:2�ڸ��ʡ��� ���
       ����2. "�ѽð���" ������ ��4�ڸ���-2���Ͽ�-2�ڸ��� 24��:2�ڸ���:2�ڸ��ʡ��� ��� 
28��. �� �μ��� ������� ����϶�. (group by  dno, dname)  (����. �μ�����  �ƿ��� ���� �����Ұ�)
       ����1. �μ��� ������� ������ �μ���ȣ, �μ����� ���   decode(count(
       ����2. �μ��� ������� 0�� ��� �������� ���
       ����3. �μ���ȣ �������� ����
29. ��� ���̺��� �� ����� �����ȣ, �����, �Ŵ�����ȣ, �Ŵ������� ����϶�.
       ����1. �� ����� �޿�(SAL)�� �Ŵ��� �޿����� ���ų� ����.
30. ������� ù ���ڰ� ��A���̰�, ó���� �� ���̿� ��LL���� ���� ����� Ŀ�̼��� COMM2�϶�, 
    ��� ����� Ŀ�̼ǿ� COMM2�� ���� ����� �����, commission, COMM2, COMM+COMM2�� ����϶�.
31. �� �μ����� 1981�� 5�� 31�� ���� �Ի����� �μ���ȣ, �μ���, �����ȣ, �����, �Ի����� ����Ͻÿ�.
     ����1. �μ��� ��������� ������ �μ���ȣ, �μ����� ���
     ����2. �μ���ȣ �������� ����
     ����3. �Ի��� �������� ����
30��, 30.7��=30��)

*/

    /*1980~1982�� ���̿� �Ի�� �� �μ��� 
    ������� �μ���ȣ �μ��� �Ի� 1980, �Ի� 1981, �Ի� 1982�� ����϶�*/
    select e.dno, d.dname
        ,count(decode(to_char(e.hiredate, 'YYYY'), '1980', 0)) AS "�Ի�1980"
        ,count(decode(to_char(e.hiredate, 'YYYY'), '1981', 0)) AS "�Ի�1981"
        ,count(decode(to_char(e.hiredate, 'YYYY'), '1982', 0)) AS "�Ի�1982"
    from employee e, department d
    where e.dno=d.dno
    and e.hiredate between to_date(19800101) and to_date(19821231)
    group by E.dno, d.dname;
/*25��. 1981�� 5�� 31�� ���� �Ի��� �� Ŀ�̼��� NULL�̰ų� 0�� ����� Ŀ�̼��� 500���� �׷��� ������
      ���� Ŀ�̼��� ����϶�.(DECODE)*/
select ename, decode(commission, 0, 500, null, 500, commission), hiredate
from employee
where hiredate>'1981/05/31';
      
/*26��. 1981�� 6�� 1�� ~ 1981�� 12�� 31�� �Ի��� �� �μ����� SALES�� 
����� �μ���ȣ, �����, ����, �Ի����� ����϶�.
        ����1. �Ի��� �������� ���� */
    
select dno, ename, job, hiredate
from employee
where (hiredate>='1981/06/01' and hiredate<'1981/12/31') and dno=(select dno from department where dname='SALES')
ORDER BY HIREDATE;

    /*27��. "����ð�"�� ���� �ð����κ��� "�ѽð���"�� �ð��� ����϶�.
           ����1. "����ð�" ������ ��4�ڸ���-2���Ͽ�-2�ڸ��� 24��:2�ڸ���:2�ڸ��ʡ��� ���
           ����2. "�ѽð���" ������ ��4�ڸ���-2���Ͽ�-2�ڸ��� 24��:2�ڸ���:2�ڸ��ʡ��� ��� */
    select to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS') ����ð�
        , to_char(sysdate+1/24, 'YYYY-MM-DD HH24:MI:SS') �ѽð���
    FROM DUAL;

    /*28��. �� �μ��� ������� ����϶�. (group by  dno, dname)  (����. �μ�����  �ƿ��� ���� �����Ұ�)
           ����1. �μ��� ������� ������ �μ���ȣ, �μ����� ���   decode(count(
           ����2. �μ��� ������� 0�� ��� �������� ���
           ����3. �μ���ȣ �������� ����*/
    SELECT D.DNO, D.DNAME, DECODE(count(E.ENO), 0, '����', COUNT(E.ENO))
    FROM EMPLOYEE e, department d
    where e.dno(+)=d.dno
    group by D.dno, d.dname
    ORDER BY D.DNO;
    select * from employee;
    select * from department;
/*29. ��� ���̺��� �� ����� �����ȣ, �����, �Ŵ�����ȣ, �Ŵ������� ����϶�.
       ����1. �� ����� �޿�(SAL)�� �Ŵ��� �޿����� ���ų� ����.*/
select e.eno, e.ename, e.salary, e.manager, m.ename, m.salary
from employee e, employee m
where e.manager=m.eno
and e.salary>=m.salary;

/*30. ������� ù ���ڰ� ��A���̰�, ó���� �� ���̿� ��LL���� ���� ����� Ŀ�̼��� COMM2�϶�, 
    ��� ����� Ŀ�̼ǿ� COMM2�� ���� ����� �����, commission, COMM2, COMM+COMM2�� ����϶�.*/
select commission, (select commission from employee where ename like 'A%' and ename like '%LL%') AS "COMM2"
    , NVL(commission,0)+(select commission from employee where ename like 'A%' and ename like '%LL%') AS "COMM+COMM2"
FROM EMPLOYEE;

    /*31. �� �μ����� 1981�� 5�� 31�� ���� �Ի����� �μ���ȣ, �μ���, �����ȣ, �����, �Ի����� ����Ͻÿ�.
         ����1. �μ��� ��������� ������ �μ���ȣ, �μ����� ���
         ����2. �μ���ȣ �������� ����
         ����3. �Ի��� �������� ����*/
    select D.dno, d.dname, e.eno, e.ename, e.hiredate
    from employee e, department d
    where e.dno(+)=d.dno
    and hiredate>'81/05/31'
    order by D.dno, e.hiredate;
    select * from department
-- ON�� ���� �߶� ����
select d.dno, d.dname, e.eno, e.ename, e.hiredate
from employee e RIGHT OUTER JOIN department d
ON e.dno = d.dno
and to_char(e.hiredate, 'YYYYMMDD')> '19810531'
order by d.dno, e.hiredate;

    
/**/



select D.dno, d.dname, e.eno, e.ename, e.hiredate
    from employee e, department d
    where e.dno(+)=d.dno
    and hiredate>'81/05/31'
    order by D.dno, e.hiredate;
    
    
    
    
    
    
    
    
    


