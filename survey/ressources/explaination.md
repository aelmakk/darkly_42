# SURVEY

## Flag
```
03A944B434D5BAFF05F46C4BEDE5792551A2595574BCAFC9A6E25F67C382CCAA
```

## Discovery
On the page  http://{IP_ADDRESS}/index.php?page=survey#

Inspect the select and We tried to change the value of an option.

Change value="10" and select it

```diff
# element inspector
<option value="1337">7</option>
```
## Prevention
> - Don't trust user input including form submissions, always do your verifications.