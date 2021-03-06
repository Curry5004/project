
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



--02 테이블 구조를 변경
desc dept20;

select * from dept20;


--######################################################
--컬럼 추가 명령문
alter table dept20
add(birth date);

desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(10) 
ANNASAL    NUMBER       
BIRTH      DATE    -> c추가됨
*/

--사원 이름 컬럼 크기 변경하기
alter table dept20
modify ename varchar2(30);
desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(30) -> 더 큰 사이즈로 변경된 것을 확인 할 수 있음.
ANNASAL    NUMBER       
BIRTH      DATE         
*/


--
alter table dept20
add(job varchar2(30));

desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(30) 
ANNASAL    NUMBER       
BIRTH      DATE         
JOB        VARCHAR2(30) 
추가됨!
*/

--사원 테이블ㅇ에서 직급 컬럼 제거하기
alter table dept20
drop column job;

desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(30) 
ANNASAL    NUMBER       
BIRTH      DATE         
사라짐
*/

--unused 사용
alter table dept20
set unused(birth);

desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(30) 
ANNASAL    NUMBER       
테이블에서 사라짐
*/

--완벽하게 삭제
alter table dept20
drop unused columns;

--######################################################
--테이블 명 변경하기
rename dept20 to emp20;

desc emp20;
select * from emp20;

--####################################################
--테이블 삭제하기
drop table emp20;

desc emp20;
-- 사라져서 안나옴!!!

--####################################################
--구조는 가지고 가고 데이터만 지움
--테이블의 모든 데이터 제거

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



--02 테이블 구조를 변경
desc dept20;

select * from dept20;


--######################################################
--컬럼 추가 명령문
alter table dept20
add(birth date);

desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(10) 
ANNASAL    NUMBER       
BIRTH      DATE    -> c추가됨
*/

--사원 이름 컬럼 크기 변경하기
alter table dept20
modify ename varchar2(30);
desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(30) -> 더 큰 사이즈로 변경된 것을 확인 할 수 있음.
ANNASAL    NUMBER       
BIRTH      DATE         
*/


--
alter table dept20
add(job varchar2(30));

desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(30) 
ANNASAL    NUMBER       
BIRTH      DATE         
JOB        VARCHAR2(30) 
추가됨!
*/

--사원 테이블ㅇ에서 직급 컬럼 제거하기
alter table dept20
drop column job;

desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(30) 
ANNASAL    NUMBER       
BIRTH      DATE         
사라짐
*/

--unused 사용
alter table dept20
set unused(birth);

desc dept20;
/*
이름      널? 유형           
------- -- ------------ 
ENO        NUMBER(4)    
ENAME      VARCHAR2(30) 
ANNASAL    NUMBER       
테이블에서 사라짐
*/

--완벽하게 삭제
alter table dept20
drop unused columns;

--######################################################
--테이블 명 변경하기
rename dept20 to emp20;

desc emp20;
select * from emp20;

--####################################################
--테이블 삭제하기
drop table emp20;

desc emp20;
-- 사라져서 안나옴!!!

--####################################################
--구조는 가지고 가고 데이터만 지움
select * from department_bak;                                                                                                                                                                                                                                                                                                                          

truncate table department_bak;

--컬럼만 남아있고 데이터는 전부 사라짐!!
select * from department_bak;


--#################
--데이터 사전
select table_name from user_tables;

select owner, table_name from all_tables;

select owner, table_name from dba_tables;

--01 다음 표에 명시된 대로 DEPT 테이블을 생성하시오
create table dept_1(
        dno number(2),
        dname varchar2(14),
        loc varchar2(13));
desc dept_1;

--2
create table emp_1(
        eno number(4),
        ename varchar2(10),
        dno varchar2(2));
desc emp_1;

--03 rls dlfmadmf wjwkdgkf tn dlTehfhr 드ㅔ 
alter table emp_1
modify ename varchar2(25);
        
desc emp_1;

--04 
create table employee2
as
select eno EMP_ID, ename NAME, salary SAL, dno DEPT_ID
FROM EMPLOYEE;
SELECT * FROM EMPLOYEE2;

--05
DROP TABLE emp_1;
DESC emp_1;

--06
RENAME  EMPLOYEE2 TO emp_1;
SELECT * FROM emp_1;

--07
ALTER TABLE dept_1
DROP column dname;
desc dept_1;

--08
alter table dept_1
set unused(loc);

desc dept_1;

alter table dept_1
drop unused columns;