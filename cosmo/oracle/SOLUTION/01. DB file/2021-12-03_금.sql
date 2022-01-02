--1. 사원번호가 7788인 사원과 담당 업무가 같은사원을 표시
--(사원이름과 담당 업무)하시오.

select ename, job
  from employee
 where job = (select job
                from employee
               where eno = 7788);

--2.   시원번호가 7499인 사원보다 급여가 많은사원을
--표시 (사원이름과 담당 업무)
select ename, job
  from employee
 where salary > ( select salary
                    from employee
                   where eno = 7499 );
                   
--3.  최소급여를 받는사원의 이름， 담당 업무 및 급여를표시하시오
--(그룹함수사용).                  
select ename, job, salary
  from employee
 where salary = ( select min(salary) from employee);
 
--4. 평균급여가 가장적은사원의 담당 업무를 찾아 
--직급과 평균급여를 표시하시오 
select job, avg(salary)
  from employee
 group by job
having avg(salary) = 
(select min( avg(salary) ) from employee group by job);

--5. 각부서의 최소급여를 받는사원의
--이름， 급여， 부서번호를 표시하시오 

select ename, salary, dno
  from employee
--where  salary in (select  min(salary) from employee group by dno );  
where (dno, salary) in (select dno, min(salary) from employee group by dno );

-- 담당 업무가 분석가(ANALYST)인 사원보다 급여가 적으면서 
-- 업무가 분석가(ANALYST)가 아닌 사원들을 표시(사원번호， 이름， 담당 업무， 급여)하시오 
select eno, ename, job, salary
  from employee
 where job != 'ANALYST'
   and salary < any (select salary  from employee where job = 'ANALYST') ;
  
-- 7. 부하직원이 없는사원의 이름을 표시하시오.   -- 8
  
 select ename
   from employee
  where eno not in (select manager 
                      from employee
                     where manager is not null
                     group by manager);
 select ename
   from employee
  where eno  in   (  select eno from employee
                     minus
                     select manager from employee);
/*
SMITH   ALLEN   WARD   MARTIN  TURNER  ADAMS  JAMES  MILLER    */
select count(1) from employee;  -- 14

-- 8 부하직원이 있는 사원의 이름을표시하λ|오. -- 6
 select ename
   from employee
  where eno  in (select manager 
                      from employee
                     where manager is not null
                     group by manager);
/*  KING CLARK BLAKE FORD JONES SCOTT  */
--9 BLAKE와 동일한 부서에 속한 사원의 이름과 입사일을 표시하는 질의를 작성하시오
--(단. BLAKE는 제외). 
select ename, hiredate
  from employee
where dno = (
    select dno from employee where ename = 'BLAKE'   -- 30
    )
and ename != 'BLAKE';

-- 10 급여가 평균 급여 보다 많은 사원들의 
-- 사원번호와 이름을 표시하되 결과를 
-- 급여에 대해서 오름치순으로 정렬 
select eno, ename
  from employee
 where salary > (select avg(salary) from employee )
order by salary asc;

-- 11.  이름에 'K' 가 포함된 사원과 같은 부서에서 일하는 사원의 
--사원번호와 이름을 표시하는 질의를 작성하시오 
select eno, ename--, dno
  from employee
 where dno in ( select dno from employee where ename like '%K%' );
 
-- 12 부서 위치가 DALLAS인 사원의 이름과 부서번호 및 담당 업무를 표시하시오
select ename, dno, job
 from employee
where dno = (select dno from department where loc= 'DALLAS' );

-- 13 KING에게 보고하는 사원의 이름과급여를 표시하시오.
select ename, salary-- , manager
  from employee
where manager = (select eno from employee where ename = 'KING');  -- 7839

-- 14 RESEARCH 부서의 사원에 대한 부서번호 사원이름 및 담당 업무를 표시하시오 
select dno, ename, job
  from employee
 where dno = (select dno from department where dname = 'RESEARCH' ) ; 
 
-- 15 평균 급여 보다 많은 급여를 받고 
--이름에 M 이 포함된 사원과 같은 부서에서
-- 근무하는 사원의 사원번호.이름， 급여를표시하시오 
select eno, ename, salary 
  from employee
 where salary >(select avg(salary) from employee)
   and dno in (select dno from employee where ename like '%M%');
   
--16 평균급여가 가잠적은 업무를 찾으시오 
 select job, avg(salary)
  from employee
 group by job
 having avg(salary) = ( select  min( avg(salary) ) from employee group by job);
 
