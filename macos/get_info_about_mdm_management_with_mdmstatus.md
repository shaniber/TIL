# Get info about MDM management with mdmstatus

## Context
I was looking for MDM information for debugging something, and `/usr/libexec/mdmclient` offers a ton of info. 

## TIL
The `mdmclient` command will output a whole bunch of useful MDM information in .plist format if you give it the right command:

```bash
/usr/libexec/mdmclient DumpManagementStatus
```

Will output something like this:

```plist
Management status: {
    DEPEnrolledMDMs =     (
        "00000000-0000-0000-A000-XXXXXXXXXXXX"
    );
    DeviceIsSupervised = 1;
    EnrolledInDEP = 1;
    MDMDeniesActivationLock = 0;
    MDMs =     {
        "00000000-0000-0000-A000-XXXXXXXXXXXX" =         {
            AdminRemovalDisallowed = 1;
            DeniesActivationLock = 0;
            IsActivationLockManageable = 1;
            IsAnyMDM = 1;
            IsDEP = 1;
            IsMDMv1 = 1;
            IsManagementSeparated = 0;
            IsSupervised = 1;
            IsUserApproved = 1;
            IsUserEnrollment = 0;
            OrganizationInfo =             {
                OrganizationAddress = "123 Fake Street, Saskatoon, SK S7K 4K4";
                OrganizationAddressLine1 = "123 Fake Street";
                OrganizationCity = Saskatoon;
                OrganizationCountry = CAN;
                OrganizationEmail = "it@shaniber.net";
                OrganizationMagic = XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;
                OrganizationName = "Fake Company, Inc.";
                OrganizationPhone = 3065551212;
                OrganizationRegion = CA;
                OrganizationSupportEmail = "it@shaniber.net";
                OrganizationSupportPhone = 6395551212;
                OrganizationZipCode = "S7K 4K4";
            };
            OrigInstallOSVersion = "15.5";
            PayloadOrgName = FakeCo;
            ProfileOrgName = FakeCo;
            ServerType = 1;
            ServerURL = "https://FAKECO.jamfcloud.com/mdm/ServerURL";
        };
    };
    MajorOSUpdatesManaged = 1;
    ManagedViaMDM = 1;
    UserApprovedMDMs =     (
        "00000000-0000-0000-A000-XXXXXXXXXXXX"
    );
}
```

There's a lot of useful commands that are available. Use with caution, of course, as some of them do more than query. 


## Sources and References
* [Der Flounder: Using /usr/libexec/mdmclient DumpManagementStatus to get information about MDM management](https://derflounder.wordpress.com/2025/03/16/using-usr-libexec-mdmclient-dumpmanagementstatus-to-get-information-about-mdm-management/)
* [MacAdmins Reference Docs: mdmclient](https://mosen.github.io/profiledocs/troubleshooting/mdmclient.html)


## Date
Wednesday, August  5th, 2026  
2026-08-05  
