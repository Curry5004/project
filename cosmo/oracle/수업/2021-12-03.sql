/*01 이름이 ALLEN인 사원과 가은 업무를 하는사람의
사원번호 이름 업무 급여 추출*/
SELECT * FROM EMPLOYEE;
SELECT eno, ename, job, salary
from employee
where job = (select job from employee where enaMe='ALLEN')
AND enaMe!='ALLEN';


/*02 EMP 테이블에 사원번호인 7521인 사원과 업무가 같고 급여가 7934인 사원보다 많은 사원의
사원번호 이름 담당업무 입사일 급여 추출*/
SELECT * FROM EMPLOYEE;
SELECT eno, ename, job, HIREDATE, salary
from employee
where JOB = (select job from employee where ENO=7521)
AND SALARY> (select SALARY from employee where ENO=7934);


/*03 EMP 테이블에 급여가 평균보다 적은 사원의
사원번호 이름 업무 급여 부서번호 호출*/
SELECT * FROM EMPLOYEE;
SELECT eno, ename, job, salary, DNO
from employee
where SALARY < (select AVG(SALARY) from employee);


/*04 부서별 최소 급여가 20번 부서의 ㅗ최소급여보다 큰 부서의
부서번호 최소급여*/
SELECT dno, min(salary)
from employee
group by dno
having min(salary) > (select min(salary) from employee where dno=20);
/*05 업무별 급여 평균 중 가장 작은 급여평균의 
업무와 급여 평균*/
select job, avg(salary)
from employee
group by job
having avg(salary) = (select min(avg(salary)) from employee group by job);
/*06 업무별 최대 급여를 받는 사원의
사원번호 이름 업무 입사일 급여 부서번호*/
select ENO, ename, job, hiredate, salary, dno
from employee
where (job, salary) in (select job, max(salary) from employee
group by job);



/*07 30번 부서의 최소급여를 받는 ㅏㅅ원보다 많은 급여를 받는 사원의
사원번호, 이름, 업무, 입사일, 급여, 부서번호, 단 30번 부서는 빼고 추출*/
select eno, ename, job, hiredate, salary, dno
from employee
where salary>(select min(salary) from employee where dno=30)
and dno!=30;
/*08 BLAKE와 같은 상사를 가진 사원의
이름 업무 상사번호*/
SELECT ename, job, manager
from employee
where manager = (select manager from employee where ename='BLAKE');
/*09 BLAKE와 같은 부서에 있는 모든 사원의 이름과 입사일자를 추출*/
SELECT ename, HIREDATE
from employee
where DNO = (select DNO from employee where ename='BLAKE');
/*10 평균 급여 이상을 받는 모든 사원에 대해 
사원의 번호와 이름을 급여가 많은 순서로 추출*/
SELECT ENO, ENAME
FROM EMPLOYEE
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE)
ORDER BY SALARY DESC;
/*11 이름에 T가 있는 사원이 근무하는 부서에서 근무하는 모든 사원에 대해
사원번호, 이름, 급여를 출력 사원번호 순서로 추출할것
INSTR 함수 사용*/
SELECT ENO, ENAME, SALARY, DNO
FROM EMPLOYEE
WHERE DNO IN (SELECT distinct DNO FROM EMPLOYEE WHERE INSTR(ENAME, 'T') !=0)
ORDER BY ENO;
/*12 부서위치가 CHICAGO인 모든 사원에 대해
이름 업무 급여 추출*/
SELECT ENAME, JOB, SALARY
FROM EMPLOYEE
WHERE dno=(select dno from department where loc='CHICAGO');





------------------------------------------------------------------------
/*13번 KING에게 보고하는 모든 사워느이 
이름과 급여를 추출*/
SELECT ENAME, SALARY, MANAGER
FROM EMPLOYEE
WHERE MANAGER = (SELECT ENO FROM EMPLOYEE WHERE ENAME='KING');

/*14 FORD와 업무와 월급이 같은 사원의 
모든 정보를 추출*/
SELECT *
FROM EMPLOYEE
WHERE job = (SELECT JOB FROM EMPLOYEE WHERE ENAME='FORD')
AND SALARY = (SELECT SALARY FROM EMPLOYEE WHERE ENAME='FORD')
and ename!='FORD';


SELECT *
FROM EMPLOYEE
WHERE (job, SALARY) in (SELECT JOB, SALARY FROM EMPLOYEE WHERE ENAME='FORD')
and ename!='FORD';


/*15 업무가 JONES와 같거나 월급이 FORD 이상인 사원의
이름 업무 부서번호 급여 추출*/
SELECT ENAME, JOB, dNO, SALARY
FROM EMPLOYEE
WHERE (JOB = (SELECT JOB FROM EMPLOYEE WHERE ENAME='JONES')
OR SALARY >= (SELECT SALARY FROM EMPLOYEE WHERE ENAME='FORD'))
AND ENAME NOT IN ('JONES', 'FORD');

/*16 SCOTT 또는 WARD와 월급이 같은 사원의
이름, 업무,급여를 추출*/
Select ename, job, salary
from employee
where salary in ((SELECT SALARY FROM EMPLOYEE WHERE ENAME='SCOTT'), (SELECT SALARY FROM EMPLOYEE WHERE ENAME='WARD'))
AND ENAME NOT IN ('SCOTT', 'WARD');

/*17 SALES에서 근무하는 사원과 같은 업무를 하는 사원의
이름 업무 급여 부서번호 추출*/
select ename, job, salary eno
from employee
where job in (select distinct job from employee where dno =(select dno from department where dname='SALES'));

-- 이렇게 서브쿼리를 짜도 됨select job from employee natural join department where dname = 'SALES'

