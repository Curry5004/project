SELECT *
  FROM EMPLOYEE, DEPARTMENT
 WHERE EMPLOYEE.DNO = DEPARTMENT.DNO;
 
 -- Equi Join
 -- 7788인 사원의 사원번호, 이름, 부서명 출력하시요
 SELECT e.ENO, e.ENAME, d.DNAME, d.DNO
   FROM EMPLOYEE e
      , DEPARTMENT d
  WHERE e.DNO = d.DNO
    AND ENO = 7788;
    
select e.eno, e.ename, d.dname, dno
  from employee e natural join department d
 where e.eno = 7788;  /* natural join -> e.DNO = d.DNO 생략 가능*/
 
 select e.eno, e.ename, d.dname, dno
   from employee e inner join department d
  using(dno)
  where e.eno=7788;
  
 select e.eno, e.ename, d.dname, e.dno
   from employee e join department d
     on e.dno = d.dno
  where e.eno = 7788;

--Non Equi Join
-- 사원벌로 급여 등급 출력하기 
  
select ename, salary, grade
  from employee, salgrade
 where salary between losal and hisal;

-- 3 개의 테이블 조인하기 
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

 select e.eno, e.ename as "사원이름", 
        m.ename  as "직속상관이름"
   from employee e, employee m
  where e.manager = m.eno(+);
  
select e.ename || '의 직속 상관은' || nvl(m.ename, ' 없습니다')
  from employee e left outer join employee m
on e.manager = m.eno;
  
  
 -- join ~ on 절을 사용한 self join 
 select e.ename || '의 직속 상관은 ' || m.ename
   from employee e join employee m
     on e.manager = m.eno;
  
  select * from employee
  order by eno;
  

 select  e.ename as "Employee", e.eno as "Emp#",
       m.ename  "Manager",   m.eno as "mgr#"
   from employee e, employee m
  where e.manager = m.eno;
  
 -- 1 EQUI 조인을 사용하여 SCOTT 사원의 부서번호와 부서이름을 출력하시오. 
 SELECT  e.ename, e.dno, d.dname
   FROM employee e, department d 
  WHERE e.dno = d.dno
    AND e.ename ='SCOTT';
 
 -- 2 INNER JOIN과 ON 연산차를 사용하여 사원이름과 함께
 --  그사원이 소속된 부서이름과 지역명 을 출력하시오. 
 SELECT ename, d.dname, loc
   FROM employee e join  department d 
    ON e.dno = d.dno;
     
-- 3 INNER JOIN과 USING 연산자를 사용하여 10 번 부서에 속하는 
-- 모든 담당 업무의 고유 목록(한 번씩만 표시)을 부서의 지역명을 포함해서 출력하시오 
 SELECT dno, job, loc
   FROM employee e inner join department d 
  using(dno)
  where dno=10;
  
-- 4 NATURAL JOIN을 사용하여 커미션을 받는 모든 사원의 이름， 부서이름， 지역명을 출력하시오 
 SELECT ename, dname, loc--, commission
   FROM employee e natural join department d 
  WHERE commission > 0;
-- 5 EQUI 조인과 WildCard를사용하여 이름에 A가 포함된 모든  사원의 이름과 부서명을 출력하시오 
 SELECT e.ename, d.dname
   FROM employee e, department d 
  WHERE e.dno = d.dno
    and e.ename like '%A%';
    
-- 6 NATURAL JOIN을 사용하여 NEW YORK 에 근무하는 
-- 모든 사원의 이름， 업무， 부서번호 및 부서명을 출력하시오
 SELECT ename, job, dno, dname
   FROM employee e natural join department d 
  WHERE d.loc = 'NEW YORK';
  
-- 7 SELF JOIN을시용하여 사원의 이름 및 사원번호를 
--관리자 이름 및 관리자 번호와 함께 출력하시오 단， 각 열 의 별칭은 결과화면과 같도록 하시오. 
 SELECT e.ename Employee, e.eno Emp#
      , mgr.ename Manager, mgr.eno Mgr# -- e.manager
   FROM employee e, employee mgr
  WHERE e.manager = mgr.eno;
  
-- 8 OUTER JOIN. SELF JOIN을 사용하여 관리자가 없는 사원을 포함하여 사원번호를 기준으로 내림치순 정렬 
-- 하여 출력하시오 
 SELECT e.ename Employee, e.eno Emp#
      , mgr.ename Manager, mgr.eno Mgr# -- e.manager
   FROM employee e, employee mgr
  WHERE e.manager = mgr.eno(+)
  ORDER BY e.eno desc;
  
-- 9 SELF JOIN을 사용하여 지정한 사원의 이름， 부서번호， 지정한사원과 동일한 부서에서 근무하는 사원을 출력 
-- 하시오 단， 각 열의 별칭은 이름， 부서번호， 동료로 하시오 
 SELECT e.ename 이름, e.dno 부서번호, other.ename 동료
   FROM employee e, employee other 
  WHERE e.dno = other.dno
    and e.ename = 'SCOTT'
    and other.ename != 'SCOTT';
    
    
    SELECT * FROM EMPLOYEE;
    
-- 10 SELF JOIN을 사용하여 WARD 사원보다 늦게 입사한 사원의 이름과 입사일을 출력하시오. 
 SELECT other.ename, other.hiredate
   FROM employee ward, employee other
  WHERE other.hiredate > ward.hiredate
    and ward.ename = 'WARD'
  order by hiredate;
  
