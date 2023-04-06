# SampleDatabaseFiles
Updated SQL Server 2000 Sample Database Files

Introduction

The Microsoft® SQL Server™ 2000 Sample Database Files include:

· New versions of two scripts included with SQL Server 2000:
  - Instpubs.sql creates the pubs sample database.
  -Instnwnd.sql creates the Northwind sample database.

· Pre-built database files that can be attached to an instance of SQL Server 2000:
  - Pubs.mdf and pubs_log.ldf are the data and log files for the pubs sample database.
  - Northwind.mdf and northwind.ldf are the data and log files for the Northwind sample database.

These copies of the scripts or database files are the same as the versions included with SQL Server 2000, except for these changes:
· The script for creating pubs, instpubs.sql, has been modified to install pubs and all of the pubs data in one step. The original version of instpubs.sql included in SQL Server 2000 does not load in some of the pubs data, and customers were required to run batch jobs to install some of the larger data values.
· The scripts have been brought into compliance with recent Microsoft samples security guidelines. Instpubs.sql no longer creates a “guest” user and no longer grants rights to “guest” or “public”. All dates that are used to populate the databases now express the full four-digit year, such as 1992.
· The pre-built database files include all of the changes incorporated in the new script files.

SQL Server 2000 Desktop Engine (MSDE 2000) customers can also use these copies of the files to install pubs and Northwind.

Note: If the instance of SQL Server 2000 was installed with a case-sensitive collation, always type pubs in all lowercase letters, and Northwind with an initial capital "N" followed by lowercase letters. Sample applications and the code samples in SQL Server Books Online might not work correctly if the database names are not created exactly as shown in the examples.



Sample Files Prerequisites
The user attaching the pre-built database files must be a member of the SQL Server sysadmin or dbcreator fixed server roles.

The user running the SQL Server 2000 Sample Database Scripts must be a member of the SQL Server sysadmin or dbcreator fixed server roles, or have been granted CREATE DATABASE permissions.

The files can be used with the following versions of SQL Server 2000:
· SQL Server 2000 Service Pack 3 (SP3) or later.
· SQL Server 2000 Desktop Engine (MSDE 2000) SP3 or later.
· SQL Server 2000 Desktop Engine (MSDE 2000) Release A.



Installing the Sample Databases
To install the sample databases
1. Either run a script to build a sample database, or attach the pre-built database files for that database.
2. To grant another person access to the sample database, you must grant permissions on the database objects to that person.

SQL Server 2000 customers can perform these tasks using either the osql utility or the two graphical utilities SQL Query Analyzer and SQL Enterprise Manager. MSDE 2000 includes only the osql command prompt utility.

Caution   Instpubs.sql drops any existing version of the pubs sample database and Instnwnd.sql drops any existing copy of the Northwind sample database before creating the new copies of the database

Attaching the Pre-built Files by Using Enterprise Manager
To attach the pre-built files by using SQL Query Analyzer:
1. From the Start menu, point to All Programs, point to Microsoft SQL Server, and then click the Enterprise Manager icon.
2. Right-click Databases and select All Tasks/Attach Database.
3. Either enter C:\SQL Server 2000 Sample Databases\northwind.mdf or C:\SQL Server 2000 Sample Databases\pubs.mdf as the MDF file of database to attach, or click Browse (…) to search for the file to attach.
4. Click Verify to ensure the selected MDF file is correct.
5. Specify Northwind or pubs in Attach as.
6. Specify the database owner.
7. Click OK.

Attaching the Pre-built Files by Using osql
To attach the pre-built files by using osql:
1. Open a command prompt window.
2.From the command prompt, use the cd command to navigate to the folder containing the SQL Server 2000 Sample Database Scripts: cd c:\SQL Server 2000 Sample Databases
3. Run osql using the -Q switch to execute sp_attach_db to attach either the pubs or Northwind pre-built database files. Here are some examples:

Note: Enter the osql commands on one line in the command prompt window. These examples split the commands across two or three lines to make the examples easier to read.
· To attach the Northwind database to a default instance on the same computer:
  - osql -E -Q "EXEC sp_attach_db N'Northwind', N'c:\SQL Server 2000 Sample Databases\northwind.mdf'"
