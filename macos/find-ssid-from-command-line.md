# Find SSID from command-line

## Context
When Apple disabled the `airport` command-line utility with macOS 14.4, it broke some of my scripts that needed to know the SSID of the current Wi-Fi network. `wdutil` was supposed to replace it, but some of the info it returns is redacted.

## TIL
We can get the information we need from the `system_profiler` utility, and a little help from our friends `awk` and `tr`. 

```
system_profiler SPAirPortDataType | awk '/Current Network/ {getline;$1=$1;print $0 | "tr -d ':'";exit}'
```

## Source and References
[VikingOSX on the Apple Support Community boards](https://discussions.apple.com/thread/255761216?sortBy=rank).

## Date
Friday, February 7th, 2025  
2025-02-07  