-- 11 SELF JOIN을 사용하여 관리자보다 먼저 입시한 
-- 모든 사원의 이름 및 입사일을 관리자의 이름 및 입사일과 
-- 함께 출력하시오 단， 각 열의 별칭은 결과화면과 같도록 하시오 
select e.ename, e.hiredate, m.ename, m.hiredate
  from employee e, employee m
 where e.manager = m.eno
   and m.hiredate >= e.hiredate
 order by e.hiredate;
    
select * from department;   

 1. 사원수가 3명 이상인 부서명과 인원수를 출력하시오. ( group by, having ) 
 SELECT d.dname, count(*)
   from employee e, department d
  where e.dno = d.dno
  group by d.dname
having count(*) >= 5;
 
 1.1 - 직책별로 3명이상인 직책명과 인원수를 출력하시오 
 select job, count(*)
   from employee
  group by job
  having count(*) >=3;
 
 2. 직무 중 가장 적게 수입을 가지는 직무의 평균 월급을 출력하시오.
 select job, avg(salary)
   from employee
  group by job
 having avg(salary) = ( select min(avg(salary))
                           from employee
                          group by job ); 
 
 
 3. 사원번호, 사원이름, 부서이름, 부서번호를 출력하시오.
    ( Natural 조인 ,  Join On  , Join Using )
    
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
           join using  공통컬럼(dno) 테이블 별칭 생략   */
     from employee e join department d
    using (dno);   
    
 4. 부서가 30이고, 급여가 1500이상인  사원의 
  이름, 급여, 부서명, 부서번호를 출력하시오. ( Join on )  
  
  select e.ename
       , e.salary
       , d.dname
       , d.dno
    from employee e join department d
      on e.dno = d.dno
   where e.salary >= 1500
     and e.dno = 30   ;
  
  
 5. 사원수가 5명이 넘는 부서의 부서명과 사원수를 출력하시오. 
 select d.dname, count(*)
   from employee e, department d
  where e.dno = d.dno
  group by d.dname
  having count(*) > 5;
 
 
 6. ADAMS 사원이 근무하는 부서이름과 지역이름을 출력하시오.
   
select d.dname
     , d.loc
   from employee e, department d
  WHERE e.dno = d.dno
    and e.ename = 'ADAMS';
 
 7. NEWYORK 이나 DALLAS 지역에 근무하는 사원들의 
  사원번호, 사원이름을 사원번호 순으로 출력하시오.   
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
    
-- SCOTT 와 동일한 부서에서 근무하는 사원 출력하기
select ename, dno
  from employee
 where dno = (select dno
                from employee
               where ename = 'SCOTT')
   AND ename != 'SCOTT';
    
-- 최저 급여를 받는 사원의 이름, 담당 업무, 급여 출력하기
 SELECT ENAME, JOB, SALARY   
   FROM EMPLOYEE
  WHERE SALARY = (SELECT MIN(SALARY)
                    FROM EMPLOYEE);
    
-- 30번 부서에서 최소 급여보다 큰 급여를 받는 부서번호, 최소급여 출력하시요
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
     
  ANY 조건 예시 (만족하는 값 하나만 있으면 됨)
조건	결과	설명
 1000 > ANY (500, 1000, 2000)	TRUE	 ANY 값에 1000 보다 작은 500이 있으므로 TRUE
 1000 = ANY (500, 1000, 2000)	TRUE	 ANY 값에 같은 값 1000이 있으므로 TRUE
 2000 < ANY (500, 1000, 2000)	FALSE	 ANY 값에 2000 보다 큰 값이 없으므로 FALSE
 
 ● ALL 조건 예시 (모든 값을 만족해야 함)

조건	결과	설명
 1000 > ALL (500, 1000, 2000)	FALSE	 1000이 ALL의 모든 값 보다 커야하므로 FALSE
 1000 = ALL (500, 1000, 2000)	FALSE	 1000이 ALL의 모든 값과 동일해야 하므로 FALSE
 3000 > ALL (500, 1000, 2000)	TRUE	 3000은 ALL의 모든 값 보다 크므로 TRUE
 
                        
 select eno, ename, job, salary
    from employee
   where salary < any(select salary
                        from employee
                        where job = 'SALESMAN' )
                        -- 1250, 1500, 1600
        -- salary 컬럼값보다  any에 있는 어떤값이 큰게 있으면 조회   SMITH  WARD  ......
    AND job  <> 'SALESMAN' ;   -- 4건
    
 select eno, ename, job, salary
    from employee
   where salary < all(select salary
                        from employee
                        where job = 'SALESMAN' )
                        -- 1250, 1500, 1600
        -- salary 컬럼값이  all에 있는 모든값보다도 작아야 조회     SMITH    JAMES       
    AND job  <> 'SALESMAN' ;     -- 3건
 
select eno, ename, job, salary
    from employee
   where salary < any(select salary
                        from employee
                        where job = 'ANALYST' )
                        -- 3000
        -- salary 컬럼값보다  any에 있는 어떤값이 큰게 있으면 조회   SMITH  WARD  ......
    AND job  <> 'ANALYST' ;
    
 select eno, ename, job, salary
    from employee
   where salary < all(select salary
                        from employee
                        where job = 'ANALYST' )  -- 3000
    AND job  <> 'ANALYST' ;
    
    
select e.eno, e.ename as "사원", m.ename as "직속상관" 
  from employee e, employee m
 where e.manager = m.eno
   and e.eno = '7902'
   and ROWNUM < 2;
-- 7902	FORD	JONES

select m.eno, m.ename as "사원", e.ename as "직속상관" 
  from employee e, employee m
 where e.eno = m.manager
   and m.eno = '7902'
   and ROWNUM < 2;
-- 7902	FORD	JONES

    -- 부하직원이 없는 애들
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
    
    
  
  