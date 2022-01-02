create table dept_copy
as
select * from department where 0=1;

select * from dept_copy;

insert into dept_copy
--컬럼절을 명시하지 않으면 테이블의 컬럼 순서대로 작성한다.
values(10, 'ACCOUNTING', 'NEW YORK');

select * from dept_copy;

COMMIT;

select * from dept_copy;

--RESEARCH 부서의 정보 입력하기.
insert into dept_copy
(dno, loc, dname)
/*이렇게 값을 입력할 떄 순서를 바꿀수도 있다*/
--데이터를 삽입할떄 컬럼절의 순서를 바꿀 수 있다.
values(20, 'DALLAS', 'RESEARCH');

select * from dept_copy;

COMMIT;

select * from dept_copy;


--해당 컬럼의 데이터에 null을 넣으면 어떻게 될까
--아예 컬럼을 비우고 넣으면 된다.
insert into dept_copy
(dno, dname)
values(20, 'SALES');
COMMIT;
SELECT * FROM DEPT_COPY;
--아예 의도적으로 NULL값을 삽입 할 수도 있다.
INSERT INTO DEPT_COPY
VALUES(40, 'OPERATIONS', NULL);
COMMIT;
SELECT * FROM DEPT_COPY;

INSERT INTO DEPT_COPY
VALUES(50, 'COMPUTING', ' ');
COMMIT;
SELECT * FROM DEPT_COPY;


--실습용 테이블 작성
CREATE TABLE EMP_COPY
AS
SELECT eno, ename, job, hiredate, dno from employee where 0=1;

--데이터 삽입

insert into emp_copy
values(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);
SELECT * FROM EMP_COPY;
COMMIT;
SELECT * FROM EMP_COPY;

INSERT into emp_copy
values(7010, 'TOM', 'MANAGER', TO_DATE('2012.05.01', 'YYYY.MM.DD.'), 20);
COMMIT;
SELECT * FROM EMP_COPY;

--오늘 날짜로 입력된 것을 확인할 수 있다.
insert into emp_copy
values(7020, 'JERRY', 'SALESMAN', SYSDATE, 30);
COMMIT;
SELECT * FROM EMP_COPY;

--실습을 위해 앞에서 쓴건 제거.
DROP TABLE DEPT_COPY;

--컬럼만 만드는거 생성.
create table dept_copy
as
select * from department where 0=1;

select * from dept_copy;


--서브쿼리를 작성하여 데이터 삽입
insert into dept_copy
select * from department;
commit;
select * from dept_copy;
desc dept_copy;

--where 절로 특정 로우만 수정하기
update dept_copy
set dname='PROGRAMMING'
WHERE dno=10;
commit;
select * from dept_copy;

update dept_copy
set dname='HR';

SELECT * FROM dept_copy;
COMMIT;

update dept_copy
set dname='PROGRAMMING', LOC='SEOUL'
WHERE DNO=10;
COMMIT;
SELECT * FROM DEPT_COPY;

--10번 부서의 지역명을 20번 부서의 지역명으로 변경하기
update dept_copy
 set loc=(select loc from dept_copy where dno=20) --DALLAS
where dno=10;
commit;

--여러개의 컬럼값을 변경하기.
update dept_copy
set dname=(select dname from dept_copy where dno=30), loc=(select loc from dept_copy where dno=30)
where dno=10;
commit;

--where절로 특정 로우만 삭제하기
--from은 생략 가능함!
delete from dept_copy
where dno=10;
commit;

--where절로 모든 로우를 삭제하고자 한다.
delete dept_copy;
commit;
SELECT * FROM DEPT_COPY;

drop table emp_copy;

-- 서브쿼리를 통한 테이블 작성
create table emp_copy
as
select * from employee;

select * from emp_copy;

--서브쿼리를 통해 특정 로우만 삭제
--영업부에 근무하는 모든 사원들 삭제
delete emp_copy
where dno=(select dno from department where dname='SALES');
COMMIT;
SELECT * FROM EMP_COPY;


