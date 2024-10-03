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

![Screenshot (121)](https://github.com/user-attachments/assets/1f4582f5-02ed-424b-a6bd-d65ebe2aa174)
![Screenshot (122)](https://github.com/user-attachments/assets/b6f438c1-8d7c-451c-b83e-c38624b014b3)
![Screenshot (123)](https://github.com/user-attachments/assets/5d2920d0-7ce0-447d-9c12-bc630128e9ea)
![Screenshot (124)](https://github.com/user-attachments/assets/ac31fccf-bf03-4e33-b6f4-2356d8c4bfcb)







 
