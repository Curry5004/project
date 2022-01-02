select * from user_indexes;

select* from employee where rownum=1;

desc employee;

/*추가 문제풀이 */
/*01번 emp학번c 테이블명 
컬럼은 id number(7), lname varchar2(25), fname varchar2(25), deptid number(7), 
id컬럼에 primary key 제약조건 포함, lname, deptid에 not null 제약조건 추가해서 테이블 생성문 작성*/
drop table emp학번c;
create table emp학번c(
    id number(7) constraint emp학번c_id_pk primary key,
    lname varchar2(25) constraint emp학번c_lname_nn not null , 
    fname varchar2(25),
    deptid number(7) constraint emp학번c_deptid_nn not null);
    
select table_name, constraint_name
from user_constraints
where table_name='EMP학번C';

select *
from user_constraints
where ROWNUM=1;


/*02 emp학번c 테이블의 이름을 e학번으로 변경하세요*/
rename emp학번c to e학번;
desc e학번;

/*03 managerid number(7) not mull 제약조건으로 추가*/
alter table e학번
add(managerid number(7) constraint e학번_managerid_nn not null);
desc e학번;

/*04 id 컬럼의 길이를 숫자형 10으로 변경*/
alter table e학번
modify id number(10);
desc e학번;

/*05 lname 칼럼의 not null 조건을 삭제하고 테이블의 구조를 확인하세요*/
alter table e학번
drop constraint emp학번c_lname_nn;
desc e학번;

/*06 e학번ㅇ ㅣ테이블에 managerid칼럼에 d학번의 테이블에 no 칼럼을 참조한는 foreign key 제약조건을 추가하세요*/
alter table e학번
ADD constraint e학번_managerid_fk FOREIGN KEY(MANAGERID) references D학번(NO);

/*07 e학번 테이블의 제약조건을 확인하세요*/
select table_name, constraint_name
from user_constraints
where table_name='E학번';




--#####################################-
--chap 11 뷰의 개념과 뷰 사용하기.
--뷰 생성 전 테이블 하나 만들기
drop table emp_second;
drop table dept_second;

create table emp_second
as
select * from employee;

create table dept_second
as
select * from Department;
--단순뷰 정의하기
--해당 컬럼 바로 별칭 설정해준다
create view v_emp_job(사번, 사원이름, 부서번호, 담당업무)
as
select eno, ename, dno, job
    from emp_second
where job like 'SALESMAN';

SELECT * FROM v_emp_job;

--컬럼 명칭을 정해주지 않으면 원래 서브쿼리 테이블에 있는 컬럼명을 상속받아서 이름이 똑같아진다.
create view v_emp_job2
as
select eno, ename, dno, job
    from emp_second
where job like 'SALESMAN';

select * from v_emp_job2;

--복합 뷰 정의하기.
create view v_emp_complex
as
select *
from emp_second natural join dept_second;

select * from v_emp_complex;

--보안을 위해 view 이용하기.
create view v_emp_sample
as
select eno, ename, job, manager, dno
from emp_second;
select * from v_emp_sample;
select * from emp_second;
--정보를 손쉽게 얻기 위해 view 활용하기.
create view v_emp_complex2
as
select e.eno, e.ename, e.salary, dno, d.dname, d.loc
 from emp_second e natural join dept_second d;
 
 --4뷰의 처리과정
 select view_name, text
 from user_views;

select *from v_emp_job;

--다양한 뷰
create view v_emp_salary
as 
select dno, sum(salary) as "sal_sum",
    round(avg(salary)) as "sal_avg"
    from emp_second
    group by dno;
    
select * from v_emp_salary;