--테이블 생성할 떄 테이블 JOIN 해서도 사용할 수 있다.
CREATE TABLE emp_copy_1
as 
select eno, ename, job, hiredate, e.dno, d.dname
from employee e, department d;
desc emp_copy_1;



--############################################################################
--트렌젝션 들어감
drop table dept_copy;

create table dept_copy
as
select * from department;

select * from dept_copy;

--DML문 같은 경우는 여러개의 작업이 뭉친 트렌젝션
delete dept_copy;
rollback;
--오라클인 경우는 이렇게 ROLLBACK할 수 있지만 MYSQL 같은 경우는 DDL 문 처럼 타이핑 하자마자 커밋이 되어버리기 떄문에 꼬오오옥 주의할 것

DELETE DEPT_COPY
WHERE DNO=10;
COMMIT;


--혼자해보기
--1
create table EMP_INSERT
AS
SELECT * FROM EMPLOYEE WHERE 0=1;
select * from emp_insert;


--02
insert into emp_insert
values(1, 'HONG', 'STUDENT', NULL, SYSDATE, NULL, NULL, NULL);

select * from emp_insert;
COMMIT;

--03
insert into emp_insert
values(2, 'SO', 'STUDENT', NULL, TO_DATE('2021/12/05', 'YYYY/MM/DD'), NULL, NULL, NULL);
COMMIT;

--04
CREATE TABLE EMP_COPY
AS 
SELECT * FROM EMPLOYEE;

--05
select dno from emp_copy where eno=7788;
update emp_copy
set dno=10
where eno=7788;
commit;

--06
select * from emp_copy where eno=7788;
update emp_copy
set (job, salary) = (select job, salary from emp_copy where eno=7499)
where eno=7788;
commit;

--07
select * from emp_copy where eno=7369;
select * from emp_copy where job=(select job from emp_copy where eno=7369);

update emp_copy
set dno = (select dno from emp_copy where eno=7369)
where job = (select job from emp_copy where eno=7369);
commit;

--08
select * from dept_copy;
drop table dept_copy;

create table dept_copy
as
select * from department;


--09
delete dept_copy
where dname='RESEARCH';
COMMIT;

--10
delete dept_copy
where dno in (10, 40);
commit;


--#####################################################################
--Chap 10

--컬럼 단위 제약조건 constraint
create table dept_second(
    dno number(2) constraint pk_dept_second primary key, /*제약조건을 컬럼 단위로 들어감*/
    dname varchar2(14),
    loc varchar2(13));
desc dept_second;

drop table dept_third;

--테이블 단위 constraint
create table dept_third(
    dno number(2),
    dname varchar2(14),
    loc varchar2(13),
    constraint pk_dept_third primary key(dno));

--not null 제약조건 지정하기.
create table customer(
    id varchar2(20) not null,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    phone varchar2(30),
    address varchar2(100));
    
--not null 선언 된 컬럼에 null을 넣었을 때 오류가 발생한 것을 확인 할 수 있다.
insert into customer
values (null, null, null, '010-111-1111', 'seoul');
--오류 보고 -
--ORA-01400: cannot insert NULL into ("HR"."CUSTOMER"."ID")



--유일한 값만 허용하는 unique 제약조건
drop table customer;

--uinique 제약조건 지정하기.
create table customer(
    id varchar2(20) unique,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    phone varchar2(30),
    address varchar2(100));

drop table custmoer;
    
insert into customer
values('greentea', '1234', '녹차아가씨', '010-111-1111', 'seoul');
commit;

--unique 선언이 되었기 때문에 중복된 데이터가 들어갈 수 없다.
insert into customer
values('greentea', '1234123', '그린티', '010-222-1111', 'busan');
--오류 보고 -
--ORA-00001: unique constraint (HR.SYS_C007020) violated

