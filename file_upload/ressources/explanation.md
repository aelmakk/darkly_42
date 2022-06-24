# File Upload

Uploaded files represent a significant risk to applications. The first step in many attacks is to get some code to the system to be attacked. Then the attack only needs to find a way to get the code executed. Using a file upload helps the attacker accomplish the first step.

## Flag

```
46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8
```

## Discovery

On the page http://{IP_ADDRESS}/?page=upload

At the begining i thought of upload a file .php instead of image, interapting the request with burp suit i found that the file type is (text/php)
so i changed the file type to (image/jpeg), using curl i was able to get the flag.

### command

curl -F "Upload=Upload" -F "uploaded=@pyload.php;type=image/jpeg" http://IP/\?page\=upload | grep flag

## Prevention

- Never accept a filename and its extension directly without having any filter.

## Ressources

[Unrestricted file upload](https://owasp.org/www-community/vulnerabilities/Unrestricted_File_Upload)
