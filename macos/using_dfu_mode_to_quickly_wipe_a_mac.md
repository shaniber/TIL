# Using DFU mode to quickly wipe a Mac


## Context
I needed a quick way to wipe some Mac computers, and DFU mode will wipe and restore in under 15 minutes. 


## TIL
Device Firmware Update mode (aka DFU mode) is a quick way to wipe and restore a Mac. I'll use it when I don't have the password for a returned computer, or if a computer has problems that can't be resolved easily. I mostly work with Apple silicon Macs, but this also works for Macs with an Apple T2 security chip. Using the restore function will completely wipe the computer, and remove any hardware password that is on the machine.  

To wipe (an an Apple Silicon Mac), you need a second Mac to act as the diagnostic host and run the wipe. It needs to be connected to the Internet. Both Macs need to be plugged into power.  

1. Plug a USB-C cable into the DFU port on the Mac to wipe. (It's specfic, you can find instructions to identify the port on the [Apple Support site](https://support.apple.com/en-ca/120694)).  
2. Plug the cable into any USB-C port on second Mac.  
3. Enter DFU mode on the first Mac:  
   1. Press and hold the power button for 10 seconds until it turns off.  
   2. Press and release the power button, then press and hold, all at once, following keys:  
      * **Control ⌃** on the left side of the keyboard  
      * **Option ⌥** on the left side of the keyboard  
      * **Shift ⇧** on the right side of the keyboard  
      * **Power button**  
   3. Hold all four keys for 10 seconds, then release all the keys except the power button, until you get a prompt on the other Mac to allow the computer to connect in DFU mode.  
4. In the Finder window that pops up, click **Restore Mac...**.  
5. You'll be prompted to confirm that you want to restore the mac to its factory settings. Click **Restore and Update** to confirm.  
6. Wait 5 to 10 minutes, depending on how fast your internet is, while the latest macOS is downloaded and installed.  
7. Party. 🎉  

Once that's done, the first Mac will reboot, and you'll be prompted to allow it to connect to the diagnostic host Mac. At this point, you can disconnect the first, and set it up as you would a new Mac.  


## Sources and References
* [Apple Support - How to revive or restore Mac firmware](https://support.apple.com/en-ca/108900)


## Date
Monday, May 12th, 2025  
2025-05-12  
