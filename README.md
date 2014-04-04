# Oh, My Cert

Thank you, Apple, for changing security policies in iOS 7.1. Now, it is only possible to install application overt the air through HTTPS, and that is real pain in the ass for the development purposes. Especially, if you don't have valid SSL certificate.

Current script is not resolving your issue, but it allows you quickly creating self signed certificate by defined certificate authority, and this is enough for development:)

Enjoy!

# Usage
As a standard shell script, just try from your terminal next command:

```
	sh createcert.sh %Authority Name% %Domain% 
```

for example:

```
	sh createcert.sh SuperCompany 192.255.255.255
```
This line will produce:

Root certificate and key: certAuthority.cer, certAuthority.key
Certificate: certificate.cer, certificate.key