#!/bin/bash
set -e

# Wait for SQL Server to start
sleep 15s  # Wait longer to ensure SQL Server is fully started

# Run the SQL script using mssql-tools (already included in the container)
echo "Running the SQL script..."
/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "123456aA@" -d master -i /sql-server-database-script.sql
echo "SQL script executed successfully."
