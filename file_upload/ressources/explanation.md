# File Upload

Uploaded files represent a significant risk to applications. The first step in many attacks is to get some code to the system to be attacked. Then the attack only needs to find a way to get the code executed. Using a file upload helps the attacker accomplish the first step.

## Flag

```
46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8
```

## Discovery

On the page http://{IP_ADDRESS}/?page=upload

## Prevention

- Never accept a filename and its extension directly without having an allow list filter.

## Ressources

[Unrestricted file upload](https://owasp.org/www-community/vulnerabilities/Unrestricted_File_Upload)
