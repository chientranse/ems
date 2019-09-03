#!/bin/bash

password=Password1!

echo "Waiting for database server..."
until nc -z localhost 1433; do sleep 1; done
echo "Database server started"

/opt/mssql-tools/bin/sqlcmd -S 0.0.0.0 -U sa -P $password -i database.sql

echo "Database initialized"