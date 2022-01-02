/*업무가 SALESMAN 일 경우 급여 * 1.1, CLERK 일 경우 급여 * 1.3, MANAGER 일 경우 급여 * 1.5 를 하
모든 사원의 사원번호, 업무, 사원명, 급여정보를 출력하시오.*/
SELECT eno, job, ename, decode(job, 'SALESMAN', salary*1.1, 'CLERK', salary*1.3, 'MANAGER', salary*1.5, salary) salary
from employee;

--[문항2] 사원번호, 사원이름, 총 급여(salary+commission)을 출력하시오.
select eno, ename, salary+nvl(commission,0) "총 급여"
from employee;

--[문항3] 입사일이 '1981년 5월 1일' 인 사원을 검색하시오.
select *
from employee
where hiredate = to_date(19810501, 'YYYYMMDD'); 




--[문항4] 부서아이디가 20 인 사원의 
--이름, 업무, 입사일, 부서아이디를 검색하시오.
select ename, job, hiredate, dno
from employee
where dno = 20; 

--[문항5] 급여가 3000 이상이고 5000 이하인 
--사원의 이름, 급여를 검색하시오.
select ename, salary
from employee
where salary between 3000 and 5000; 

/*[문항6] 관리자아이디가 7566, 7782, 7902 에 해당하는 경우의 
사원아이디, 사원명, 관리자아이디, 관리자이름, 부서아이디를 검색하시오.
In 키워드 써서 쿼리 만드는거*/
select e.eno, e.ename, m.eno, m.ename, e.dno
from employee e, employee m
where e.manager=m.eno
and e.manager in (7566, 7782, 7902);

/*
[문항7] 사원수가 3명 이상인 
부서명과 인원수를 출력하시오. ( group by, having )*/
select d.dname, count(*)
from employee e, department d
where e.dno=d.dno
group by d.dname
having count(*)>=3;

/*
[문항8] 평균급여 이상을 받는 모든 사원에 대해 
사원의 번호와 이름을 급여가 많은 순서로 추출( subquery )*/
select eno, ename
from employee
where salary>=(select avg(salary) from employee)
order by salary desc;

/*[문항9] 자신의 업무별 평균 월급보다 낮은 사원의 
부서번호, 이름, 급여, 자신의 부서 평균급여를 추출*/
select e.dno, e.ename, e.salary 
, (select avg(salary) from employee where dno=e.dno group by dno) AS "부서 평균 급여"
from employee e
where salary<(select avg(salary) from employee where job=e.job group by job)/*업무평균*/;


--(select 

/*	
[문항10] 이름이 'C'로 시작하는 사원이 근무하는 부서에서 근무하는 모든 사원에 대해
사원번호,이름,급여를 출력, 사원번호 순서로 추출*/
select eno, ename, salary
from employee   
where dno in (select dno from employee where ename like 'C%')
ORDER BY ENO;