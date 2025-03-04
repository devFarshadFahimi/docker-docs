-- Outline https://confluence.atlassian.com/display/JIRA/Connecting+JIRA+to+SQL+Server+2012

-- Create the database
CREATE DATABASE jiradb;
GO
ALTER DATABASE jiradb COLLATE SQL_Latin1_General_CP437_CI_AI;
GO
ALTER DATABASE jiradb
   SET READ_COMMITTED_SNAPSHOT ON
   WITH ROLLBACK IMMEDIATE;
GO

-- Switch to the context of the database
USE jiradb;
GO

-- Creates the login AbolrousHazem with password 'mySuperSecretPassword3210'
CREATE LOGIN jirauser WITH PASSWORD = 'mySuperSecretPassword3210';
GO

-- Creates a database user for the login created above.
CREATE USER jirauser FOR LOGIN jirauser;
GO

CREATE SCHEMA jiraschema;
GO

EXEC sp_addrolemember N'db_owner', N'jirauser'