--null은 unique 제약조건에 위반되지 않으므로 null값 허용
insert into customer
values(null, '123', '커피', '010-333-1111', 'seoul');
commit;


insert into customer
values(null, '1245613', '그린티커피', '010-555-1111', 'seoul');
commit;

select * from customer;

drop table customer;

create table customer(
/* 테이블명이랑 컬럼이랑 uk 붙여서 진행 -> 이게 재한조건 이름임. 나중에 검색해서 확인하기 쉬우라고 이렇게 설정해줌*/
    id varchar2(20) constraint customer_id_uk unique,
    pwd varchar2(20) constraint customer_pwd_nn not null,
    name varchar2(20) constraint customer_name_nn not null,
    phone varchar2(30), 
    address varchar2(100));
    
--제약조건 확인하기
--사전(?) 사용
select table_name, constraint_name
from user_constraints
where table_name= 'CUSTOMER';

--제약조건은 나중에 alter table을 통해 제거할 수도 있다.
alter table CUSTOMER
drop constraint customer_name_nn;


--데이터 구분을위한 PRIMARY KEY 제약조건
--우선 제거해줌
DROP TABLE customer;

create table customer(
    id varchar2(20),
    pwd varchar2(20) constraint customer_pwd_nn not null,
    name varchar2(20) constraint customer_name_nn not null,
    phone varchar2(30),
    address varchar2(30),
    constraint customer_id_pk primary key(id));
    
insert into customer
values('greentea', '1234123', '그린티', '010-222-1111', 'busan');
commit;

--uniqui 선언을 하였기 떄문에 중복 입력이 불가함
insert into customer
values('greentea', '1234123', '그린티', '010-222-1111', 'busan');
--오류 보고 -
--ORA-00001: unique constraint (HR.CUSTOMER_ID_PK) violated

--null선언도 불가
insert into customer
values(null, '1234123', '그린티', '010-222-1111', 'busan');
/*오류 보고 -
ORA-01400: cannot insert NULL into ("HR"."CUSTOMER"."ID")*/


--###########################################################
--참조 무결성을 위한 forign key 제약조건.
select * from department;
--넣을 수 없음!
insert into employee(eno, ename, dno)
values(8000,'윤정화',50);
/*오류 보고 -
ORA-02291: integrity constraint (HR.FK_DNO) violated - parent key not found*/
--왜냐? 해당 테이블의 dno는 forgin key를 지정하여 부모 테이블에 없는 값을 입력할 수 없게 되어있다.

-- foreign key 제약 조건 지정하기
create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    job varchar2(9),
    dno number(2) constraint emp_second_dno_fk references department);
    
    select * from emp_second;

insert into emp_second
values(8000, '윤정화','FC', 50);
/*
오류 보고 -
ORA-02291: integrity constraint (HR.EMP_SECOND_DNO_FK) violated - parent key not found
입력이 안됨. FOREEGIN KEY가 제대로 설정된걸 확인 할 수 있음.*/




--1.5 값의 범위를 서정하는 CHECK 제약 조건
drop table emp_second;

create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    salary number(7,2) constraint emp_second_salary_min check(salary>0));
    
insert into emp_second
values(8000, '윤정화', -200);
/*오류 보고 -
ORA-02290: check constraint (HR.EMP_SECOND_SALARY_MIN) violated
check가 정상적으로 설정된 것을 확인 할 수있으며 그 결과로 오류가 발생한다.
*/


--default 제약조건.
drop table emp_second;

create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    salary number(7,2) default 1000);
-- salary를 입력 ㅇ나하면 기본으로 1000 자동으로 입력됨

--default 제약 조건을 지정한 컬럼 값 생략!
insert into emp_second
(eno, ename)
values (8000, '윤정화');
select * from emp_second;
commit;
--salary를 입력하지 않았는데도 알아서 1000이 들어오게 됨. 이게 default 제약조건!



---------------------------------
--제약조건 추가하기
drop table dept_copy;