--view 제거하기
--실제 데이터가 없기떄문에 데이터 사전에 있는것만 제거하는거,
drop view v_emp_salary;
--검색해보면 사라져있음
 select view_name, text
 from user_views;
 
 
 
 
 
 --create or replace view
 --이미 존재하는 뷰에 대해서 그 내용을 새롭게 변경하여 재생성(그렇게 많이 안씀)
 
 --force
 --기본 테이브르이 존재 여부에 상관없이 뷰 생성
 
 --with check option
 --with check option을 사용하면, 해당 뷰를 통해서 볼 수있는 범위 내에서만 update 또는 insert가 가능합니ㅏ디
 
 --with read only
 --뷰를 통햇너는 select만 가능
 
 
 create [or replace] [force|NONFORECE] NIEW NIEW_NAME
 [(컬럼 별칭들, , , , ,)]
 AS SUBQUERY
 [WITH CHECK OPTION]
 [WITH READ ONLY];
 
 --혼자해보기
 /*01 20번 부서에 소속된 사원의 사원번호, 이름과 부서번호를 ㅊㄹ력하는 SELECT문을 하나의 VIEW(V_EM_DNO)로 정의하시오*/
 CREATE VIEW v_em_dno
 as
 select eno, ename, dno from employee where dno=20;
 
 select * from v_em_dno;
 
 /*02 이미 생성된 뷰에서 급여 역시 출력할 수 있도록 수정하시오*/
CREATE OR REPLACE VIEW  V_EM_DNO
as
select eno, ename, dno, SALARY from employee where dno=20;

--뷰는 중첩이 되어 생성될 수도 있다.
create view v_EM_DNO_2
as
select eno from v_em_dno;


 SELECT * FROM V_EM_DNO_2;
 
 /*03 뷰를 제거하시오*/
 DROP VIEW V_EM_DNO_2;
 

--정말 복합뷰에선 그룹함수, group by, rownum을 사용할 수 없나? 
drop view v_test; 
create view v_test
as
select dno, min(salary) 최저임금 from employee e natural join department d where rownum=1 group by dno;
select * from v_test;



--force, noforce 실험
select * from user_views;
create or replace noforce view v_emp
as
select eno, ename, job hiredate from emp;
--table or view does not exist 테이블이 없을 경우 테이블이 존제 하지 않는다며 생성되지 않는다.

select * from user_views;
create or replace noforce view v_emp
as
select eno, ename, job hiredate from employee;
--테이블이 있는경우 생성됨,
drop view v_emp;

--force의 경우?
create or replace force view v_emp
as
select eno, ename, job hiredate from emp;
--경고: 컴파일 오류와 함께 뷰가 생성되었습니다.
--존재하지 않는 테이블을 가지고 view를 생성하면 에러가 발생하긴 하나 force에 의해 생성은됨!


--##################################################################################
--chapter 12
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

--시퀀스 사용법
insert into dept_second
values(dno_seq.nextVal, 'ACCOUNTING', 'NEWYORK');
select * from dept_second;

insert into dept_second
values(dno_seq.nextVal, 'RESARCH', 'DALLAS');
select * from dept_second;

COMMIT;

--분명 같은 문장을 넣었으니 번호를 알아서 카운팅해주는 TLZNJSTMFMF TKQDLQGKA.


insert into dept_second
values(dno_seq.nextVal, 'SALES', 'CHICAGO');
select * from dept_second;


insert into dept_second
values(dno_seq.nextVal, 'OPERATION', 'BOSTON');
select SSS* from dept_second;

COMMIT;

--시퀀스 변경 및 제거
ALTER SEQUENCE DNO_SEQ
MAXVALUE 50;


drop sequence dno_seq;

select * from user_sequences;

select * from emp_second;


create sequence emp_eno_seq
increment by 1
start with 7000;

select * from user_sequences;

create table emp_second_2
as
select * from employee where 0=1;
select * from emp_second_2;
desc emp_second_2;

insert into emp_second_2
values(emp_eno_seq.nextval, '박철수', '세일즈', 7733, SYSDATE , 1000, null, 10);

insert into emp_second_2
values(emp_eno_seq.nextval, '김창수', '세일즈', 7733, SYSDATE , 1000, null, 10);
COMMIT;






--인덱스
--인덱스는 넘버링에 대핸 개념, 프라이머리는 제약조건.
--인덱스는 속도를 빠르게 정해주는 것.
SELECT INDEX_NAME, TABLE_NAME, COLUMN_NAME
from user_ind_columns
where table_name in ('EMPLOYEE', 'DEPARTMENT');

--인덱스 생성하기
CREATE index idx_employee_ename
on employee(ename);

drop index idx_employee_ename;

--인덱스 재생성하기.
alter index pk_emp rebuild;

select * from dept_second;

