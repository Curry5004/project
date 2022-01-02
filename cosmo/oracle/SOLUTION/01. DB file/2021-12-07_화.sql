1. EMP학번c 테이블명  
컬럼은  ID        NUMBER(7)  , LNAME VARCHAR2(25) ,  FNAME VARCHAR2(25),  DEPTID NUMBER(7)   
ID컬럼에 프라이머리 키제약 제약조건 포함,   LNAME 과  DEPTID  NOT NULL 제약조건 추가해서 테이블 생성문 작성해보세요.

CREATE TABLE EMP학번c (
 ID    NUMBER(7)    CONSTRAINT EMP학번c_ID_PK PRIMARY KEY,
 LNAME VARCHAR2(25) CONSTRAINT EMP학번c_LNAME_NN NOT NULL,
 FNAME VARCHAR2(25),
 DEPTID NUMBER(7)   CONSTRAINT EMP학번c_DEPTID_NN NOT NULL); 
 
SELECT * FROM USER_CONSTRAINTS WHERE ROWNUM = 1;  

2. EMP학번c  테이블의 이름을 E학번 으로 변경하세요.
RENAME EMP학번C TO E학번;

3. managerid 칼럼을 숫자형(7) NOT NULL 제약조건으로 추가하세요.
ALTER TABLE E학번 ADD managerid NUMBER(7) CONSTRAINT E학번_MANAGERID_NN NOT NULL;

4. ID 칼럼의 길이를 숫자형(10)으로 변경하세요.
DESC E학번;
ALTER TABLE E학번 MODIFY ID NUMBER(10);

5. LNAME 칼럼의 NOT NULL 제약조건을 삭제하고 테이블의 구조를 확인하세요.
ALTER TABLE E학번 DROP CONSTRAINT EMP학번C_LNAME_NN;

6. E학번 테이블의 managerid 칼럼에 D학번 테이블의 NO 칼럼을 참조하는 FOREIGN KEY 제약조건을 추가하세요.
ALTER TABLE E학번
ADD CONSTRAINT E학번_MANAGERID_FK FOREIGN KEY(MANAGERID) REFERENCES D학번(NO);
desc E학번;




7. E학번 테이블의 제약조건을 확인하세요.(USER_CONSTRAINTS )

SELECT TABLE_NAME, CONSTRAINT_NAME, STATUS
  FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'E학번';

--Chap 11 뷰의 개념과 뷰 사용하기
drop table emp_second;

create table emp_second
as
select * from employee;

drop table dept_second;

create table dept_second
as
select * from department;
--단순뷰 정의하기 
create view v_emp_job(사번, 사원이름, 부서번호, 담당업무)
as
select eno, ename, dno, job
  from emp_second
 where job like 'SALESMAN';

select * from v_emp_job;

create view v_emp_job2
as
select eno, ename, dno, job
from emp_second
where job like 'SALESMAN%';

select * from v_emp_job2;

--복합 뷰 정의하기
create view v_emp_complex
as
select *
  from emp_second natural join dept_second;
  
--  보안을 위해 뷰 이용하기  
create view v_emp_sample
as
select eno, ename, job, manager, dno
from emp_second;

select * from v_emp_sample;
select * from emp_second;
 
select * from v_emp_complex;

-- 정보를 손쉽게 얻기 위해 뷰 활용하기 
create view v_emp_complex2
as
select e.eno, e.ename, e.salary, dno, d.dname, d.loc
  from emp_second e natural join dept_second d;
  
-- 4 뷰의 처리 과정 

select view_name, text
  from user_views;

select * 
  from v_emp_job;

select view_name, text
  from user_views;
 
-- 다양한 뷰  
create view v_emp_salary
as 
select dno
     , sum(salary) as "sal_sum"
     , round(avg(salary)) as "sal_avg"
  from emp_second
 group by dno;
 
 select * from v_emp_salary;

-- 뷰 제거하기
drop view  v_emp_job;

-- CREATE OR RELPACE VIEW
? 이미 존재하는 뷰에 대해서 그 내용을 새롭게 변경하여 재 생성
-- FORCE
? 기본 테이블의 존재 여부에 상관없이 뷰 생성
-- WITH CHECK OPTION
? WITH CHECK OPTION을 사용하면, 해당 뷰를 통해서 볼 수 있는 범위
내에서만 UPDATE 또는 INSERT가 가능합니다
-- WITH READ ONLY
? 뷰를 통해서는 SELECT만 가능

