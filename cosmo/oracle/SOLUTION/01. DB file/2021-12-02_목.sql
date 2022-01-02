SELECT *
  FROM EMPLOYEE, DEPARTMENT
 WHERE EMPLOYEE.DNO = DEPARTMENT.DNO;
 
 -- Equi Join
 -- 7788�� ����� �����ȣ, �̸�, �μ��� ����Ͻÿ�
 SELECT e.ENO, e.ENAME, d.DNAME, d.DNO
   FROM EMPLOYEE e
      , DEPARTMENT d
  WHERE e.DNO = d.DNO
    AND ENO = 7788;
    
select e.eno, e.ename, d.dname, dno
  from employee e natural join department d
 where e.eno = 7788;  /* natural join -> e.DNO = d.DNO ���� ����*/
 
 select e.eno, e.ename, d.dname, dno
   from employee e inner join department d
  using(dno)
  where e.eno=7788;
  
 select e.eno, e.ename, d.dname, e.dno
   from employee e join department d
     on e.dno = d.dno
  where e.eno = 7788;

--Non Equi Join
-- ������� �޿� ��� ����ϱ� 
  
select ename, salary, grade
  from employee, salgrade
 where salary between losal and hisal;

-- 3 ���� ���̺� �����ϱ� 
select e.ename, d.dname, e.salary, s.grade
  from employee e
     , department d
     , salgrade s
 where e.dno = d.dno
   and salary between losal and hisal;


-- self join
select e.eno, e.ename, e.manager
  from employee e;
  
select e.eno, e.ename
  from employee e
 where e.eno = 7902 ;

 select e.eno, e.ename as "����̸�", 
        m.ename  as "���ӻ���̸�"
   from employee e, employee m
  where e.manager = m.eno(+);
  
select e.ename || '�� ���� �����' || nvl(m.ename, ' �����ϴ�')
  from employee e left outer join employee m
on e.manager = m.eno;
  
  
 -- join ~ on ���� ����� self join 
 select e.ename || '�� ���� ����� ' || m.ename
   from employee e join employee m
     on e.manager = m.eno;
  
  select * from employee
  order by eno;
  

 select  e.ename as "Employee", e.eno as "Emp#",
       m.ename  "Manager",   m.eno as "mgr#"
   from employee e, employee m
  where e.manager = m.eno;
  
 -- 1 EQUI ������ ����Ͽ� SCOTT ����� �μ���ȣ�� �μ��̸��� ����Ͻÿ�. 
 SELECT  e.ename, e.dno, d.dname
   FROM employee e, department d 
  WHERE e.dno = d.dno
    AND e.ename ='SCOTT';
 
 -- 2 INNER JOIN�� ON �������� ����Ͽ� ����̸��� �Բ�
 --  �׻���� �Ҽӵ� �μ��̸��� ������ �� ����Ͻÿ�. 
 SELECT ename, d.dname, loc
   FROM employee e join  department d 
    ON e.dno = d.dno;
     
-- 3 INNER JOIN�� USING �����ڸ� ����Ͽ� 10 �� �μ��� ���ϴ� 
-- ��� ��� ������ ���� ���(�� ������ ǥ��)�� �μ��� �������� �����ؼ� ����Ͻÿ� 
 SELECT dno, job, loc
   FROM employee e inner join department d 
  using(dno)
  where dno=10;
  
-- 4 NATURAL JOIN�� ����Ͽ� Ŀ�̼��� �޴� ��� ����� �̸��� �μ��̸��� �������� ����Ͻÿ� 
 SELECT ename, dname, loc--, commission
   FROM employee e natural join department d 
  WHERE commission > 0;
-- 5 EQUI ���ΰ� WildCard������Ͽ� �̸��� A�� ���Ե� ���  ����� �̸��� �μ����� ����Ͻÿ� 
 SELECT e.ename, d.dname
   FROM employee e, department d 
  WHERE e.dno = d.dno
    and e.ename like '%A%';
    
-- 6 NATURAL JOIN�� ����Ͽ� NEW YORK �� �ٹ��ϴ� 
-- ��� ����� �̸��� ������ �μ���ȣ �� �μ����� ����Ͻÿ�
 SELECT ename, job, dno, dname
   FROM employee e natural join department d 
  WHERE d.loc = 'NEW YORK';
  
-- 7 SELF JOIN���ÿ��Ͽ� ����� �̸� �� �����ȣ�� 
--������ �̸� �� ������ ��ȣ�� �Բ� ����Ͻÿ� �ܣ� �� �� �� ��Ī�� ���ȭ��� ������ �Ͻÿ�. 
 SELECT e.ename Employee, e.eno Emp#
      , mgr.ename Manager, mgr.eno Mgr# -- e.manager
   FROM employee e, employee mgr
  WHERE e.manager = mgr.eno;
  
