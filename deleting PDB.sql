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