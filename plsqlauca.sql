
SQL> CREATE PLUGGABLE DATABASE plsql_class2024db
  2  ADMIN USER le_plsqlauca IDENTIFIED BY peacemaker
  3  FILE_NAME_CONVERT = ('C:\APP\ADMIN\PRODUCT\21C\ORADATA\XE\PDBSEED\',
  4                      'C:\APP\ADMIN\PRODUCT\21C\ORADATA\XE\plsql_class2024db\');

Pluggable database created.

SQL> ALTER PLUGGABLE DATABASE plsql_class2024db OPEN;

Pluggable database altered.

SQL> ALTER SESSION SET CONTAINER = plsql_class2024db;

Session altered.


SQL> SELECT username FROM dba_users
  2  WHERE username ='LE_PLSQLAUCA';

USERNAME
--------------------------------------------------------------------------------
LE_PLSQLAUCA

SQL> ALTER USER le_plsqlauca IDENTIFIED BY peacemaker;

User altered.

SQL> CREATE USER le_plslauca IDENTIFIED BY peacemaker;

User created.

SQL> GRANT CONNECT, RESOURCE TO le_plsqlauca;

Grant succeeded.

SQL> ALTER SESSION SET CONTAINER =CDB$ROOT;

Session altered.

SQL> CREATE PLUGGABLE DATABASE le_to_delete_pdb
  2  ADMIN USER le_plslauca IDENTIFIED BY peacemaker
  3  FILE_NAME_CONVERT = ('C:\APP\ADMIN\PRODUCT\21C\ORADATA\XE\PDBSEED\',
  4                        'C:\APP\ADMIN\PRODUCT\21C\ORADATA\XE\le_to_delete_pdb\');

Pluggable database created.

SQL> ALTER PLUGGABLE DATABASE le_to_delete_pdb OPEN;

Pluggable database altered.

SQL> ALTER PLUGGABLE DATABASE le_to_delete_pdb CLOSE;

Pluggable database altered.

SQL> DROP PLUGGABLE DATABASE le_to_delete_pdb INCLUDING DATAFILES;

Pluggable database dropped.

SQL>