create table dept_copy
as
select * from department;

--해당 테이블에 제약조건이 있는지 확인하는 사전
select table_name, constraint_name, status
from user_constraints
where table_name in ('EMP_COPY', 'DEPT_COPY');

--PRIMARY KET 제약 조건 추가하기
ALTER table emp_copy
add constraint emp_copy_eno_pk primary key(eno);

alter table dept_copy
add constraint dept_dopy_dno_pk primary key(dno);

alter table emp_copy
add constraint emp_copy_dno_fk foreign key(dno) references dept_copy(dno); 

--modify로 not null 넣어 null값 사용하지 않기 추가하기.
alter table emp_copy
modify ename constraint emp_copy_ename_nn not null;


--제약조건 제거하기.
--cascade 옵션을 ㅗ종속 제약 조건까지 모두 제거하는 것!
alter table dept_copy
drop primary key cascade;

alter table emp_copy
drop constraint emp_copy_ename_nn;

alter table emp_copy
drop primary key cascade;


--제약조건을 삭제하지않고 제약조건을 잠시만 비활성화 시키는 것
--데이터 처리를 할 떄 제약조건을 검색하는데 이산이 소요되어 잠시 제약조건을 중지 한 다음에 처리 한뒤 다시 제약조건을 살려주는 것,

select * from dept_copy;

insert into emp_copy(eno, ename, dno)
values(8000, '윤정화', 50);
--할 수 없음! 왜냐? dno porimary key가 설정이 되지 않으니까!

alter table emp_copy
disable constraint emp_copy_dno_fk;

--해당 테이블에 제약조건이 있는지 확인하는 사전
select table_name, constraint_name, status
from user_constraints
where table_name in ('EMP_COPY', 'DEPT_COPY');
--emp_copy_dno_fk는 남아있지만 status로 보면 disable 상태가 되어있음을 알 수 있다.

--다시 되돌리는 법
alter table emp_copy
enable constraint emp_copy_dno_fk;
--다시 위에서 status를 확인해보면 enable 된 것을 알 수 있다.


--##########################################################
--01
drop table emp_sample_1;

create table emp_sample_1
as
select * from employee where 0=1;

select * from emp_sample_1;

alter table emp_sample_1
add constraint my_emp_pk primary key(eno);


select table_name, constraint_name, status
from user_constraints
where table_name in ('emp_sample_1');

--02 
drop table dept_sample;

create table dept_sample
as
select * from department where 1=0;

alter table dept_sample
add constraint my_dept_key primary key(dno);

select table_name, constraint_name, status
from user_constraints
where table_name in ('dept_sample');

--03
alter table emp_sample_1
add constraint my_empt_dept_fk foreign key(dno) references  dept_sample(dno);

--04
alter table emp_sample_1
add constraint my_emp_commission_check check(commission>0);






--###############################################추가 문제 풀이
--01테이블명 address
--id number(3), name varchar2(50), addr varchar2(100), phone varchar2(30), email varchar2(100) 주소록 테이블 작성하기
create table address(
    id number(3),
    name varchar2(50),
    addr varchar2(100),
    phone varchar2(30),
    email varchar2(100));
    
--02서브쿼리 절을 사용하여 주소록 테이블의 구조와 데이터를 복사하여 addr_second 테이블을 생성
create table addr_second
as
select * from address where 0=1;

/*03 주소록 테이블에서 id, name 칼럼만 복사하여 addr_forth 테이블을 생성 구조만 복사*/
create table addr_forth
as
select id, name from address where 0=1;
select * from addr_forth;

/*04-1 address 테이블에 5개의 데이터를 추가하세요*/
select * from address;
insert into address
VALUES(1, '가', 'seoul', '010-111', 'mail1');
commit;

insert into address
VALUES(2, '가2', 'seoul2', '010-222', 'mail2');
commit;

insert into address
VALUES(3, '가3', 'seoul3', '010-333', 'mail3');
commit;

