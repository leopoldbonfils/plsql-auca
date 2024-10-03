Oracle Pluggable Database (PDB) Management


This repository contains SQL scripts for managing Pluggable Databases (PDBs) in Oracle Database.


Connection
Connect to the database as SYSDBA:
sqlplus sys as sysdba


Creating a Pluggable Database
To create a new PDB:
CREATE PLUGGABLE DATABASE plsql_class2024db
ADMIN USER le_plsqlauca IDENTIFIED BY peacemaker
FILE_NAME_CONVERT = ('C:\APP\ADMIN\PRODUCT\21C\ORADATA\XE\PDBSEED\',
                     'C:\APP\ADMIN\PRODUCT\21C\ORADATA\XE\plsql_class2024db\');

                     
Opening a Pluggable Database
After creation, open the PDB:
ALTER PLUGGABLE DATABASE plsql_class2024db OPEN;


Switching to a Pluggable Database
To switch the session to a specific PDB:
ALTER SESSION SET CONTAINER = plsql_class2024db;


User Management
Creating a User
CREATE USER le_plslauca IDENTIFIED BY peacemaker;


Granting Privileges
RANT CONNECT, RESOURCE TO le_plsqlauca;


Deleting a Pluggable Database
To delete a PDB:
Switch to the root container:
ALTER SESSION SET CONTAINER = CDB$ROOT;


Close the PDB:
ALTER PLUGGABLE DATABASE le_to_delete_pdb CLOSE;


Drop the PDB:
DROP PLUGGABLE DATABASE le_to_delete_pdb INCLUDING DATAFILES;


![Screenshot (121)](https://github.com/user-attachments/assets/bf1b45be-9577-466b-8419-e9c08e3a78c2)
![Screenshot (122)](https://github.com/user-attachments/assets/398c33b1-37c1-4be7-85b0-9d03b021f516)
![Screenshot (123)](https://github.com/user-attachments/assets/3c7a291d-139e-4ea9-bf3a-410db4452171)
![Screenshot (124)](https://github.com/user-attachments/assets/0ac38ddb-c8c7-4242-ae59-ae70915a5041)





 