CREATE [OR REPLACE] [FORCE | NOFORCE] VIEW view_name
[(alias, alias, alias, ...)]
AS subquery
[WITH CHECK OPTION]
[WITH READ ONLY];

select * from user_views;

drop view v_emp;

create or replace noforce view v_emp
as
 select eno, ename, job, hiredate from emp;

create or replace force view v_emp
as
 select eno, ename, job, hiredate from emp;

-- Chapter 12
select * from user_sequences;

create sequence dno_seq
increment by 10
start with 10;

select * from dept_second;
/*
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
*/
truncate table dept_second;

insert into dept_second
values(dno_seq.nextval, 'ACCOUNTING', 'NEW YORK');

select * from dept_second;

insert into dept_second
values(dno_seq.nextval, 'RESEARCH', 'DALLAS');

commit;

insert into dept_second
values(dno_seq.nextval, 'SALES', 'CHICAGO');

insert into dept_second
values(dno_seq.nextval, 'OPERATIONS', 'BOSTON');

alter sequence dno_seq
maxvalue 50;

drop sequence dno_seq;

select * from user_sequences;

select * from emp_second;

-- 인덱스

select index_name, table_name, column_name
  from user_ind_columns
 where table_name in ('EMPLOYEE', 'DEPARTMENT');
 
 -- 인덱스 생성하기
 create index idx_employee_ename
 on employee(ename);

drop index idx_employee_ename;

alter index pk_emp rebuild;.


select * from dept_second;

update  dept_second
set dname = 'RESEARCH', loc = 'DALLAS'
where dno = 30;
commit;

create unique index idx_dept_dno
on dept_second(dno);

select index_name, table_name, column_name
  from user_ind_columns
 where table_name in ('DEPT_SECOND');
 
 SELECT * FROM DEPT_SECOND;

create unque index idx_dept_loc
on dept_second(loc);  -- ORA-00901: invalid CREATE command

-- 결합인덱스
create index idx_dept_com
on dept_second (dname, loc);

-- 함수 기반 인덱스
create index idx_emp_second_annsal
on emp_second(salary*12);

select index_name, table_name, column_name
  from user_ind_columns
 where table_name in ('EMP_SECOND');

/*VIEW */

1. EMPLOYEES 테이블에서 30번 부서의 세부사항(모든컬럼)을 표현하는 EMP_30    VIEW를 생성하세요.
CREATE OR REPLACE VIEW EMP_30
AS
SELECT * FROM EMPLOYEE WHERE DNO = 30;

2. EMPLOYEE 테이블에서 10번 부서만 
ENO를 EMP_NO로 ENAME을 NAME으로 SALARY를 SAL로 바꾸고 다른 컬럼명은 그대로하고 EMP_10 VIEW를 생성하세요.

CREATE OR REPLACE VIEW EMP_10(
EMP_NO
, NAME
, JOB
, MANAGER
, HIREDATE
, SAL
, COMMISSION
, DNO ) AS ( SELECT * FROM EMPLOYEE WHERE DNO = 10 );

3. 부서별로 부서명, 최소 급여, 최대 급여, 부서의 평균 급여를 항목으로 하는 DEPT_SUM     VIEW를 생성하세요.
CREATE OR REPLACE VIEW DEPT_SUM(
DNAME, MIN_SAL, MAX_SAL, AVG_SAL) AS
( SELECT D.DNAME, MIN(E.SALARY), MAX(E.SALARY), AVG(E.SALARY)
    FROM EMPLOYEE E, DEPARTMENT D
   WHERE E.DNO = D.DNO
   GROUP BY D.DNAME );

-- 다한사람은  regexp_replace  함수 이용해서 출력쿼리 만들어 보세요
select 휴대폰번호 
     , substr(휴대폰번호, 1,5) || REGEXP_REPLACE(substr(휴대폰번호,6), '[[:digit:]]', '*') 변경컬럼
from (
    select '010-123-1234' 휴대폰번호 from dual
    union all
    select '010-1234-1234' 휴대폰번호 from dual
);

1번. EMP(employee)와 DEPT(department) TABLE 을 JOIN하여 부서번호, 부서명, 이름, 급여를 출력하라.
select e.dno, d.dname, e.ename, e.salary  
  from employee e, department d
 where e.dno = d.dno;

2번. 이름이 ALLEN인 사원의 부서명을 출력하라.
select d.dname 
  from employee e, department d
 where e.dno = d.dno
   and e.ename = 'ALLEN';
   