-- 17 담당 업무가 MANAGER인 사원이 소속된 부서
-- 와 동일한부서의 사원을표시하시오  
 select eno, ename
  from employee
 where dno in (select dno from employee where job = 'MANAGER' ) ;
 
 1. 이름이 ALLEN인 사원과 같은 업무를 하는 사람의 사원번호, 이름, 업무, 급여 추출
 select eno, ename, job, salary from employee
 where job = (select job from employee where ename = 'ALLEN') and ename != 'ALLEN' ;
 
 2. EMP(employee) 테이블의 사원번호가 7521인 사원과 업무가 같고 
    급여가 7934인 사원보다 많은 사원의 사원번호, 이름, 담당업무, 입사일, 급여 추출
select eno, ename, job, hiredate, salary
  from employee
where job = ( select job from employee where eno = 7521)
    and salary > (select salary from employee where eno = 7934); 
    
 3. EMP 테이블에서 급여의 평균보다 적은 사원의 사원번호, 이름, 업무, 급여, 부서번호 추출
 select eno, ename, job, salary, dno  from employee
 where salary < (select avg(salary) from employee);
 
 4. 부서별 최소급여가 20번 부서의 최소급여보다 큰 부서의 부서번호, 최소 급여 추출
select dno, min(salary) from employee 
 group by dno
  having min(salary) > (select min(salary) from employee where dno = 20);
  
 5. 업무별 급여 평균 중 가장 작은 급여평균의 업무와 급여평균 추출
 select job, avg(salary) from employee
 group by job
 having avg(salary) = (select   min(avg(salary)) from employee group by job);
 
 6. 업무별 최대 급여를 받는 사원의 사원번호, 이름, 업무, 입사일, 급여, 부서번호 추출
 
 select eno, ename, job, hiredate, salary, dno from employee
 where (job, salary) in (select job, max(salary) from employee group by job);
 
 /*
 7499	ALLEN	SALESMAN	81/02/20	1600	30
7566	JONES	MANAGER	81/04/02	2975	20
7788	SCOTT	ANALYST	87/07/13	3000	20
7839	KING	PRESIDENT	81/11/17	5000	10
7902	FORD	ANALYST	81/12/03	3000	20
7934	MILLER	CLERK	82/01/23	1300	10
*/
 select eno, ename, job, hiredate, salary, dno from employee
where salary in (select max(salary) from employee group by job);


 7. 30번 부서의 최소급여를 받는 사원보다 많은 급여를 받는 사원의 
    사원번호, 이름, 업무, 입사일, 급여, 부서번호, 단 30번 부서는 제외하고 추출
   select eno, ename, job, hiredate, salary, dno from employee 
    where salary > (select min(salary) from employee where dno=30)
      and dno != 30;
    
 8. BLAKE와 같은 관리자를 가진 사원의 이름,업무, 상사번호 추출
    select ename, job, manager from employee
     where manager = ( select manager from employee where ename = 'BLAKE' );  -- 7839
    
 -- 9. BLAKE와 같은 부서에 있는 모든 사원의 이름과 입사일자를 추출
     select ename, hiredate from employee
     where dno = ( select dno from employee where ename = 'BLAKE' );
     
 10. 평균급여 이상을 받는 모든 사원에 대해 사원의 번호와 이름을 급여가 많은 순서로 추출
   select eno, ename from employee 
    where salary > (select avg(salary) from employee)
   order by salary desc;
   
 11. 이름에 T가 있는 사원이 근무하는 부서에서 근무하는 모든 사원에 대해 
     사원번호,이름,급여를 출력, , 사원번호 순서로 추출 
     (이름에 T가 있는 사원 찾을때 instr 함수 사용할것)
     
     select eno, ename, salary--, dno 
       from employee
      where dno in ( select dno from employee where instr(ename, 'T') != 0 ) 
     order by eno;
     
 12. 부서위치가 CHICAGO인 모든 사원에 대해 이름,업무,급여 추출
 
select e.name, e.job, e.salary -- , d.loc
  from employee e, department d
 where e.dno = d.dno
   and d.loc = 'CHICAGO';
 --#########################################################
 
 13. KING에게 보고하는 모든 사원의 이름과 급여를 추출
   select ename, salary--, manager
     from employee
    where manager = (select eno from employee where ename = 'KING');
  
 14. FORD와 업무와 월급이 같은 사원의 모든 정보 추출
 select * from employee
 where (job, salary) in (select job, salary from employee where ename = 'FORD');
 
 15. 업무가 JONES와 같거나 월급이 FORD 이상인 사원의 이름,업무,부서번호,급여 추출
 select ename, job, dno, salary from employee
 where job = (select job from employee where ename = 'JONES')
    or salary >= (select salary from employee where ename = 'FORD');
 
 16. SCOTT 또는 WARD와 월급이 같은 사원의 이름,업무,급여를 추출
 select ename, job, salary from employee
  where  salary = (select salary from employee where ename = 'SCOTT')
    or salary = (select salary from employee where ename = 'WARD');
    
 select ename, job, salary from employee
  where  salary in (select salary from employee where ename in( 'SCOTT', 'WARD'  ))
    and ename not in( 'SCOTT', 'WARD'  );
     
 17. SALES에서 근무하는 사원과 같은 업무를 하는 사원의 이름,업무,급여,부서번호 추출
  select ename, job, salary, dno from employee
 where job in ( select job from employee natural join department where dname = 'SALES');
 
