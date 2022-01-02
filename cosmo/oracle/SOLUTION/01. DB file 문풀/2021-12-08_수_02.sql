create user usertest01 identified by pass1;

conn usertest01/pass1;

grant create session to usertest01;

grant create table to usertest01;
alter user usertest01 quota 2m on system;

select username, default_tablespace
  from dba_users
 where username in 'USERTEST01';
 
 alter user usertest01 identified by 1234;
 
-- 권한 제거
revoke create session from usertest01;

-- 권한 재 부여하기
grant create session to usertest01;

select * from session_privs;

create user usertest2 identified by pass2;
create user usertest3 identified by pass3;

grant create session, create table, create view to usertest2;
grant create session, create table, create view to usertest3;

--# hr 계정 접속 스크립트  ################################

grant select on hr.employee to usertest01;

grant select on hr.employee to usertest2 with grant option;

grant select on hr.employee to usertest3;

grant select on hr.department to public;

--#########################################################
-- 시스탬 롤 부여하기 

create  user usertest04 identified by pass4;
grant connect to usertest04;
grant resource to usertest04;

--  사용자 정의 롤 생성 및 권한 부여하기 
create role roletest01;

grant create session, create table, create view to roletest01;

grant roletest01 to usertest01;

select *
  from role_sys_privs  -- 롤에 부여된 시스템 권한 정보
 where role like '%TEST%';
/* -- 사용자에게 부여된 롤을 확인
SQL> conn usertest01/1234;
Connected.
SQL>
SQL>
SQL> select * from user_role_privs;
*/
 
-- 롤 제거하기
drop role roletest01;
 
--객체 권한을 롤에 부여하기
show user;  -- USER이(가) "SYS"입니다.
create role roletest02;
 -- > hr계정에서 객체권한 부여
--객체 권한을 롤에 부여하기
-- grant select on employee to roletest02;
show user;  -- USER이(가) "SYS"입니다.
grant roletest02 to usertest01;

-- SQL> connect usertest01/1234
--  SQL> select * from hr.employee;
-- SQL> select * from user_role_privs;

select * from role_tab_privs;


-- 동의어  
‘전용 동의어’는 개별 사용자를 대상으로 하는 동의어
객체에 대한 접근 권한을 부여받은 사용자가 정의하며 해당 사용자만 사용

‘공용 동의어’는 전체 샤용자를 대상으로 한 동의어로 권한을 주는 사용자가 정의한 동의 
어를 누구나 사용  -- SYNONYM 앞에 PUBLIC 붙여서 정의

show user;
create table sampletbl(
    memo varchar2(50)
);

insert into sampletbl values('오월은 푸르구나!');
insert into sampletbl values('최선을 다 합니다');

grant select on sampletbl to hr;

-- 공용 동의어(synonym) 생성 
create public synonym pub_sampletbl for sys.sampletbl;

