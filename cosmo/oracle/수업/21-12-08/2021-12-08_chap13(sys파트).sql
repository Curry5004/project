--생성함
create user usertest01 identified by pass1;

--연결 할 수 없음! 권한 줘야함
conn usertest01/pass1;

--이건 데이터베이스에 연결만 할 수 있는 권한을 준 것
grant create session to usertest01;
--테이블은 만들 수 없다

--테이블을 쓸 수 있는 권한 추가
grant create table to usertest01;
--하지만 테이블은 생성할 수없다. 테이블 스페이스를 할당받지 못했기 뚬넹
/*create table sampletable(
*
ERROR at line 1:
ORA-01950: no privileges on tablespace 'SYSTEM'
*/


--usertest01에 2mb 사용 할 수 있는 권한을 보여해줌
alter user usertest01 quota 2m on system;


--테이블 스페이스를 조회하는 ㅜ커리
select username, default_tablespace
from dba_userS
where username in 'USERTEST01';



--비밀번호 바꾸기
alter user usertest01 identified by 1234;


--권한제거
revoke create session from usertest01;
/*ERROR:
ORA-01045: user USERTEST01 lacks CREATE SESSION privilege; logon denied
권한이 제거되어 작성안됨
*/

 select * from session_privs; --권한조회
 /* 지금 usertest01은
 CREATE SESSION
CREATE TABLE
권한만 부여받은 것을 알 수 있다.
*/

create user usertest2 identified by pass2;
create user usertest3 identified by pass3;

grant create session , create table, create view to usertest2;
grant create session , create table, create view to usertest3;


-권한 재부여하기
grant create session to usertest01;
select * from session_privs;


with grant option 사용하기!!! hr 3번쨰 줄 참고 코드 복붙
/*
--with grant option 파트!!!
--usertest2는 자기 테이블이 아님에도 불구하고 다른 유저들에게 권한을 줄 수 있음

grant select on hr.employee to usertest2 with grant option;
--이렇게 설정된 usertest는 자기 테이블이 아님에도 불구하고 해당 테이블 권한을 줄 수 있음
grant select on hr.employee to usertest3;
--얘는 권한을 못받아서 줄 수가 없다.

--모든 사용자들이 해당 테이블에 접근 할 수있도록 개방하는 것.
grant select on hr.department to public;
/*
SQL> conn usertest01/1234;
Connected.
SQL> selecr * from hr.department;
SP2-0734: unknown command beginning "selecr * f..." - rest of line ignored.
SQL> select * from hr.department;

       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON

SQL> conn usertest2/pass2
Connected.
SQL> select * from hr.department;

       DNO DNAME                        LOC
---------- ---------------------------- --------------------------
        10 ACCOUNTING                   NEW YORK
        20 RESEARCH                     DALLAS
        30 SALES                        CHICAGO
        40 OPERATIONS                   BOSTON
        
이런식으로 권한 없어도 select 해올 수 있음
*/

--다시 system으로 이동
*/






--######################################################
--시스템 롤 부여하기.
;
create user usertest04 identified by pass4;
grant connect to usertest04;
grant resource to usertest04;

--사용자 정의 롤 생성 및 권한 부여하기
create role roletest01;
grant create session, create table, create view to roletest01;
grant roletest01 to usertest01;

select *
from role_sys_privs --롤에 부여된 시스템 권한 정보
where role like '%TEST%';
/*
SQL> CONN usertest01/1234;
Connected.
SQL> select * from user_role_privs;

USERNAME                                                     GRANTED_ROLE
          ADMIN_ DEFAUL OS_GRA
------------------------------------------------------------ ------------------------------------------------------------ ------ ------ ------
USERTEST01                                                   ROLETEST01
          NO     YES    NO
*/

--롤 제거하기
drop role roletest01;
--제거하고 나선 조회가 안됨!

--객체 권한을 롤에 부여하기
show user; --USER이(가) "SYS"입니다.
create role roletest02;
-->hr 계정 객체 권한 부여
--hr로 이동(객체권한 롤에 부여하기)-------------------->
/*
--객체 권한을 롤에 부여하기
grant select on employee to roletest02;
*/
show user;
grant roletest02 to usertest01;

/*
SQL> sho user
USER is "USERTEST01"
SQL> select * from user_Role_privs;

USERNAME                                                     GRANTED_ROLE                                                 ADMIN_ DEFAUL OS_GRA
------------------------------------------------------------ ------------------------------------------------------------ ------ ------ ------
USERTEST01                                                   ROLETEST02                                                   NO     YES    NO
*/

--어드민이 가지고 있는 모든 롤을 조회함
select * from role_tab_privs;



--#########################################
--동의어
전용 동의어는 개별 사용자를 대상으로 하는 동의어
객체에 대한 접근 권한을 부여받은 사용자가 정의하며 해당 사용자만 사용

공용 동의어는 전체 사용자를 대상으로 한 동의어로 권한을 주는 사용자가 정의한 동의어를
누구나 사용 --sysnoym 앞에 public 붙여서 정의

--우선 실험용 테이블 생성
show user;
create table sampletbl(
    memo varchar2(50)
    );
    
insert into sampletbl values('오월은 푸르구나!');
insert into sampletbl values('최선을 다 합니다');
commit;
--동의어 하지 않고 그냥 보냄
grant select on sampletbl to hr;
-- hr---------------->

--동의어 만들기
--hr-------------------->

--public synonym 만들기
create public synonym pub_sampletbl for sys.sampletbl;



--##혼자해보기

--1
create user kbs identified by pass;
grant connect to kbs;
grant resource to kbs;