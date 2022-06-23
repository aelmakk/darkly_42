On the page 
 
curl -o out -A ft_bornToSec --referer https://www.nsa.gov/ http://10.13.100.58/\?page\=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c
grep flag out

# Spoofing

## Flag
```
f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
```

## Discovery
On the page http://{IP_ADDRESS}/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c

Viewing the page source i found two hints :
   - <!-- You must cumming from : "https://www.nsa.gov/" to go to the next step -->
   - <!-- Let's use this browser : "ft_bornToSec". It will help you a lot. -->
so i thought of using curl with (--referer , -A) options:

### Referrer
An HTTP request has the option to include information about which address referred it to the actual page. curl allows you to specify the referrer to be used on the command line. It is especially useful to fool or trick stupid servers or CGI scripts that rely on that information being available or contain certain data.

### User Agent
An HTTP request has the option to include information about the browser that generated the request. Curl allows it to be specified on the command line. It is especially useful to fool or trick stupid servers or CGI scripts that only accept certain browsers

## Documentation
- [curl manual](https://curl.se/docs/manual.html)