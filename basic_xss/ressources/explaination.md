# BASIC XSS

## Flag
```
0FBB54BBF7D099713CA4BE297E1BC7DA0173D8B3C21C1811B916A3A86652724E
```

## Discovery
On the page http://{IP_ADDRESS}/index.php?page=feedback

Enter any name in the name input.

Enter *the script* in the name input.
\<p>Ex: \<script>/* Bad stuff here... */\</script>\</p>

## Use
> An attacker who exploits a cross-site scripting vulnerability is typically able to:
> - Impersonate or masquerade as the victim user.
> - Carry out any action that the user is able to perform.
> - Read any data that the user is able to access.
> - Capture the user's login credentials.
> - Perform virtual defacement of the web site.
> - Inject trojan functionality into the web site.

## Prevention
> - Filter input on arrival. 
> - Encode data on output.
> - Use appropriate response headers.
> - Content Security Policy.

## Documentation
- [PortSwigger - XSS](https://portswigger.net/web-security/cross-site-scripting)

- [PortSwigger - How to prevent XSS](https://portswigger.net/web-security/cross-site-scripting/preventing)
---