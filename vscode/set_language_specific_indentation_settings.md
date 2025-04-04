# Set language specific indentation settings

## Context
I have been getting annoyed at how Visual Studio Code uses four spaces to indent code, and I finally figured out how to set it to my preferred two spaces.


## TIL
I am particular about indentation size for different languages, just like every other nerd. I got tired of manually changing the tab size in Visual Studio Code every time I opened an HTML file, so I found the setting to fix it for good. I'm on a Mac, so these are specific to macOS. 

1. Press `command-shift-p` to open the command palette.
2. Search for and select `Preferences: Configure Language Specific Settings...`.
3. Search for and select `HTML` (or any other language you want to modify).
4. Search for `editor.tabSize` and change the number of spaces to `2` (or whatever spacing you prefer).
5. Party

You can also edit your `settings.json` directly. On my Mac, it's in `~/Library/Application Support/Code/User/settings.json`. 


## Sources and References
* [Simon Willison, VSCode TIL: Language Specific Indentation Settings](https://til.simonwillison.net/vscode/language-specific-indentation-settings)


## Date
Wednesday, March 26th, 2025  
2025-03-26  
