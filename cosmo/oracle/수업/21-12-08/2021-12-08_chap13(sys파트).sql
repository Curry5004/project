--������
create user usertest01 identified by pass1;

--���� �� �� ����! ���� �����
conn usertest01/pass1;

--�̰� �����ͺ��̽��� ���Ḹ �� �� �ִ� ������ �� ��
grant create session to usertest01;
--���̺��� ���� �� ����

--���̺��� �� �� �ִ� ���� �߰�
grant create table to usertest01;
--������ ���̺��� ������ ������. ���̺� �����̽��� �Ҵ���� ���߱� �ֳ�
/*create table sampletable(
*
ERROR at line 1:
ORA-01950: no privileges on tablespace 'SYSTEM'
*/


--usertest01�� 2mb ��� �� �� �ִ� ������ ��������
alter user usertest01 quota 2m on system;


--���̺� �����̽��� ��ȸ�ϴ� ��Ŀ��
select username, default_tablespace
from dba_userS
where username in 'USERTEST01';



--��й�ȣ �ٲٱ�
alter user usertest01 identified by 1234;


--��������
revoke create session from usertest01;
/*ERROR:
ORA-01045: user USERTEST01 lacks CREATE SESSION privilege; logon denied
������ ���ŵǾ� �ۼ��ȵ�
*/

 select * from session_privs; --������ȸ
 /* ���� usertest01��
 CREATE SESSION
CREATE TABLE
���Ѹ� �ο����� ���� �� �� �ִ�.
*/

create user usertest2 identified by pass2;
create user usertest3 identified by pass3;

grant create session , create table, create view to usertest2;
grant create session , create table, create view to usertest3;


-���� ��ο��ϱ�
grant create session to usertest01;
select * from session_privs;


with grant option ����ϱ�!!! hr 3���� �� ���� �ڵ� ����
/*
--with grant option ��Ʈ!!!
--usertest2�� �ڱ� ���̺��� �ƴԿ��� �ұ��ϰ� �ٸ� �����鿡�� ������ �� �� ����

grant select on hr.employee to usertest2 with grant option;
--�̷��� ������ usertest�� �ڱ� ���̺��� �ƴԿ��� �ұ��ϰ� �ش� ���̺� ������ �� �� ����
grant select on hr.employee to usertest3;
--��� ������ ���޾Ƽ� �� ���� ����.

--��� ����ڵ��� �ش� ���̺� ���� �� ���ֵ��� �����ϴ� ��.
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
        
�̷������� ���� ��� select �ؿ� �� ����
*/

--�ٽ� system���� �̵�
*/






--######################################################
--�ý��� �� �ο��ϱ�.
;
create user usertest04 identified by pass4;
grant connect to usertest04;
grant resource to usertest04;

--����� ���� �� ���� �� ���� �ο��ϱ�
create role roletest01;
grant create session, create table, create view to roletest01;
grant roletest01 to usertest01;

select *
from role_sys_privs --�ѿ� �ο��� �ý��� ���� ����
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

--�� �����ϱ�
drop role roletest01;
--�����ϰ� ���� ��ȸ�� �ȵ�!

--��ü ������ �ѿ� �ο��ϱ�
show user; --USER��(��) "SYS"�Դϴ�.
create role roletest02;
-->hr ���� ��ü ���� �ο�
--hr�� �̵�(��ü���� �ѿ� �ο��ϱ�)-------------------->
/*
--��ü ������ �ѿ� �ο��ϱ�
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

--������ ������ �ִ� ��� ���� ��ȸ��
select * from role_tab_privs;



--#########################################
--���Ǿ�
���� ���Ǿ�� ���� ����ڸ� ������� �ϴ� ���Ǿ�
��ü�� ���� ���� ������ �ο����� ����ڰ� �����ϸ� �ش� ����ڸ� ���

���� ���Ǿ�� ��ü ����ڸ� ������� �� ���Ǿ�� ������ �ִ� ����ڰ� ������ ���Ǿ
������ ��� --sysnoym �տ� public �ٿ��� ����

--�켱 ����� ���̺� ����
show user;
create table sampletbl(
    memo varchar2(50)
    );
    
insert into sampletbl values('������ Ǫ������!');
insert into sampletbl values('�ּ��� �� �մϴ�');
commit;
--���Ǿ� ���� �ʰ� �׳� ����
grant select on sampletbl to hr;
-- hr---------------->

--���Ǿ� �����
--hr-------------------->

--public synonym �����
create public synonym pub_sampletbl for sys.sampletbl;



--##ȥ���غ���

--1
create user kbs identified by pass;
grant connect to kbs;
grant resource to kbs;