· To attach the pubs database to a default instance on a different computer:
  - osql -E -S ComputerName -Q "EXEC sp_attach_db N'pubs', N'c:\SQL Server 2000 Sample Databases\pubs.mdf'"
· To attach the Northwind database to a named instance:
  - osql -E -S ComputerName/InstanceName
  - -Q "EXEC sp_attach_db N'Northwind', N'c:\SQL Server 2000 Sample Databases\northwind.mdf'"



Running the Scripts Using SQL Query Analyzer
To run the scripts using SQL Query Analyzer:
1. From the Start menu, point to All Programs, point to Microsoft SQL Server, and then click the Query Analyzer icon.
2. Connect to the instance of SQL Server 2000 on which you want to create the sample database.
3. On the File menu, click Open, and navigate to the c:\SQL Server 2000 Sample Databases folder. Select either Instpubs.sql or Instnwnd.sql.
4. On the toolbar, click Execute Query



Running the Scripts Using osql
To run the scripts using osql:
1. Open a command prompt window.
2. From the command prompt, use the cd command to navigate to the folder containing the SQL Server 2000 Sample Database Scripts:
3. d c:\SQL Server 2000 Sample Databases
4. un osql specifying either Instpubs.sql or Instnwnd.sql as the input file. Here are some examples:
  - To install the Northwind database on a default instance on the same computer:
    * osql -E -i instnwnd.sql
  - To install the pubs database on a default instance on a different computer:
    * osql -E -S ComputerName -i instpubs.sql
  - To install the Northwind database on a named instance:
    * osql -E -S ComputerName/InstanceName -i instnwnd.sql



Assigning Permissions
The logon you use when creating or attaching a database becomes the owner of the sample database, and of all the objects within the database. That login and any login in the sysadmin fixed server role will have permission to access the data and objects in the sample database. All other logins must be granted permissions before they can access the sample data and objects.

Granting a Login Access to a Database
You can grant access to the sample databases using Enterprise Manager or the sp_grantdbaccess system stored procedure. Only a database user that is a member of at least one of the following roles can grant access to a database: the sysadmin fixed server role, the db_accessadmin fixed database role, or the db_owner fixed database role.

To grant access using Enterprise Manager:
1. Expand the server group and then expand the server.
2. Expand Databases and select the sample database.
3. Right-click Users, and then click New Database User.
4. Complete the Database User Properties form.

To grant access using sp_grantdbaccess
Having connected to the server with either osql or SQL Query Analyzer, you can use sp_grantdbaccess to enable a domain user to access the database. For example, the following commands grant access to pubs to a domain user named Hamid:

USE pubs;
GO
sp_grantdbaccess 'CORPORATE\hamid', 'hamid';
GO

For more information about granting logins access to a database, see the following topics in SQL Server Books Online:
- Granting a Windows User or Group Access to a Database
- Granting a SQL Server Login Access to a Database 



Granting User Accounts Permissions
Once a login has been associated with a user account in the sample database, you must grant that user account permissions to access database objects. Only a database user that is a member of at least one of the following roles can grant access to database objects: the sysadmin fixed server role, the db_accessadmin fixed database role, or the db_owner fixed database role.

To grant account permissions using Enterprise Manager
1. Expand the server group and then expand the server.
2. Expand Databases and select the sample database.
3. Expand the category for type of object, such as stored procedures or views.
4. Right-click the object, point to All Tasks, and then click Manage Permissions.

To grant account permissions using the GRANT statement
In either osql or SQL Query Analyzer you can use the GRANT statement to grant permissions on database objects. First execute a USE <database_name> statement.

To grant execute permission on a stored procedure, use the following statement:
GRANT EXECUTE ON [dbo].[database_object_name]
              TO [database_user_account];
GO

To grant data read and modification permissions, use the following statement:

GRANT  SELECT , INSERT , DELETE , UPDATE
       ON [dbo].[database_object_name]
       TO [database_user_account];
GO

For more information about granting permissions in a database, see the following topic in SQL Server Books Online:
Granting Permissions










