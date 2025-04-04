# CLI log command

## Context
While doing some reading about macOS admin, I learned about the command line `log` command.

## TIL
The `log` command, per the man page, is "used to access system wide log messages created by os_log, os_trace, and other logging systems." We can use it to stream those logs and grep for information we need. 

For example, if I'm trying to find out what my MDM client is doing in real time, I might use the following:

```bash
sudo log stream | grep mdmclient
```

Or, if I just wanted to see the network activity that was happening during a command:

```bash
sudo log stream --predicate 'subsystem=="com.apple.network"' | grep mdmclient
```

There's a whole pile of subcommands and options that make this useful for scripting and debugging. Thankfully it has a man page, accessible at:

```bash
man log
```

## Sources and References
* [Addigy: Troubleshooting MDM Connectivity for macOS](https://support.addigy.com/hc/en-us/articles/13833098867219-Troubleshooting-MDM-Connectivity-for-macOS)
* [kandji: Mac Logging and the log Command: A Guide for Apple Admins](https://www.kandji.io/blog/mac-logging-and-the-log-command-a-guide-for-apple-admins) 


## Date
Tuesday, March 18th, 2025  
2025-03-18  
