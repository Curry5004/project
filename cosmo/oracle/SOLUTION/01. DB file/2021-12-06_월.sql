create table dept_copy
as
select * from department where 0=1;  -- where 0=1 구조만 생성

insert into dept_copy
values(10, 'ACCOUNTING', 'NEW YORK');

COMMIT;

select * from dept_copy;

-- RESEARCH 부서의 정보 입력하기 
insert into dept_copy
(dno, loc, dname)
values(20, 'DALLAS', 'RESEARCH');

select * from dept_copy;
commit;

insert into dept_copy
(dno, dname)
values(30, 'SALES');
commit;
select * from dept_copy;

insert into dept_copy
values(40, 'OPERATIONS', NULL);
commit;
select * from dept_copy;

insert into dept_copy
values(50, 'COMPUTING', ' ');
commit;
select * from dept_copy;

create table emp_copy_1
as
select eno, ename, job, hiredate, e.dno, d.dname
from employee e, department d
where e.dno = d.dno and 0=1 ;

select * from emp_copy_1;

desc emp_copy_1;

insert into emp_copy
values(7000, 'CANDY', 'MANAGER', '2012/05/01', 10);
commit;
select * from emp_copy;

insert into emp_copy
values(7010, 'TOM', 'MANAGER', TO_DATE('2012.05.01', 'YYYY.MM.DD'), 20);
commit;

select * from emp_copy;

insert into emp_copy
values(7020, 'JERRY', 'SALAESMAN', SYSDATE, 30);
commit;
select * from emp_copy;

drop table dept_copy;
-- 테이블 구조만 생성
create table dept_copy
as
select * from department where 0=1;

-- 서브 쿼리로 다중 행 입력하기 
 insert into dept_copy
 select * from department;
commit;

select * from dept_copy;

-- WHERE 절로 특정 로우만 수정하기 
update dept_copy
   set dname = 'PROGRAMMING'
 where dno = 10;
 
 commit;
 
 select * from dept_copy
  where dno = 10;

update dept_copy
set dname = 'HR';

select * from dept_copy;
commit;

update dept_copy
set dname= 'PROGRAMMING', loc='SEOUL'
WHERE DNO = 10;
commit;
select * from dept_copy;

-- 10번 부서의 지역명을 20번 부서의 지역명으로 변경하기 
update dept_copy
  set loc=(select loc from dept_copy where dno=20) -- DALLAS
where dno = 10;
commit;

-- 여러 개의 컬럼 값 변경하기 
update dept_copy
   set dname= (select dname from dept_copy where dno = 30)
     , loc=(select loc from dept_copy where dno=30)
 where dno = 10;
commit;
select * from dept_copy;

-- WHERE 절로 특정 로우만 삭제하기 
delete from dept_copy
where dno=10;
commit;

delete dept_copy;

drop table emp_copy;

create table emp_copy
as
select * from employee;

select * from emp_copy;
-- 영업부에 근무하는 사원을 모두 삭제
delete emp_copy
 where dno = (select dno from department where dname='SALES');  --30
commit;

select * from emp_copy;

drop table dept_copy;

create table dept_copy
as
select * from department;

select * from dept_copy;

delete dept_copy;

rollback;

delete dept_copy
where dno =20;

select * from dept_copy;

commit;

select * from employee where ename = 'SMITH';

-- CHAPTER 10
-- 칼럼 레벨  constraint
create table dept_second(
   dno number(2) constraint pk_dept_second primary key,
   dname varchar2(14),
   loc varchar2(13));

-- 테이블 레벨 constraint
create table dept_third(
    dno number(2),
    dname varchar2(14),
    loc varchar2(13),
    constraint pk_dept_third primary key(dno)); 

--NOT NULL 제약 조건 지정하기    
create table customer(
    id varchar2(20) not null,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    phone varchar2(30),
    address varchar2(100));
    
insert into customer
values(null, null, null, '010-111-1111', 'seoul');
/* 오류 보고 -
ORA-01400: cannot insert NULL into ("HR"."CUSTOMER"."ID") */

-- 유일한 값만 허용하는 UNIQUE 제약 조건 

drop table customer;

-- UNIQUE 제약 조건 지정하기 
create table customer(
    id varchar2(20) unique,
    pwd varchar2(20) not null,
    name varchar2(20) not null,
    phone varchar2(30),
    address varchar2(100));

insert into customer
values('greentea', '1234', '녹차아가씨', '010-111-1111', 'seoul');
commit;

--중복 id 입력불가
insert into customer
values('greentea', '1231234', '그린티', '010-222-1111', 'busan');
 
