select *
 from employee, department
 where employee.dno=department.dno;
-- 부서번호 정보가 연결되어 한 줄에 다같이 나옴.
-- 이것이 equal join.

select *
 from employee, department;
-- 두 테이블이 연결되지 않고 그냥 서로 정보를 나열하기만 할 뿐인 카디시안 곱.


--equal join
--7788인 사원의 사원번호, 이름, 부서명을 출력하시오
select eno, ename, dname
 from employee, department
 where employee.dno=department.dno and eno=7788;
 
 --불러올 컬럼이 중복되어있을 때 이렇게 테이블.컬럼 해서 해당 원하는 테이블의 컬럼을 가져올 수 있다.
 select employee.eno, employee.ename, department.dname
 from employee, department
 where employee.dno=department.dno and eno=7788;
 

--컬럼에 별칭을 붙여서 했던 것 처럼 테이블에도 별칭을 붙여서 간단하게 해당 테이블에 일치하는 컬럼을 가져올 수 있다.
--별칭 지어주면 다른곳에서 지정된 테이블이나 컬럼을 사용 할 떄 약어를 사용해서 호출해야한다!
  select e.eno, e.ename, d.dname
 from employee e, department d
 where e.dno=d.dno and eno=7788;
 

select e.eno, e.ename, d.dname, dno
from employee e natural join department d
where e.eno=7788; /* natural join을 사용하면 -> e.dno, d.dno 생략 가능. 오히려 natural join이 되어있으면 에러남!
공통적으로 되어있는 부분은 테이블.컬럼을 하지않아도 알아서 나옴!!*/

--natural join과 유사하나 어떤 부분이 join이 들어와야할 지 지정해준.
select e.eno, e.ename, d.dname, dno
from employee e join department d
using(dno)
where e.eno=7788;

--join on 
select e.eno, e.ename, d.dname, e.dno
 from employee e join department d
 on e.dno = d.dno
 where e.eno = 7788;
 
--NON EQUI JOIN
--WHERE 절에 사용
--동등이 아니라 범위를 걸어서 조인을 걸어주는 것.

select ename, salary, grade
 from employee, salgrade
 where salary between losal and hisal;
 
 
 --3개의 테이블 조인하기
 select e.ename, d.dname, e.salary, s.grade
 from employee e, department d, salgrade s
 where e.dno=d.dno
 and e.salary between losal and hisal;
 
 
 --self join 하기
 select e.eno, e.ename, e.manager
 from employee e;
 
 select e.eno, e.ename, e.manager
 from employee e
 where e.eno=7902;
 
 select e.eno, e.ename as "직원이름"
 , m.ename as "직속상관 이름"
 from employee e, employee m
 where e.manager=m.eno;
 
 --join - on 절을 이용한 self join
 select e.ename || '의 직속 상관은 ' || m.ename
 from employee e join employee m
 on e.manager = m.eno;
 

  
 
 -- (+) 기호를 사용한 outer join 
 
 /* 해당하는 직속 상관이 없는 경우. on e.manager = m.eno; 출력이 안된다.
 왜냐> 직속상관이 null이니까 매핑이 안되서 그냥 아예 출력 자체가 안된다.*/
  select e.eno, e.ename "직원이름"
 , m.ename as "직속상관 이름"
 from employee e, employee m
 where e.manager=m.eno(+);
 --(+) 해당 조건이 있던 없던 모든 결과를 보여주고시플 때 (+) 를 붙여서 해주는거다.
 
 --join on 키워드를 사용
  select e.eno || '의 직속 상관은'|| nvl(m.ename, '없습니다')
 from employee e left outer join employee m
 /*--왼쪽을 기준으로해서 모든 정보를 보여줄 것이다 라는 뜻*/
 on e.manager=m.eno;
 
 --혼자서 해보기 문제
 --01 equi 조인을 사용해서 scott 사원의 부서번호와 부서 이름을 출력하시오
 select ename, d.dno, dname
 from employee e, department d
 where e.dno=D.dno
 and ename='SCOTT';
 
 --02 inner join과 on 연산자를 사용하여 사원 이름과 함꼐 그 사원이 소속된 부서 이름과 지역명을 출력하시오
 select * from department;
 
 select ename, d.dno, dname, loc
 from employee e inner join department d
 on e.dno=d.dno;
 
 --03 inner join과 using 연산자를 ㅅ용하여 10번 부서에 속하늠 모든 담당 업무 거유목록 (한번씩만 표시)을
 --부서의 지역명과 포함하여 출력하시오.
 --왜 distinct이거 넣음 터짐?
 select dno,  job, loc
 from employee e join department d
 using(dno)
 where dno =10;
 
 --04 natural join을 사용해서 커미션을 받는 모든 사원의 이름 부서이름 지역명을 출력하시오
 
 select ename, dname, loc, commission
 from employee e natural join department d
 where commission is not null and commission !=0;
 
 --훨씬 깔끔한 표현
  select ename, dname, loc, commission
 from employee e natural join department d
 where commission >0;
 
 
 --05 equi 조인과 wildcard를 사용하여 이름에 a가 포함된 모든 사원의 이름과 부서명을 출력하시오.
 select ename, e.dno, dname, loc
 from employee e, department d
 where e.dno=d.dno and ename like '%A%';
 
 
 --06 natural join을 사용하여 new york에 
 --근무하는 모든 사원들의 이름, 업무, 부서번호 및 부서명을 출력하시오
 select ename, job, dno, dname, LOC
 from employee e natural join department d
 where loc = 'NEW YORK';
 
 --07 SELF JOIN을 사용하여 사원의 이름 및 사원번호를 관리자 이름 및 관리자 번호와 함꼐 출력하시오
 select e.ename Employee, e.eno Emp#, e.manager, m.ename Manager, m.eno Mgr#
 from employee e , employee m
 where e.manager=m.eno;
 
 --08 outer join, self join을 사용하여 관리자가 없는 사원을 포함하여 사원번호를 기준으로 내림차순 정렬하여 출력하시오
  select e.ename Employee, e.eno Emp#, e.manager, m.ename Manager, m.eno Mgr#
 from employee e left outer join employee m
 on e.manager=m.eno
 order by e.eno desc;

  select e.ename Employee, e.eno Emp#, e.manager, m.ename Manager, m.eno Mgr#
 from employee e , employee m
 where e.manager=m.eno(+)
 order by e.eno desc;
 
 --09 self join을 사용하여 지정한 사원의 이름, 부서번호, 지정한 사원과 동일한 부성서 근무하느 사원을 출력하시오. 
 --단 각 열의 별칭은 이름 부서번호 돌료로 하시오
 select e.ename 이름, e.dno 부서번호, s.ENAME 동료
 from employee e , employee s
 where e.dno=s.dno
 AND S.ENAME != 'SCOTT'
 AND e.ename = 'SCOTT';
  
  
