# Regenerate invalid FileVault keys

## Context
When macOS 15 (aka Sequoia) came out, we found that a lot of computers (almost 30%) in our fleet had their FileVault keys regenerated, rendering them **Invalid** and out of date in Jamf. This meant we couldn't access computers if people forgot their passwords, or if we needed to access a past employee's computer before we wiped it. 

## TIL
[Escrow Buddy](https://github.com/macadmins/escrow-buddy) is a tool that facilitates the automatic regeneration and escrowing of FileVault keys without user intervention. No one even needs to know it's happening.

To make it work, we needed a Smart Group that listed Macs without valid keys, a configuration profile to enable escrowing on the local computer, and policies to install Escrow Buddy and tell it to regenerate the key. 

## Source and References
* [Netflix Tech Blog: Escrow Buddy - an open source tool from Netflix for remediation of missing FileVault keys in MDM](https://netflixtechblog.com/escrow-buddy-an-open-source-tool-from-netflix-for-remediation-of-missing-filevault-keys-in-mdm-815aef5107cd)
* [Escrow Buddy Jamf installation instructions](https://github.com/macadmins/escrow-buddy/wiki/Jamf)

## Date
Tuesday, February 11th, 2025  
2025-02-11  
