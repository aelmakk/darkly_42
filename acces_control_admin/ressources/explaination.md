# ACCES CONTROL (ADMIN)

## Flag
```
d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff
```

## Discovery
On the page http://{IP_ADDRESS}/robots.txt

Then go to :

        http://{IP_ADDRESS}/whatever/ 
        
        http://{IP_ADDRESS}/whatever/htpasswd

Find a file containing this text: 
```
root:8621ffdbc5698829397d97767ac13db3
```
I checked the cipher identifier and found it was md5
```
8621ffdbc5698829397d97767ac13db3 : dragon
```

Finaly http://{IP_ADDRESS}/admin and enter:
Username => root
Password => dragon
## Use
> - Load form containing details for a specific user.
> - Submit changes.
> - Review the changes and confirm.

## Prevention
> Access control vulnerabilities can generally be prevented by taking a defense-in-depth approach and applying the following principles:

> - Never rely on obfuscation alone for access control.
> - Unless a resource is intended to be publicly accessible, deny access by default.
> - Wherever possible, use a single application-wide mechanism for enforcing access controls.
> - At the code level, make it mandatory for developers to declare the access that is allowed for each resource, and deny access by default.
> - Thoroughly audit and test access controls to ensure they are working as designed.

## Documentation
- [PortSwigger - access control](https://portswigger.net/web-security/access-control)
- [dcode - cipher identifier](https://www.dcode.fr/cipher-identifier)
- [md5decrypt - md5](https://md5decrypt.net/en/)


---