--select 절에 서브쿼리 가능
/*18 자신(개별직원)의 부서 평균 월급보다 낮은 사원의
부서번호 이름 급여 자신의 부서 평균급여를 추출*/
select e.dno, e.ename, e.salary
, (select round(avg(salary)) from employee where dno=e.dno) 부서평균
--round(decode(dno, 10, (select avg(salary) from employee where dno=10)
--,20, (select avg(salary) from employee where dno=20)
--,30, (select avg(salary) from employee where dno=30))) as "부서 평균 급여"
FROM EMPLOYEE e
where e.salary<(select round(avg(salary)) from employee where dno=e.dno);


where salary < (round(decode(dno, 10, (select avg(salary) from employee where dno=10)
,20, (select avg(salary) from employee where dno=20)
,30, (select avg(salary) from employee where dno=30))));

select eno, ename, salary, X=(select avg(salary) from employee group dno)
FROM EMPLOYEE
where salary < (round(decode(dno, 10, (select avg(salary) from employee where dno=10)
,20, (select avg(salary) from employee where dno=20)
,30, (select avg(salary) from employee where dno=30))));






/*19 사원번호, 사원명, 부서명, 소속부서 인원수 , 업무, 소속 업무 급여 평균급여를 추출*/
--새련됨
select e.eno, e.ename, d.dname,
(select count(*) from employee where dno= e.dno) as "소속부서 인원수", 
e.job, 
(select round(avg(salary)) from employee where job=e.job) as "소속 업무 평균급여"
from employee e, department d
where e.dno=d.dno;

--노가다
select e.eno, e.ename, d.dname, 
decode(e.dno, 10, (select count(*) from employee where dno=10)
,20, (select count(*) from employee where dno=20)
,30, (select count(*) from employee where dno=30)) as "부서인원수"
, e.job , 
decode(e.job, 'ANALYST', (select ROUND(avg(salary)) from employee where JOB='ANALYST')
, 'CLERK', (select avg(salary) from employee where JOB='CLERK')
, 'MANAGER', (select ROUND(avg(salary)) from employee where JOB='MANAGER')
, 'PRESIDENT', (select avg(salary) from employee where JOB='PRESIDENT')
, 'SALESMAN', (select avg(salary) from employee where JOB='SALESMAN')) as "소속 업무 평균급여"
from employee e, department d
where e.dno=d.dno;


/*20 사원번호, 사원명, 부서번호, 업무, 급여, 자신의 소속 업무 평균급여를 추출*/
select e.eno, e.ename, e.eno, e.job, e.salary,
(select round(avg(salary)) from employee where job=e.job) as "소속 업무 평균급여"
from employee e;

--노가다
select e.eno, e.ename, e.eno, e.job,
decode(e.job, 'ANALYST', (select ROUND(avg(salary)) from employee where JOB='ANALYST')
, 'CLERK', (select avg(salary) from employee where JOB='CLERK')
, 'MANAGER', (select ROUND(avg(salary)) from employee where JOB='MANAGER')
, 'PRESIDENT', (select avg(salary) from employee where JOB='PRESIDENT')
, 'SALESMAN', (select avg(salary) from employee where JOB='SALESMAN')) as "소속 업무 평균급여"
from employee e;

/*21 최소한 한 명의 부하직원이 있는 관리자의 
사원번호,이름,입사일자, 급여 추출*/
select eno, ename, hiredate, salary
from employee
where eno in (select distinct manager from employee);

select eno, ename, hiredate, salary
from employee e
where exists (select 1 from employee t where t.manager=e.eno);
--해당 METHOD의 좋은점은 서브쿼리의 길이가 길다면 모든 데이터를 불러와서 하다보니까 시간이 오래걸리는데
--이걸로 한다면 from 테이블에 있는 데이터만 빠르게 보내니까 속도가 빠르다.
--쿼리 속도를 빠르게 하기 위해 이러면 좋다! 많이 빠르다! 확실히 이해하고 쓸 수 있도록 하자.

/*22 부하직원이 없는 사원의 
사원번호, 이름, 업무, 부서번호를 추출 exists 키워드 사용할 것*/
select  eno, ename, job, dno
from employee e;
where not exists(select 1 from employee t where);

select eno, ename, hiredate, salary
from employee e
where not exists (select 1 from employee t where t.manager=e.eno);


/*23 BLAKE의 부하직원의 
이름 업무 상사번호 추출*/
SELECT ename, job, manager
from employee
where MANAGER= (select eno from employee where ename='BLAKE');












/*chapr 068 테이블 생성 수정 제거하기*/

--테이블 제거하기
drop table dept;

--테이블 생성하기
create table dept(
    dno number(2),
    dnma varchar2(14),
    loc varchar(13));

--테이블 생성 시 서브쿼리 사용
--서브쿼리를 사용하여 기존 테이블을 복사하여 만듬
create table department_bak
as
select*
from department;
--치면 나옴!!
select * from department_bak;


--서브쿼리 작성 시 데이터를 재설정하여 저저아
--20번 부서의 연봉 테이블을 만들어보자
create table dept20
as 
select eno, ename, salary*12 annasal
from employee
where dno=20;
--이 때 조작된 컬럼이 있을땐 꼭 컬럼의 별칭을 저장해주어야 한다. 안그러면 오류 발생.

-- 잘 나옴!!
select * from dept20;




--부서 테이블 구조만 복사하기. 내용은 가져오지 않음
create table dept_third
as
select dno, dname
 from department
 where 0=1;

--찾아보면 로우는 없고 컬럼만 있음!!!
select * from dept_third;