--10 SELF JOIN을 사용하여 WARD 사원보다 늦게 입사한 사원의 이름과입사일을 출력하시오
select * from employee;
select l.ename, l.hiredate
from employee e, employee l
where e.ename=l.ename 
and l.hiredate>'81/02/22'
order by hiredate;

select l.ename, l.hiredate
from employee e, employee l
where e.ename='WARD';

SELECT e.ename, e.hiredate
form employee e, employee d
where ;

--11 self join을 사용하여 관리자보다 먼저 입사한 모든 사원의 이름 및 입사일을 관리자의 이름 및 입사일과 함꼐 출력하시오
--단 . 각 열의 별칭은 결과 화면과 같도록 하시오

select e.ename AS "ENAME", e.hiredate AS "HIREDATE", m.ename AS "ENAME", m.hiredate AS "HIREDATE"
from employee e, employee m
where e.manager=m.eno 
and e.hiredate <= m.hiredate;













--추가 문제
--여태까지배운거 다 포함해서 문제!!
--1. 사원수가 3명 이상인 부서명과 인원스를 출력하시오. (group by, having)*
select decode(dno, 10,'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES'), DNO,  count(dno)
from employee
group by dno
having count(dno)>=3;


--정답본
select d.dno, d.dname, count(*)
from employee e , department d
 where e.dno = d.dno
 group by d.dno, d.dname
 having count(*) >=3;

select * from employee where dno = '20';

--1.1 직책별로 3명 이상인 직책명과 인원수를 출력하시오
select JOB,  count(JOB)
from employee
group by JOB
having count(JOB)>=3;

--02 직무중 가장 적게 ㅇ수입을 가지는 직무의 평균 월급을 출력하시오
select job, avg(salary)
from employee
group by job
having avg(salary) = (select min(avg(salary)) from employee group by job);


--03 사원번호, 사원이름, 부서이름, 부서번호를 출력하시오
--1) natural join
select eno, ename, dname, dno
from employee natural join department;

--2) join on
select eno, ename, dname, e.dno
from employee e join department d
on e.dno = d.dno;

--3) JOIN USING
select eno, ename, dname, dno
from employee e join department d
USING(DNO);

/* natural join, join using은 공통컬럼 테이블 별칭 생략*/


--04 부서가 30이고 급여가 1500이상인 사원이ㅡ 이름, 급여, 부서명, 부서번호를 출력하시오
select  ename, SALARY, dname, e.dno
from employee e join department d
on e.dno = d.dno
WHERE e.dno=30 and salary>=1500;

--퍼포먼스적으론 이렇게 작성하는 것이 좋다.
select  ename, SALARY, dname, e.dno
from employee e join department d
on e.dno = d.dno
WHERE  salary>=1500 and e.dno=30;
--왜? where 순서는 검색하였을 때 까장 값이 많은 순서에서 적은 순서의 결과가 나오도록 순서대로 입력 하는 것이 퍼포먼스적으로 좋다.