update dept_second
set dname='RESEARCH', loc= 'DALLAS'
WHERE dno =30;
commit;
--이렇게 해버리먄 2번 로우와 3번로우의 dname과 loc는 다르지만dno가 인덱스가 되어 서로를 구분짓게 된다.

create unique index idx_dept_dno
on dept_second(dno);

select index_name, table_name, column_name
 from user_ind_columns
 where table_name in ('DEPT_SECOND');
 
 SELECT *FROM DEPT_SECOND;
 
CREATE UNIQUE INDEX IDS_DEPT_LOC
ON DEPT_SECOND(LOC);
--중복된게 있어으니까 하댕 값을 인덱스로 사용할 수 없다.

--결합인덱스
--컬럼과 결합한 인덱스
create index inx_dept_com
on dept_second(dname, loc);
/*
INX_DEPT_COM	DEPT_SECOND	DNAME
INX_DEPT_COM	DEPT_SECOND	LOC
두 인덱스가 하나의 네임에 결합하여 묶에 있는 것을 확인 할 수 있다.
*/


-- 합수 기반 인덱스
create index idx_emp_second_annsal
on emp_second(salary*12);

select index_name, table_name, column_name
 from user_ind_columns
 where table_name in ('EMP_SECOND');
 
 
 
 --혼자해보기
 --01
 create sequence emp_eno_seq
increment by 1
start with 7000;

drop sequence
 select *
 from user_sequences;
 
 --02
create table emp_second_2
as
select * from employee where 0=1;
select * from emp_second_2;
desc emp_second_2;

insert into emp_second_2
values(emp_eno_seq.nextval, '박철수', '세일즈', 7733, SYSDATE , 1000, null, 10);

insert into emp_second_2
values(emp_eno_seq.nextval, '김창수', '세일즈', 7733, SYSDATE , 1000, null, 10);
COMMIT;

--03
create index idx_emp01_ename
on emp_second_2(ename);

select index_name, table_name, column_name
from user_ind_columns
where table_name = 'EMP_SECOND_2';







---문제 풀어보기~~~~~~~~~~~~~~~~~
/*VIEW*/
/*01 EMPLOYEE 테이블에서 30번 부서의 세부사항을 표현하는 EMP_30를 생성하세요*/
CREATE VIEW emp_30_view
as
select * from employee where dno=30;

/*EMPLOYEE 테이블에서 10번 부서만 ENO를 ENO_NO ENAME을 NAME으로 SALARY를 SAL로 바꾸고 다른 컬럼명을 그대ㅗ 하고 EMP_10_VIEW를 생성하세요*/
CREATE VIEW emp_10_view
as
select eno eno_no, ename name, salary sal from employee where dno=10;

--테스팅
CREATE VIEW emp_10_view
as
select eno eno_no, ename name, manager, hiredate, salary sal, commission, dno from employee where dno=10;

--정답
create view emp_10_view(
    ENO_NO
    , NAME
    ,MANAGER
    ,HIREDATE
    ,SAL
    ,COMMISSION
    ,DNO)
    AS SELECT * FROM EMPLOYEE WHERE DNO=10;




/*부서별로 부서명, 최소급여 최대급여, 부서평균 급여 학몽을 평균으로 하는 dept_sum_view 생성*/
create view dept_sum_view
as
select d.dname, min(e.salary) 최소급여, max(e.salary) 최대급여,
avg(e.salary) 부서평균 
From employee e natural join department d group by d.dname;

--정답
--view_name ()<- 요 부분에 컬럼 별칭 한번에 묶어서 가는거 이해하기.
create OR REPLACE view dept_sum_view(
    NAME
    , 최소급여
    , 최대급여
    , 부서평균)
as
select d.dname, min(e.salary), max(e.salary),avg(e.salary) 
From employee e natural join department d group by d.dname;



select * from department;

select * from emp_30_view;
select * from emp_10_view;
select * from dept_sum_view;

select *
from user_views;

--regexp_replace

select text, regexp_replace(text, '([0-9])','*',4) as 변경컬럼
from(
    select '010-123-1234' text from dual
    union all
    select '010-1234-1234' text from dual
);

--substr 함수를 사용
select text, substr(text, 1,3) || regexp_replace(substr(text, 4), '[[:digit:]]', '*') as 변경컬럼
from(
    select '010-123-1234' text from dual
    union all
    select '010-1234-1234' text from dual
);


