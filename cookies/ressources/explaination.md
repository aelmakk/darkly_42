# COOKIES

## Flag
```
df2eb4ba34ed059a1e3e89ff4dfc13445f104a1a52295214def1c4fb1693a5c3
```

## Discovery
On the page http://{IP_ADDRESS}/

check the cookies `I_am_admin` has the value : 

```
68934a3e9455fa72420237eb05902327
```

I checked the cipher identifier and found it was md5
```
68934a3e9455fa72420237eb05902327 : false
```
Encrypt the value `true` and put it in the cookie value
```
Md5(true) = b326b5062b2f0e69046810717534cb09
```
Refresh page
## Use
 Cookie hijacking, also called session hijacking, is a way for hackers to access and steal your personal data, and they may also prevent you from accessing certain accounts.

## Prevention
> - 

## Documentation
- [dcode - cipher identifier](https://www.dcode.fr/cipher-identifier)
- [md5decrypt - md5](https://md5decrypt.net/en/)
- [HTTP cookie](https://en.wikipedia.org/wiki/HTTP_cookie)
- [What Is Session Hijacking: Your Quick Guide to Session Hijacking Attacks](https://www.invicti.com/blog/web-security/session-hijacking/)
---