-- 8 OUTER JOIN. SELF JOIN�� ����Ͽ� �����ڰ� ���� ����� �����Ͽ� �����ȣ�� �������� ����ġ�� ���� 
-- �Ͽ� ����Ͻÿ� 
 SELECT e.ename Employee, e.eno Emp#
      , mgr.ename Manager, mgr.eno Mgr# -- e.manager
   FROM employee e, employee mgr
  WHERE e.manager = mgr.eno(+)
  ORDER BY e.eno desc;
  
-- 9 SELF JOIN�� ����Ͽ� ������ ����� �̸��� �μ���ȣ�� �����ѻ���� ������ �μ����� �ٹ��ϴ� ����� ��� 
-- �Ͻÿ� �ܣ� �� ���� ��Ī�� �̸��� �μ���ȣ�� ����� �Ͻÿ� 
 SELECT e.ename �̸�, e.dno �μ���ȣ, other.ename ����
   FROM employee e, employee other 
  WHERE e.dno = other.dno
    and e.ename = 'SCOTT'
    and other.ename != 'SCOTT';
    
    
    SELECT * FROM EMPLOYEE;
    
-- 10 SELF JOIN�� ����Ͽ� WARD ������� �ʰ� �Ի��� ����� �̸��� �Ի����� ����Ͻÿ�. 
 SELECT other.ename, other.hiredate
   FROM employee ward, employee other
  WHERE other.hiredate > ward.hiredate
    and ward.ename = 'WARD'
  order by hiredate;
  
-- 11 SELF JOIN�� ����Ͽ� �����ں��� ���� �Խ��� 
-- ��� ����� �̸� �� �Ի����� �������� �̸� �� �Ի��ϰ� 
-- �Բ� ����Ͻÿ� �ܣ� �� ���� ��Ī�� ���ȭ��� ������ �Ͻÿ� 
select e.ename, e.hiredate, m.ename, m.hiredate
  from employee e, employee m
 where e.manager = m.eno
   and m.hiredate >= e.hiredate
 order by e.hiredate;
    
select * from department;   

 1. ������� 3�� �̻��� �μ���� �ο����� ����Ͻÿ�. ( group by, having ) 
 SELECT d.dname, count(*)
   from employee e, department d
  where e.dno = d.dno
  group by d.dname
having count(*) >= 5;
 
 1.1 - ��å���� 3���̻��� ��å��� �ο����� ����Ͻÿ� 
 select job, count(*)
   from employee
  group by job
  having count(*) >=3;
 
 2. ���� �� ���� ���� ������ ������ ������ ��� ������ ����Ͻÿ�.
 select job, avg(salary)
   from employee
  group by job
 having avg(salary) = ( select min(avg(salary))
                           from employee
                          group by job ); 
 
 
 3. �����ȣ, ����̸�, �μ��̸�, �μ���ȣ�� ����Ͻÿ�.
    ( Natural ���� ,  Join On  , Join Using )
    
   select e.eno
        , e.ename
        , d.dname
        , d.dno
     from employee e, department d
    where e.dno = d.dno;
 
    select e.eno
        , e.ename
        , d.dname
        , dno
     from employee e natural join department d;

   select e.eno
        , e.ename
        , d.dname
        , d.dno
     from employee e join department d
    on e.dno = d.dno;  
    
    select e.eno
        , e.ename
        , d.dname
        , dno  --  
        /* natural join, 
           join using  �����÷�(dno) ���̺� ��Ī ����   */
     from employee e join department d
    using (dno);   
    
 4. �μ��� 30�̰�, �޿��� 1500�̻���  ����� 
  �̸�, �޿�, �μ���, �μ���ȣ�� ����Ͻÿ�. ( Join on )  
  
  select e.ename
       , e.salary
       , d.dname
       , d.dno
    from employee e join department d
      on e.dno = d.dno
   where e.salary >= 1500
     and e.dno = 30   ;
  
  
 5. ������� 5���� �Ѵ� �μ��� �μ���� ������� ����Ͻÿ�. 
 select d.dname, count(*)
   from employee e, department d
  where e.dno = d.dno
  group by d.dname
  having count(*) > 5;
 
 
 6. ADAMS ����� �ٹ��ϴ� �μ��̸��� �����̸��� ����Ͻÿ�.
   