--05 사원수가 5명이 넘는 부서의 부서명과 사원수를 출력하시오 *
select * from department;
select decode(dno, 10,'ACCOUNTING', 20, 'RESEARCH', 30, 'SALES'), DNO,  count(dno)
from employee
group by dno
having count(dno)>=5;


select d.dname,  count(*)
from employee e, department d
where e.dno = d.dno
group by d.dname
having count(*)>5;




--06 ADAMS 사원이 근무하는 부서이름과 지역 이름을 출력하시오
SELECT ename, dname, loc
from employee e, department d
where e.dno = d.dno and e.ename='ADAMS';


--07 NEWYORK이나 DALLAS 지역에 근무하는 사원드의 사원번호, 사원이름을 사원번호순으로 출력하시오
SELECT e.eno, ename, loc
from employee e, department d
where e.dno = d.dno and d.loc in ('NEW YORK', 'DALLAS')
order by e.eno;




--서브쿼리
select ename, salary
from employee
where salary > (select salary from employee where ename= 'SCOTT');


--SCOTT과 동일한 부서에서 근무하는 사원 출력하기
SELECT ename, dno
from employee
where dno = (select dno from employee where ename = 'SCOTT')
and ename != 'SCOTT';
--하나의 결과만 나오는 단일행 서브쿼리라고 한다.

--최저급여를 받는 사원의 이름과 담당 업무, 급여를 출력하시오
SELECT ename, job, salary
from employee
where salary = (select min(salary) from employee);

--30번 부서에서 최소 급여보다 큰 급여를 받는 부서 번호와 최소 급여를 출력하시오
select dno, min(salary)
from employee
group by dno
having min(Salary) > (select min(salary)
                        from employee
                        where dno = 30);




select eno, ename
from employee
where salary=(
        select min(salary)
        FROM EMPLoYEE
        group by dno );
--다중행이 나오는데 결과를 단항 결과식으로 해서 이는 연산이 진행되지않음.

select eno, ename, salary
from employee
where salary in(
        select min(salary)
        FROM EMPLoYEE
        group by dno );
--이걸 다르게 쓰면 salary in (950, 800, 1300)이렇게 썼었는데 이것과 유사하게 간다
--다중행이나오는 서브 쿼리는 다중행에 쓰는 연산자를 사용하여야 한다.


--13번 문제 푸는 중
select ename, salary
from employee
where manager = (select eno from employee where ename='KING');

--14번 RESEARCH 부서의 사원에 대한 부서번호, 사원 이름 및 담당 업무를 표시하시오
select * from department;
select dno, ename, job
from employee
where dno = (select distinct dno from employee join department using(dno) where dname='RESEARCH');
--15번 평균 급여보다 많은 급여를 받고 이름에 M이 포함된 사원과 같은 부서에서
--근무하는  사원의 사원번호, 이름, 급여를 표시하시오
--16번 평균 급여가 가장 적은 업무를 찾으시오
--17번 담당 업무가 MANAGER인 사원이 소속된 부서와 동일한 부서의 사원을 표시하시오






--이 빌어쳐먹을 팅김 서브쿼리 문제 12번 까지 다 풀었는데 빌어먹을꺼 
--13번 문제 푸는 중
select ename, salary
from employee
where manager = (select eno from employee where ename='KING');

--14번 RESEARCH 부서의 사원에 대한 부서번호, 사원 이름 및 담당 업무를 표시하시오
select * from employee;
select dno, ename, job
from employee
where dno = (select dno from department  where dname='RESEARCH');


--15번 평균 급여보다 많은 급여를 받고 이름에 M이 포함된 사원과 같은 부서에서
--근무하는  사원의 사원번호, 이름, 급여를 표시하시오

select eno, ename, salary
from employee
where dno in (select distinct dno from employee where ename like '%M%')
and salary>(select avg(salary) from employee);


--이렇게 접근해야하는거 아님??
select eno, ename, salary
from employee
where dno ? (select distinct dno from employee where ename like '%M%' and salary>(select avg(salary) from employee));
--평균 급여 2073
--16번 평균 급여가 가장 적은 업무를 찾으시오
select job, avg(salary)
from employee
having avg(salary)=(select min(avg(salary)) from employee group by job)
group by job;
--17번 담당 업무가 MANAGER인 사원이 소속된 부서와 동일한 부서의 사원을 표시하시오
select *
from employee
where dno in (select dno from employee where job='MANAGER');








--복습
/* 테이블을 쓰다보면 여러 테이블에 저장된 테이블들을 한꺼번에 써야 할 때가 있음.
그럴때 테이블끼리 서로 공유된 컬럼을 가져서 이 데이터를 좀더 확장한다.*/