/*
REGEXP_REPLACE (source_char, pattern

                         [, replace_string

                         [, position

                         [, occurrence

                         [, match_param[[[

)



첫번째 인수 Source_char 

 : 원본데이터, 컬럼명이나, 문자열이 올수 있다.



두번쨰 인수 pattern

 : 찾고자 하는 패턴을 의미



세번째 인수 replace_string

 : 변환하고자 하는 형태



네번째 인수 position 

 : 검색 시작 위치를 지정, 아무런 값도 주지 않을 경우 기본값 : 1



다섯 번째 인수 occurrence

 : 패턴과 일치가 발생하는 횟수를 의미, 0은 모든 값을 대채, 다른 n이란 숫자를 주면 n번째 발생하는 문자열을 대입



여섯 번째 인수 match_parameter

 : 기본값으로 검색되는 옵션을 바꿀수 있다.

   - c : 대소문자를 구분해서 검색

   -  i : 대소푼자를 구분하지 않고 검색

   - m : 검색 조건을 여러 줄로 줄 수 있음

   - c와 i가 중복으로 설정되면 마지막에 설정된 값을 사용 ex) ic가 중복으로 절정되면  c 옵션 적용

*/

/*
07번 셀렉트에 서브쿼리 넣어서 쉽게 못가나?

홍지환에서 나에게 (DM) 05:56 PM
1번. EMP(employee)와 DEPT(department) TABLE 을 JOIN하여 부서번호, 부서명, 이름, 급여를 출력하라.
2번. 이름이 ALLEN인 사원의 부서명을 출력하라.
3번. DEPT TABLE 에 있는 모든 부서를 출력하고, EMP  TABLE 에 있는 DATA와 JOIN하여 
    모든 사원의 이름, 부서번호, 부서명, 급여를 출력하라.
4번. EMP TABLE 에 있는 EMPNO와 MGR을 이용(A.EMPNO = B.MGR)하여 서로의 관계를 다음과 같이 출력하라.
 ex. SMITTH의 매니저는 FORD이다.  ( "||" 이용)
5번. ALLEN의 직무와 같은 사람의 이름, 부서명, 급여, 직무를 출력하라.  (subquery)
6번. JONES 가 속해있는 부서의 모든 사람의 사원번호, 이름, 입사일, 급여를 출력하라.  (subquery)
7번. 전체 사원의 평균 임금보다 많은 사원의 사원번호, 이름, 부서명, 입사일, 지역, 급여를 출력하라.  (subquery)
8번. 10번 부서 사람들 중에서 20번 부서의 사원과 같은 업무를 하는 사원의 사원번호, 이름, 부서명, 입사일, 지역을 출력하라. (subquery)
9번. 10번 부서중에서 30번 부서에는 없는 업무를 하는 사원의 사원번호, 이름, 부서명, 입사일, 지역을 출력하라.  (subquery)
10번. 10번 부서와 같은 일을 하는 사원의 사원번호, 이름 , 부서명, 지역, 급여를 급여가 많은 순으로 출력하라. (subquery)
11번. MARTIN이나 SCOTT의 급여와 같은 사원의 사원번호, 이름, 급여를 출력하라.  (subquery)
12번. 급여가 30번 부서의 최고 급여보다 높은 사원의 사원번호, 이름, 급여를 출력하라.  (subquery)
13번. 급여가 30번 부서의 최저 급여보다 높은 사원의 사원번호, 이름, 급여를 출력하라.  (subquery)
14번. EMP 테이블에서 부서 인원이 4명보다 많은 부서의 부서번호, 인원수, 급여의 합을 출력하라. (HAVING)
15번. EMP 테이블에서 가장 많은 사원이 속해있는 부서번호와 사원수를 출력하라.(HAVING)
16번. EMP 테이블에서 가장 많은 사원을 갖는 MGR의 사원번호를 출력하라.(HAVING)*/



/*종합문제*/
/*01 emp와 dept tableㅡㅇㄹ 조인하여 
부서번호 부서명 이름 급여를 출력하라*/
select e.eno, d.dname, e.ename, e.salary
from employee e, department d
where e.dno=d.dno;

/*02이름이 allen인 사원의 부서명을 출력하라*/
select d.dname
from employee e , department d
where e.dno= d.dno and e.ename='ALLEN';