-- NULL은 UNIQUE 제약 조건에 위반되지 않으므로 NULL 값을 허용    
insert into customer
values(null, '4321', '커피', '010-333-1111', 'seoul');    
commit;
insert into customer
values(null, '1231234', '그린티커피', '010-555-1111', 'seoul');    

select * from customer;

drop table customer;

create table customer(
    id varchar2(20) constraint customer_id_uk unique,
    pwd varchar2(20) constraint customer_pwd_nn not null,
    name varchar2(20) constraint customer_name_nn not null,
    phone varchar2(30),
    address varchar2(100));

-- 제약 조건 확인하기 
select *  -- table_name, constraint_name
  from user_constraints
 where table_name = 'CUSTOMER';
 
-- 제약 조건 삭제하기
alter table customer
drop constraint customer_name_nn; 
 
-- 1.3 데이터 구분을 위한 PRIMARY KEY 제약 조건 
drop table customer;

create table customer(
    id varchar2(20),
    pwd varchar2(20) constraint customer_pwd_nn not null,
    name varchar2(20) constraint customer_name_nn not null,
    phone varchar2(30),
    address varchar(100),
    constraint customer_id_pk primary key(id)); 

 
 insert into customer
values('greentea', '1231234', '그린티', '010-222-1111', 'busan');
 commit;

--중복 id 입력불가
insert into customer
values('greentea', '1231234', '그린티', '010-222-1111', 'busan');

insert into customer
values(null, '1231234', '그린티커피', '010-555-1111', 'seoul');  

-- 1.4 참조 무결성을 위한 FOREIGN KEY 제약 조건 
select * from department;

insert into employee(eno, ename, dno)
values(8000, '윤정화', 50);


--  FOREIGN KEY 제약 조건 지정하기 
create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    job varchar2(9),
    dno number(2) constraint emp_second_dno_fk references department);
select * from emp_second;

insert into emp_second
 values(8000, '윤정화', 'FC', 50);
    
-- 1.5 값의 범위를 설정하는 CHECK 제약 조건 
drop table emp_second;

create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    salary number(7, 2) constraint emp_second_salary_min check(salary > 0));

insert into emp_second
values(8000, '윤정화', -200);

select * from emp_second;

drop table emp_second;

create table emp_second(
    eno number(4) constraint emp_second_eno_pk primary key,
    ename varchar2(10),
    salary number(7, 2) default 1000);
    
-- DEFAULT 제약 조건 지정한 컬럼 값 생략 
insert into emp_second
(eno, ename)
values(8000, '윤정화');
commit;
select * from emp_second;


select * from   emp_copy;

create table emp_copy_temp
as
select * from employee;

create table dept_copy_temp
as
select * from department;

select table_name, constraint_name
from user_constraints
where table_name in ('EMP_COPY_TEMP', 'DEPT_COPY_TEMP');

-- PRIMARY KEY 제약 조건 추가하기 

alter table emp_copy_temp
add constraint emp_copy_temp_eno_pk primary key(eno);

alter table dept_copy_temp
add constraint dept_copy_temp_dno_pk primary key(dno);

alter table emp_copy_temp
add constraint emp_copy_temp_dno_fk
foreign key(dno) references dept_copy_temp(dno);

-- MODIFY NOT NULL로 NULL 값 허용하지 않기 
alter table emp_copy_temp
modify ename constraint emp_copy_temp_ename_nn not null;

-- cascade 옵션으로 종속 제약 조건까지 모두 제거하기
alter table dept_copy_temp
drop primary key cascade;

select table_name, constraint_name, status
from user_constraints
where table_name in ('EMP_COPY_TEMP', 'DEPT_COPY_TEMP');

alter table emp_copy_temp
drop constraint EMP_COPY_TEMP_ENAME_NN;

alter table emp_copy_temp
drop primary key cascade;

select * from DEPT_COPY_TEMP;

insert into emp_copy_temp(eno, ename, dno)
values(8000, '윤정화', 50);

alter table emp_copy_temp
disable constraint EMP_COPY_TEMP_DNO_FK;

alter table emp_copy_temp
enable constraint EMP_COPY_TEMP_DNO_FK;

1. 테이블명 address, id NUMBER(3), name VARCHAR2(50), addr VARCHAR2(100), phone VARCHAR2(30), email VARCHAR2(100)
주소록 테이블 생성하기
create table address (
	id      number(3),
	name    varchar2(50),
	addr    varchar2(100),
	phone   varchar2(30),
	email   varchar2(100)
);


2. 서브쿼리 절을 이용하여 주소록 테이블의 구조와 데이터를 복사하여 addr_second 테이블을 생성
create table addr_second
as
select * from address;

3.  주소록 테이블에서 id, name 칼럼만 복사하여 addr_forth 테이블을 생성 (구조만 복사)

