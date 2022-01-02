17��. EMP(employee) ���̺��� �μ���ȣ�� 10�� ������� �μ���ȣ�� 30�� ������� ���� ����϶�.( COUNT(DECODE(~  )
select count(decode(dno, 10, 0)) as "10�� �����"
     , count(decode(dno, 30, 0)) as "30�� �����" 
  from employee;   
     
18��. EMP ���̺��� �����ȣ�� 7521�� ����� ������ ���� �����ȣ�� 7934�� ����� �޿�(SAL)���� 
         ���� ����� �����ȣ, �̸�, ����, �޿��� ����϶�.  (subquery)
select eno, ename, job, salary
  from employee
 where job = (select job from employee where eno = 7521)
   and salary > (select salary from employee where eno = 7934);

19��. ����(JOB)���� �ּ� �޿��� �޴� ����� ������ �����ȣ, �̸�, ����, �μ����� ����϶�.  (subquery + group �Լ�)
select e.eno, e.ename, e.job, d.dname  
  from employee e, department d
 where e.dno = d.dno
   and salary in (select MIN(salary) from employee group by job);
 
20��. �� ��� �� �ñ��� ����Ͽ� �μ���ȣ, ����̸�, �ñ��� ����϶�.
      ( ����1. �Ѵ� �ٹ��ϼ��� 20��, �Ϸ� �ٹ��ð��� 8�ð��̴�. 
        ����2. �ñ��� �Ҽ� �� ��° �ڸ����� �ݿø��Ѵ�.
        ����3. �μ����� �������� ����,  ����4. �ñ��� ���� ������ ��� )    (����� + �Լ�)
        
select dno
     , ename
     , round( ((salary/20)/8) , 1) �ñ�
  from employee
 order by dno, �ñ� desc;


21��. �� ��� �� Ŀ�̼��� 0 �Ǵ� NULL�̰� �μ���ġ�� ��GO���� ������ ����� ������ 
      �����ȣ, ����̸�, Ŀ�̼�, �μ���ȣ, �μ���, �μ���ġ�� ����϶�.  ( Ŀ�̼��� NULL�̸� 0���� ��� )
select e.eno, e.ename, nvl(e.commission, 0) Ŀ�̼�, e.dno, d.dname, d.loc
  from employee e, department d
 where e.dno = d.dno
   and (e.commission = 0 or e.commission is null)
   and d.loc like '%GO';

22��. �� �μ� �� ��� �޿��� 2000 �̻��̸� �ʰ�, �׷��� ������ �̸��� ����϶�.  (�׷��Լ� CASE WHEN ���)
             (����> CASE WHEN AVG(salary) > 2000 THEN '�ʰ�'  )

select dno
     , CASE WHEN AVG(salary) > 2000 THEN '�ʰ�'
       ELSE '�̸�'
       END   as "2000 �̸� �ʰ�"
  from employee
 group by dno;

23��. �� �μ� �� �Ի����� ���� ������ ����� �� �� ������ �����ȣ, �����, �μ���ȣ, �Ի����� ����϶�. (�׷��Լ�)   
select eno, ename, dno, hiredate 
  from employee
where hiredate in (select min(hiredate) from employee group by dno);


/* ###########################################################  */
24��. 1980��~1982�� ���̿� �Ի�� �� �μ��� ������� �μ���ȣ, �μ���, �Ի�1980, �Ի�1981, �Ի�1982�� ����϶�. (�׷��Լ�)

select e.dno
     , d.dname
     , COUNT(DECODE(TO_CHAR(e.hiredate, 'YYYY'), '1980', 0)) �Ի�1980
     , COUNT(DECODE(TO_CHAR(e.hiredate, 'YYYY'), '1981', 0)) �Ի�1981
     , COUNT(DECODE(TO_CHAR(e.hiredate, 'YYYY'), '1982', 0)) �Ի�1982
  from employee e, department d
 where e.dno = d.dno
   and e.hiredate between to_date(19800101) and to_date(19821231)
 group by e.dno, d.dname;
 
 
25��. 1981�� 5�� 31�� ���� �Ի��� �� Ŀ�̼��� NULL�̰ų� 0�� ����� Ŀ�̼��� 500���� �׷��� ������
      ���� Ŀ�̼��� ����϶�.(DECODE)
  
  select ename
       , commission
       , (commission, null, 500, 0,  500, commission) Ŀ�̼� 
       , hiredate
    from employee
   where hiredate > to_date(19810531);  
      
26��. 1981�� 6�� 1�� ~ 1981�� 12�� 31�� �Ի��� �� �μ����� SALES�� ����� �μ���ȣ, �����, ����, �Ի����� ����϶�.
        ����1. �Ի��� �������� ���� 
        
 select e.dno, e.ename, e.job, e.hiredate         
   from employee e, department d
  where e.dno = d.dno
    and e.hiredate >= TO_DATE(19810601)
    and e.hiredate <= TO_DATE(19811231)
    and d.dname = 'SALES'   
  order by hiredate;
   
27��. "����ð�"�� ���� �ð����κ��� "�ѽð���"�� �ð��� ����϶�.
       ����1. "����ð�" ������ ��4�ڸ���-2���Ͽ�-2�ڸ��� 24��:2�ڸ���:2�ڸ��ʡ��� ���
       ����2. "�ѽð���" ������ ��4�ڸ���-2���Ͽ�-2�ڸ��� 24��:2�ڸ���:2�ڸ��ʡ��� ��� 
 SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') ����ð�
      , TO_CHAR(SYSDATE + 1/24, 'YYYY-MM-DD HH24:MI:SS') �ѽð���
   FROM dual;
       
       
28��. �� �μ��� ������� ����϶�. (group by  dno, dname)  (����. �μ�����  �ƿ��� ���� �����Ұ�)
       ����1. �μ��� ������� ������ �μ���ȣ, �μ����� ���   decode(count(
       ����2. �μ��� ������� 0�� ��� �������� ���
       ����3. �μ���ȣ �������� ����
 
 select d.dno, d.dname
      , DECODE(COUNT(e.eno), 0 ,'����', count(e.eno)) �����
   from department d, employee e
  where d.dno = e.dno(+)
  group by d.dno, d.dname
  order by d.dno;
  
29. ��� ���̺��� �� ����� �����ȣ, �����, �Ŵ�����ȣ, �Ŵ������� ����϶�.
       ����1. �� ����� �޿�(SAL)�� �Ŵ��� �޿����� ���ų� ����.
select e.eno, e.ename, e.manager, m.ename      
  from employee e, employee m
 where e.manager = m.eno 
   and e.salary >= m.salary;
       
30. ������� ù ���ڰ� ��A���̰�, ó���� �� ���̿� ��LL���� ���� ����� Ŀ�̼��� COMM2�϶�, 
    ��� ����� Ŀ�̼ǿ� COMM2�� ���� ����� �����, commission, COMM2, COMM+COMM2�� ����϶�.
  select ename
       , commission
       , (select commission from employee where ename like 'A%LL%') COMM2
       , DECODE(commission, null, 0, commission) +   -- ��� ����� Ŀ�̼�
         (select commission from employee where ename like 'A%LL%') "COMM + COMM2" 
    from employee; 
    
31. �� �μ����� 1981�� 5�� 31�� ���� �Ի����� �μ���ȣ, �μ���, �����ȣ, �����, �Ի����� ����Ͻÿ�.
     ����1. �μ��� ��������� ������ �μ���ȣ, �μ����� ���
     ����2. �μ���ȣ �������� ����
     ����3. �Ի��� �������� ����

 select e.dno, d.dname, e.eno, e.ename, e.hiredate     
   from department d, employee e 
  where d.dno = e.dno(+)    
    and TO_CHAR(e.hiredate, 'YYYYMMDD') > '19810531' 
  order by e.dno, e.hiredate;  
  
select *
 from (
     select e.dno, d.dname, to_char(e.eno, '9999') eno, e.ename, to_char(e.hiredate, 'yyyy-mm-dd') hiredate      
       from department d, employee e 
      where d.dno = e.dno(+)    
        and TO_CHAR(e.hiredate, 'YYYYMMDD') > '19810531' 
        
     union all
     
     select dno, dname, '' eno, ' ' ename,'' hiredate     
     from (
     select d.dno, d.dname
          , DECODE(COUNT(e.eno), 0 ,'����', count(e.eno)) �����
       from department d, employee e
      where d.dno = e.dno(+)
      group by d.dno, d.dname )
    where ����� = '����'
)
order by dno, hiredate;
  
  
  
  
  
  
  
  
  
  
  
     
32. �Ի��Ϸκ��� ���ݱ��� �ٹ������ 30�� �̻��� ����� �����ȣ, �����, �Ի���, �ٹ������ ����϶�.
     ����1. �ٹ������ ���� �������� ���� (��:30.4�� = 30��, 30.7��=30��)

  select eno, ename, hiredate, TRUNC( (SYSDATE - HIREDATE) / 365 ) �ٹ����
   from employee
  where TRUNC( (SYSDATE - HIREDATE) / 365 ) >= 30;
  
  