3번. DEPT TABLE 에 있는 모든 부서를 출력하고, EMP  TABLE 에 있는 DATA와 JOIN하여 
    모든 사원의 이름, 부서번호, 부서명, 급여를 출력하라.
 select e.ename, e.dno, d.dname, e.salary 
   from employee e, department d
  where e.dno = d.dno;   
    
4번. EMP TABLE 에 있는 EMPNO와 MGR을 이용(A.EMPNO = B.MGR)하여 서로의 관계를 다음과 같이 출력하라.
 ex. SMITTH의 매니저는 FORD이다.  ( "||" 이용)
 select e.ename || '의 매니저는 ' || m.ename  || '이다' as 매니저정보  
   from employee e, employee m
 where e.manager = m.eno;
 
5번. ALLEN의 직무와 같은 사람의 이름, 부서명, 급여, 직무를 출력하라.  (subquery)
select e.ename, d.dname, e.salary, e.job
  from employee e, department d
 where e.dno = d.dno
   and e.job = (select ee.job from employee ee where ee.ename = 'ALLEN');

6번. JONES 가 속해있는 부서의 모든 사람의 사원번호, 이름, 입사일, 급여를 출력하라.  (subquery)
select eno, ename, hiredate, salary
  from employee
 where dno = (select dno from employee where ename = 'JONES');

7번. 전체 사원의 평균 임금보다 많은 사원의 사원번호, 이름, 부서명, 입사일, 지역, 급여를 출력하라.  (subquery)
select e.eno, e.ename, d.dname, e.hiredate, d.loc, e.salary
  from employee e, department d
 where e.dno = d.dno
   and e.salary > (select AVG(salary) from employee);

8번. 10번 부서 사람들 중에서 20번 부서의 사원과 같은 업무를 하는 사원의 사원번호, 이름, 부서명, 입사일, 지역을 출력하라. (subquery)
select e.eno, d.dname, e.hiredate, d.loc
   from employee e, department d
  where e.dno = d.dno
    and e.dno = 10
    and e.job in ( select job from employee where dno = 20);
    

9번. 10번 부서중에서 30번 부서에는 없는 업무를 하는 사원의 사원번호, 이름, 부서명, 입사일, 지역을 출력하라.  (subquery)
 select e.eno, e.ename, d.dname, e.hiredate, d.loc --, e.job
   from employee e, department d
  where e.dno = d.dno
    and e.dno = 10
    and e.job not in  (select job from employee where dno = 30);

10번. 10번 부서와 같은 일을 하는 사원의 사원번호, 이름 , 부서명, 지역, 급여를 급여가 많은 순으로 출력하라. (subquery)

 select e.eno, e.ename, d.dname, d.loc, e.salary  
   from employee e, department d
  where e.dno = d.dno
    and e.job in ( select job from employee where dno = 10)
  order by e.salary desc;

11번. MARTIN이나 SCOTT의 급여와 같은 사원의 사원번호, 이름, 급여를 출력하라.  (subquery)

select eno, ename, salary
  from employee
where salary in (select salary from employee where ename in ('MARTIN', 'SCOTT'))
  and ename not in ('MARTIN', 'SCOTT');
  
12번. 급여가 30번 부서의 최고 급여보다 높은 사원의 사원번호, 이름, 급여를 출력하라.  (subquery)
select eno, ename, salary 
  from employee
where salary > (select MAX(salary) from employee where dno = 30); 
 
13번. 급여가 30번 부서의 최저 급여보다 높은 사원의 사원번호, 이름, 급여를 출력하라.  (subquery)
select eno, ename, salary 
  from employee
where salary > (select MIN(salary) from employee where dno = 30); 

14번. EMP 테이블에서 부서 인원이 4명보다 많은 부서의 부서번호, 인원수, 급여의 합을 출력하라. (HAVING)
select dno, count(*) 인원수, sum(salary) 급여합계
  from employee
 group by dno
 having count(*) > 4;

15번. EMP 테이블에서 가장 많은 사원이 속해있는 부서번호와 사원수를 출력하라.(HAVING)
select dno, count(*)
  from employee
 group by dno
 having count(*) = (select MAX(count(*)) from employee group by dno);

16번. EMP 테이블에서 가장 많은 사원을 갖는 MGR의 사원번호를 출력하라.(HAVING)
select manager 사원번호
  from employee
 group by manager
 having count(manager) = (select max(count(*)) from employee group by manager);
 -- 7698
 
 select manager, count(*)
   from employee
  group by manager;
   