create table addr_forth as
select id, name from address where 0=1;

4 - 1) address테이블에 5개의 데이터를 추가하세요  ex.) 1,'슬기','안산','112','seulgizzang@naver.com'   
                                                   2,'아이린','대구','119','dkdlfls@nate.com'  등 임의로 생성
      select * from address;                                             
 insert into address
values(1,'슬기','안산','112','seulgizzang@naver.com'); 
insert into address
values(2,'아이린','대구','119','dkdlfls@nate.com');
insert into address
values(3,'웬디','America','911','wendy123@yahoo.com');                                                   
 insert into address
values(4,'조이','인천','032','joyjoyjoy@hanmail.net');   
insert into address
values(5,'예리','몬스터볼','3123','KKobugi1@monsterball.com');
commit;
4 - 2) address 테이블에서 id, name 만 가진 address2 테이블을 만들고 자료를 전부 가지고 오기
create table address2
as
select id, name from address;

select * from address2;

5. 주소록 테이블에 날짜 타입을 가지는 birth 칼럼을 추가 , 
alter table address
add (birth date);
desc address;
6. 주소록 테이블에 문자 타입을 가지는 comments 칼럼을 추가
alter table address
add(comments varchar2(50));

7. 주소록 테이블에서 comments 칼럼을 삭제
alter table address drop column comments;

8. 8번 주소록 테이블에서 phone 칼럼의 데이터 타입의 크기를 50으로 증가
alter table address
modify (phone varchar2(50));
desc address;

9. 테이블 이름 변경 (addr_second  -> client_address)
rename addr_second to client_address;
desc client_address;

10. client_address 테이블 삭제
drop table client_address;

11. address2 테이블 구조는 그대로 유지하고 데이터와 할당된 공간을 삭제
truncate table address2;
select * from address2;

12. 아래를 참조하여 테이블을 만드세요 Table name : Member
USERID VARCHAR2(10) 사용자아이디 , USERNAME VARCHAR2(10) 회원이름 , PASSWD  VARCHAR2(10) 비밀번호 
IDNUM  VARCHAR2(10) 주민등록번호 , PHONE      NUMBER(13) 전화번호 , ADDRESS VARCHAR2(20) 주소 
,   REGDATE    DATE 가입일 

create table member
     ( userid varchar2(10)
     , username varchar2(10)
     , passwd varchar2(10)
     , idnum varchar2(10)
     , phone number(13)
     , address varchar2(20)
     , regdate date
     , interest varchar2(15));

comment on table member is '회원 테이블';
comment on column member.userid is '사용자 아이디';
comment on column member.username is '사용자명';


13. 회원 테이블의 구조와 데이터 집합이 같은 member_second 테이블을 생성하세요.
create table member_second
as select * from member;


14. 회원 테이블의 userid, username, passwd 칼럼만 복사하여 member_third 테이블을 생성하세요.
create table memeber_third
as select  userid, username, passwd from member;

15. 회원 테이블과 구조는 동일하고 데이터는 가지지 않는 member_forth 테이블을 생성하세요.(구조만)
create table member_forth
as select * from member where 0=1;

16. 회원 테이블에 email 칼럼을 추가하세요. 단 email 칼럼의 데이터 타입은 VARCHAR2(50)이다.
alter table member
add(email varchar2(50));
desc member;
17. 회원 테이블에 국적을 나타내는 country 칼럼을 추가하세요
alter table member
add(country varchar2(30));
desc member;

18. 원 테이블에서 주민등록번호 칼럼을 삭제하세요
alter table member
drop column idnum;

19. 회원 테이블의 address 칼럼의 데이터 크기를 30으로 증가
alter table member 
modify address varchar2(30);


1. 테이블명 DEPT학번c  이고   NO     NUMBER(7)  NO에 프라이머리 키 제약조건 추가, 
                             NAME  VARCHAR2(25)  인 테이블 생성
create table   DEPT학번c (
    NO     NUMBER(7) constraint DEPT학번c_NO_PK PRIMARY KEY,
    NAME   VARCHAR2(25));
                             
2.  테이블 이름을 DEPT학번c 에서 D학번 으로 변경하세요.
rename DEPT학번c to  D학번;

3.  NAME 칼럼에 NOT NULL 제약조건을 추가하세요
alter table D학번 modify name varchar2(10) constraint D학번_NAME_NN not null;

4.  regionid 칼럼을 NUMBER(5)로 추가하세요.
alter table D학번 ADD regionid number(5);
desc D학번; 

5. 학번 테이블의 제약조건을 확인쿼리(DB사전테이블 이용) 작성하세요
select table_name, constraint_name, status
  from user_constraints
  where table_name = 'D학번'; 
  













