create user usertest01 identified by pass1;

conn usertest01/pass1;

grant create session to usertest01;

grant create table to usertest01;
alter user usertest01 quota 2m on system;

select username, default_tablespace
  from dba_users
 where username in 'USERTEST01';
 
 alter user usertest01 identified by 1234;
 
-- ���� ����
revoke create session from usertest01;

-- ���� �� �ο��ϱ�
grant create session to usertest01;

select * from session_privs;

create user usertest2 identified by pass2;
create user usertest3 identified by pass3;

grant create session, create table, create view to usertest2;
grant create session, create table, create view to usertest3;

--# hr ���� ���� ��ũ��Ʈ  ################################

grant select on hr.employee to usertest01;

grant select on hr.employee to usertest2 with grant option;

grant select on hr.employee to usertest3;

grant select on hr.department to public;

--#########################################################
-- �ý��� �� �ο��ϱ� 

create  user usertest04 identified by pass4;
grant connect to usertest04;
grant resource to usertest04;

--  ����� ���� �� ���� �� ���� �ο��ϱ� 
create role roletest01;

grant create session, create table, create view to roletest01;

grant roletest01 to usertest01;

select *
  from role_sys_privs  -- �ѿ� �ο��� �ý��� ���� ����
 where role like '%TEST%';
/* -- ����ڿ��� �ο��� ���� Ȯ��
SQL> conn usertest01/1234;
Connected.
SQL>
SQL>
SQL> select * from user_role_privs;
*/
 
-- �� �����ϱ�
drop role roletest01;
 
--��ü ������ �ѿ� �ο��ϱ�
show user;  -- USER��(��) "SYS"�Դϴ�.
create role roletest02;
 -- > hr�������� ��ü���� �ο�
--��ü ������ �ѿ� �ο��ϱ�
-- grant select on employee to roletest02;
show user;  -- USER��(��) "SYS"�Դϴ�.
grant roletest02 to usertest01;

-- SQL> connect usertest01/1234
--  SQL> select * from hr.employee;
-- SQL> select * from user_role_privs;

select * from role_tab_privs;


-- ���Ǿ�  
������ ���Ǿ�� ���� ����ڸ� ������� �ϴ� ���Ǿ�
��ü�� ���� ���� ������ �ο����� ����ڰ� �����ϸ� �ش� ����ڸ� ���

������ ���Ǿ�� ��ü �����ڸ� ������� �� ���Ǿ�� ������ �ִ� ����ڰ� ������ ���� 
� ������ ���  -- SYNONYM �տ� PUBLIC �ٿ��� ����

show user;
create table sampletbl(
    memo varchar2(50)
);

insert into sampletbl values('������ Ǫ������!');
insert into sampletbl values('�ּ��� �� �մϴ�');

grant select on sampletbl to hr;

-- ���� ���Ǿ�(synonym) ���� 
create public synonym pub_sampletbl for sys.sampletbl;

