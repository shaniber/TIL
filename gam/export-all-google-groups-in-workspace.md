# Export all Google groups in workspace

## Context 
I needed an export of all of the groups in my Google workspace for my infosec team at ${JOB}. [Google Apps Manager (aka GAM)](https://github.com/GAM-team/GAM/wiki/) to the rescue. 

## TIL
We can use a one-liner GAM command to export all of the groups in a organization to your Google Drive. 

```
gam print groups name description admincreated id aliases members owners managers settings todrive
```

I could probably have gotten away with removing `settings`, it adds a LOT of information to the sheet. 

## Sources and References
* [jensm on the GAM for Google Workspace mailing list](https://groups.google.com/g/google-apps-manager/c/MqV7zQlMrTA/m/0oDsIw9HCgAJ)
* [Google Apps Manager (aka GAM)](https://github.com/GAM-team/GAM)

## Date
Tuesday, February 18th, 2025
2025-02-18
