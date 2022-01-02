grant select on hr.employee to usertest01;


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


--객체 권한을 롤에 부여하기
grant select on employee to roletest02;


--#######################################################
--동의어 적용 안함!
select * from sys.sampletbl;
--sys.까지 쳐줘야만 읽을 수 있음

--동의어를 만듬
create synonym priv_sampletbl for sys.sampletbl;
select * from priv_sampletbl;
--동의어 만으로도 읽어올 수 있음.

--공용도으이어 읽어오기
select * from pub_sampletbl;


--동의어 제거하기
drop synonym priv_sampletbl;
select * from priv_sampletbl;
--조회 안됨!!!