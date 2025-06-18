# Migrating OTPs between password managers

## Context
When moving some credentials between password managers, I wanted to see if I could also migrate the one-time password generator without having to completely recreate it. 

## TIL
I foolishly saved a couple of personal passwords in my work password manager, and wanted to move them to my personal one. Moving the credentials was easy, but having to recreate the OTPs would have been a pain in the tuchus. After a bit of fiddling around, I found that I could just copy the otpauth URI to the new password manager, and it works just fine. 

For reference, the OTP URI looks like this:

```otpauth://totp/{ISSUER}:{USERNAME}?secret={SECRET}&issuer={ISSUER}```

As long as your saved username matches the username in the URI, everything should _just work_. 

## Sources and References
* [Yubico URI string format doc](https://docs.yubico.com/yesdk/users-manual/application-oath/uri-string-format.html)

## Date
Wednesday, June 18th, 2025  
2025-06-18  
