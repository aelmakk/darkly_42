# REDIRECT

## Flag
```
B9E775A0291FED784A2D9680FCFAD7EDD6B8CDF87648DA647AAF4BBA288BCAB3
```

## Discovery
On the page http://{IP_ADDRESS}/

Inspect the social networks icons \
Change *site=__instagram__* and click on the icon
```diff
# element inspector

<a href="index.php?page=redirect&amp;site=instagram&site=test" ...></a>
```

## Use
> HTTP Parameter Pollution (HPP) is a web application vulnerability exploited by injecting encoded query string delimiters in already existing parameters. 

## Prevention
> - Simply avoid using redirects and forwards
> - do not allow the URL as user input for the destination
> - Sanitize input by creating a list of trusted URLs (lists of hosts or a regex)
> - ensure that the supplied value is valid, appropriate for the application, and is authorized for the user


## Documentation
- [HTTP parameter pollution](https://en.wikipedia.org/wiki/HTTP_parameter_pollution)
- [HTTP Parameter Pollution Explained](https://www.youtube.com/watch?v=QVZBl8yxVX0)
- [Testing for HTTP Parameter Pollution](https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/04-Testing_for_HTTP_Parameter_Pollution)

---
