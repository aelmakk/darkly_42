## Flag
```
99dde1d35d1fdd283924d84e6d9f1d820
```

## Discovery

On the page http://{IP_ADDRESS}/.hidden

In robots.txt i found a file named {.hidden}. Accessing to it gives 26 folders, inside each one of the folders another 26 folders, and every folder in that 26 folders has another 26 folders. in that 26 folders there's a readme file.

So, we decide to get those files using wget.

### command
- wget -np -r -e robots=off IP/.hidden/
- grep -r  -E '.*[0-9]+.*' [downloaded file]

## Protection
- require login to access important data

## Ressources
- [wget manual](https://www.gnu.org/software/wget/manual/wget.html)