select d.dname
     , d.loc
   from employee e, department d
  WHERE e.dno = d.dno
    and e.ename = 'ADAMS';
 
 7. NEWYORK �̳� DALLAS ������ �ٹ��ϴ� ������� 
  �����ȣ, ����̸��� �����ȣ ������ ����Ͻÿ�.   
 select e.eno
      , e.ename
      , d.loc
   from employee e, department d
  where e.dno = d.dno
    and (d.loc = 'NEW YORK' or d.loc = 'DALLAS')
  order by e.eno;
    
    
 -- ***** sub query  ******
 select ename,job, salary
   from employee
  where salary < (select salary
                    from employee
                   where ename = 'MARTIN');
    
-- SCOTT �� ������ �μ����� �ٹ��ϴ� ��� ����ϱ�
select ename, dno
  from employee
 where dno = (select dno
                from employee
               where ename = 'SCOTT')
   AND ename != 'SCOTT';
    
-- ���� �޿��� �޴� ����� �̸�, ��� ����, �޿� ����ϱ�
 SELECT ENAME, JOB, SALARY   
   FROM EMPLOYEE
  WHERE SALARY = (SELECT MIN(SALARY)
                    FROM EMPLOYEE);
    
-- 30�� �μ����� �ּ� �޿����� ū �޿��� �޴� �μ���ȣ, �ּұ޿� ����Ͻÿ�
select dno, min(salary)
  from employee
 group by dno
 having min(salary) > (select min(salary)
                         from employee
                        where dno = 30);
                        
 select  eno, ename
   from employee
   where salary in (
                select min(salary)
                  from employee
                  group by dno );
     -- salary in (950, 800, 1300)  
     
  ANY ���� ���� (�����ϴ� �� �ϳ��� ������ ��)
����	���	����
 1000 > ANY (500, 1000, 2000)	TRUE	 ANY ���� 1000 ���� ���� 500�� �����Ƿ� TRUE
 1000 = ANY (500, 1000, 2000)	TRUE	 ANY ���� ���� �� 1000�� �����Ƿ� TRUE
 2000 < ANY (500, 1000, 2000)	FALSE	 ANY ���� 2000 ���� ū ���� �����Ƿ� FALSE
 
 �� ALL ���� ���� (��� ���� �����ؾ� ��)

����	���	����
 1000 > ALL (500, 1000, 2000)	FALSE	 1000�� ALL�� ��� �� ���� Ŀ���ϹǷ� FALSE
 1000 = ALL (500, 1000, 2000)	FALSE	 1000�� ALL�� ��� ���� �����ؾ� �ϹǷ� FALSE
 3000 > ALL (500, 1000, 2000)	TRUE	 3000�� ALL�� ��� �� ���� ũ�Ƿ� TRUE
 
                        
 select eno, ename, job, salary
    from employee
   where salary < any(select salary
                        from employee
                        where job = 'SALESMAN' )
                        -- 1250, 1500, 1600
        -- salary �÷�������  any�� �ִ� ����� ū�� ������ ��ȸ   SMITH  WARD  ......
    AND job  <> 'SALESMAN' ;   -- 4��
    
 select eno, ename, job, salary
    from employee
   where salary < all(select salary
                        from employee
                        where job = 'SALESMAN' )
                        -- 1250, 1500, 1600
        -- salary �÷�����  all�� �ִ� ��簪���ٵ� �۾ƾ� ��ȸ     SMITH    JAMES       
    AND job  <> 'SALESMAN' ;     -- 3��
 
select eno, ename, job, salary
    from employee
   where salary < any(select salary
                        from employee
                        where job = 'ANALYST' )
                        -- 3000
        -- salary �÷�������  any�� �ִ� ����� ū�� ������ ��ȸ   SMITH  WARD  ......
    AND job  <> 'ANALYST' ;
    
 select eno, ename, job, salary
    from employee
   where salary < all(select salary
                        from employee
                        where job = 'ANALYST' )  -- 3000
    AND job  <> 'ANALYST' ;
    
    
select e.eno, e.ename as "���", m.ename as "���ӻ��" 
  from employee e, employee m
 where e.manager = m.eno
   and e.eno = '7902'
   and ROWNUM < 2;
-- 7902	FORD	JONES

select m.eno, m.ename as "���", e.ename as "���ӻ��" 
  from employee e, employee m
 where e.eno = m.manager
   and m.eno = '7902'
   and ROWNUM < 2;
-- 7902	FORD	JONES

    -- ���������� ���� �ֵ�
    select * from employee
  where  eno in ( select eno from employee
                   minus
                  select distinct manager from employee) ;

    
    /*
7839
7782
7698
7902
7566
7788
*/
select * from employee;
    
    
  
  