* 힌트: select 절에 서브쿼리 가능 *

 18. 자신(개별직원)의 부서 평균 월급보다 낮은 사원의
 부서번호, 이름, 급여, 자신의 부서 평균급여를 추출
 (각각의 row 별)
 
 select e.dno, e.ename, e.salary
      , (select round(avg(salary)) from employee where dno = e.dno ) 부서평균급여 
   from employee e
  where e.salary < (select round(avg(salary)) from employee where dno = e.dno ) ;
 
 19. 사원번호,사원명,부서명, 소속부서 인원수, 업무, 소속 업무 급여평균,급여를 추출
  select e.eno, e.ename, d.dname
      , (select count(*) from employee where dno = e.dno ) 소속부서인원수
      , e.job
      , (select round(avg(salary)) from employee where job = e.job ) 업무급여평균 
      , e.salary
      , e.dno
   from employee e, department d
  where e.dno = d.dno ;
 
 select count(*) from employee where dno = '30';
  select salary from employee where job = 'SALESMAN' ;
1600
1250
1250
1500  
 select round(avg(salary)) from employee where job = 'SALESMAN' ;
 1400
 
 20. 사원번호,사원명,부서번호,업무,급여, 자신의 소속 업무 평균급여를 추출
   select e.eno, e.ename, e.dno, e.job, e.salary
   , (select round(avg(salary)) from employee where job = e.job ) 소속업무평균급여 
  from employee e;
  
 21. 최소한 한 명의 부하직원이 있는 관리자의 사원번호,이름,입사일자,급여 추출
 
 
 select eno, ename, hiredate, salary
   from employee e
  where eno in (  select manager from employee group by manager);
 
 
 
 select eno, ename, hiredate, salary
   from employee e
  where exists (select 1 from employee t
                        where t.manager = e.eno );
 
 
          
          select 1 from employee t
                        where t.manager = 7839;              

    
 
 22. 부하직원이 없는 사원의 사원번호, 이름, 업무, 부서번호 추출 ( exists 키워드 사용할것)
  select eno, ename, hiredate, salary
   from employee e
  where not exists (select 1 from employee t
                        where t.manager = e.eno );
 
  23. BLAKE의 부하직원의 이름, 업무, 상사번호 추출
 select ename, job, manager from employee 
 where manager = (select eno from employee where ename = 'BLAKE' );
 
 -- CHAP 8  테이블 생성 / 수정 / 제거하기
 drop table dept;

create table dept(
   dno number(2),
   dname varchar2(14),
   loc varchar2(13));
 
 create table department_bak
 as
 select *
   from department;
   
   select * from department_bak;
   
 create table dept20
 as 
 select eno, ename, salary*12 annsal
   from employee
  where dno = 20;
   
   select * from dept20;
   
 create table dept20_err
 as 
 select eno, ename, salary*12
   from employee
  where dno = 20;     -- ORA-00998:
   
 -- 부서 테이블 구조만 복사하기 
 
 create table dept_third
 as
 select dno, dname
   from department
  where 0=1 ; 
 
 select * from dept20;
 
 desc dept20;
 
 --##############################################
 -- 컬럼 추가 명령문
 alter table dept20
 add(birth date);
 
  alter table dept20
 add(job varchar2(30));
 
 -- 사원 이름 칼럼 크기 변경하기 
 alter table dept20
 modify ename varchar2(30);
 
 desc dept20;
 -- 사원 테이블에서 직급 컬럼 제거하기 
 
alter table dept20
drop column job;

desc dept20;

alter table dept20
set unused(birth);
 
 desc dept20;
 
 alter table dept20
 drop unused columns;
 
--##############################################
-- 테이블 명 변경하기
rename dept20 to emp20;

desc emp20;
select * from emp20;

--##############################################
-- 테이블 삭제하기
drop table emp20;

desc emp20;

select * from department_bak;
--  테이블의 모든 데이타 제거
truncate table department_bak;

select table_name from user_tables;

select owner, table_name from all_tables;

select owner, table_name from dba_tables;

 