insert into address
VALUES(4, '가4', 'seoul4', '010-444', 'mail4');
commit;

insert into address
VALUES(5, '가5', 'seoul5', '010-555', 'mail5');
commit;

/*4-2 address 테이블에서 id, name만 가진 address2 테이블을 만듥 자료를 전부 가져오기*/
create table address2
as
select id, name from address;
desc address2;

/*05 주소록 테이블에 날짜 타입을 가지는 birth 컬럼을 추가
06 주소록 테이블에 문자 타입을 가지는 comments 칼럼을 추가*/
alter table address
add(birth date,
    comments varchar2(100));
commit;
select * from address;

/*07 주소록 테이블에서 comments 컬럼 제거*/
alter table address
drop column comments;
commit;

/*08 주소록 테이블에서 phone 컬럼의 데이터 타입의 크기를 50으로 증가*/
alter table address
modify phone varchar(50);
desc address;
commit;

/*09테이블 이름 변경(addr_second ->client_address)*/
rename addr_second to client_address;

/*10 client_address 테이블 삭제*/
drop table client_address;

/*11 address2 테이블 구조는 유지하고 데이터와 할당된 공산을 삭제*/
select * from address2;
truncate table address2;

/*12 아래를 참조하여 테이블을 만드세요
테이블 이름 Member
userid varchar2(10) 사용자아이디, username varchar2(10) 회원이름, passwd varchar2(10) 비밀번호, IDNUM VARCHAR2(10) 주민등록번호,
PHONE NUMBER(13) 전화번호, ADDRESS VARCHAR2(20) 주소, REGDATE DATE 가입일)*/
create table Member(
    userid varchar2(10),
    username varchar2(10) ,
    passwd varchar2(10),
    IDNUM varchar2(10) ,
    PHONE NUMBER(13),
    ADDRESS varchar2(20),
    REGDATE DATE);

--comment를 달아서 테이블 정보에 추가된다.    
comment on table member is '회원테이블';
comment on column member.userid is '사용자 아이디';
    
/*13 회원 테이블의 구조와 ㄷ데이터 집합이 같은 MEMBER_SECOND를 생성하세요*/
CREATE TABLE member_second
as
select * from member;

/*14 회원테이블의 userid, username, passwd 칼럼만 복사하여 ember_third 테이블을 생성하세요*/
create table  member_third
as
select userid, username, passwd from member;
/*15회원 테이블과 구조는 동일하고 데이터는 가지지않는 member_forth 테이블을 생성하세요*/
create table member_forth
as
select * from member where 0=1;

/*16 회원테이블에 email컬럼을 추가하세요*/
alter table member
add(email varchar2(50));
select * from member;
/*17 회원 테이블게 국적을 나타내느 country 컬럼을 추가하세요*/
alter table member
add(country varchar2(50));
commit;
/*18 회원 테이블에 주민등록번호 칼럼을 tkrwpgktpdy*/
alter table member
drop column IDNUM;
/*19 회원 테이블의 address 칼럼의 데이터 크기를 30으로 증가)*/
alter table member
modify(address varchar2(30));
commit;
desc member;

/*테이블명 dept학번c
no number(7)하고 no에 프라이머리 키 제약조건 추가
name varchar2(25) 인 테이블 생성*/
create table dept학번c(
    no number(7),
    name varchar2(25),
    constraint dept학번c_no_pk primary key(no));
    
    /*테이블 이름을 dept학번c에서 d학번으로 변경하세요*/
rename dept학번c to d학번;
desc d학번;
alter table d학번
add(regionid number(5));
desc d학번;

/*name column에 not null 조건을 추가하세요*/
alter table d학번 modify name varchar2(10) constraint d학번_name_nn not null;

/*학번 ㅌ테이블의 제약조건을 확인커리(db사전테이블 사용) 작성하세요*/

select table_name, constraint_name, status
from user_constraints
where table_name = ('D학번');