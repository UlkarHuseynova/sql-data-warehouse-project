/*
Create Database and Schemas
=====================================================================
Script purpose:
This script creates a new database named "Datawarehouse" after checking if it already exsts. 
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver', 'gold'.

USE master;
-- Drop and recreate the 'Datawarehouse' database

IF EXISTS (SELECT 1 FROM sys.database WHERE name='DataWarehouse')
BEGIN
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     DROP DATABASE DataWarehouse
END;
GO
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