/*03DEPT TABLE에 있는 모든 부서를 출력ㅎ고 EMP TABLE에 있는 DATA와 JOIN 하여 
모든 사원의 이름 부서번호 부서명 급여를 출력하라*/
SELECT e.ename, dno, d.dname, e.salary
from employee e natural join department d;

/*04 emp table에 있는 empno와 mgr을 이용하여 서로 관계를 다음과 같이 출력하라*/
select e.ename||'의 매니저는'||m.ename||'이다'
from employee e, employee m
where e.manager=m.eno;


/*05 allen의 직무와 같은 사람의 
이름, 부서명, 급여, 직무를 출력하라*/
select e.ename, d.dname, e.salary, e.job
from employee e natural join department d
where e.job=(select job from employee where ename='ALLEN');

/*06 JONES가 속해있는 부서의 모든 사람의 
사원번호, 이름, 입사일, 급여를 출력하라*/
select eno, ename, hiredate, salary
from employee
where dno=(select dno from employee where enamE='JONES');

/*07 전체 사원의 평균임금보다 많은 사원의
사원번호 이름 부서명 입사일 지역 급여를 출력하라*/
SELECT e.eno, e.ename, d.dname, e.hiredate, d.loc, e.salary
from employee e, department d
where e.dno=d.dno
and e.salary>(select avg(salary) from employee);

/*08 10번 부서 사함들 중에서 20번 부서와 같은 업무를 하는 사원의
사원번호 이름 부서명 입사일 지역을 출력하라*/
select e.eno, e.ename, d.dname, e.hiredate, d.loc
from employee e, department d
where e.dno=d.dno
and e.dno=10
and e.job in (select job from employee where dno=20);

/*09 10번 부서중에서 30번 부서에는 없는 업무를 하는 사원의 
사원번호, 이름, 부서명, 입사일, 지역을 출력하라.  (subquery)*/
select e.eno, e.ename, d.dname, e.hiredate, d.loc
from employee e, department d
where e.dno=d.dno
and e.dno=10
and e.job not in (select job from employee where dno=20);

select * from employee;

/*10번. 10번 부서와 같은 일을 하는 사원의 
사원번호, 이름 , 부서명, 지역, 급여를 급여가 많은 순으로 출력하라. (subquery)*/
select e.eno, e.ename, d.dname, d.loc, e.salary
from employee e join department d
on e.dno=d.dno
where job in (select job from employee where dno=10)
order by e.salary desc;

/*11번. MARTIN이나 SCOTT의 급여와 같은 
사원의 사원번호, 이름, 급여를 출력하라.  (subquery)*/
select eno, ename, salary
from employee
where salary in (
    select salary from employee where ename='MARTIN'
    UNION ALL
    select salary from employee where ename='SCOTT'
    )
AND ename not in ('MARTIN', 'SCOTT');

/*12번. 급여가 30번 부서의 최고 급여보다 높은 사원의
사원번호, 이름, 급여를 출력하라.  (subquery)*/
SELECT ENO, ENAME, salary
from employee
where salary>(select max(salary) from employee where dno=30 group by dno);

/*13번. 급여가 30번 부서의 최저 급여보다 높은 사원의 
사원번호, 이름, 급여를 출력하라.  (subquery)*/
select eno, ename, salary
from employee
where salary>(select min(salary) from employee where dno=30 group by dno);

/*14번. EMP 테이블에서 부서 인원이 4명보다 많은 부서의 
부서번호, 인원수, 급여의 합을 출력하라. (HAVING)*/
select dno, count(*), sum(salary)
from employee
having count(*)>4
group by dno;

/*15번. EMP 테이블에서 가장 많은 사원이 속해있는 
부서번호와 사원수를 출력하라.(HAVING)*/
select dno, count(*)
from employee
having count(*) = (select max(count(*)) from employee group by dno)
group by dno;

/*16번. EMP 테이블에서 가장 많은 사원을 갖는 MGR의 
사원번호를 출력하라.(HAVING)*/
select eno
from employee
where eno=(select manager from employee group by manager having count(*)=5);


select eno
from employee
where eno=(select manager from employee group by manager having count(*) all ();
select manager, count(*) from employee group by manager;

--복습
SELECT *
FROM USER_VIEWS;