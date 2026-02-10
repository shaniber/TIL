# Adding a user stylesheet

## Context
I wanted to modify the functionality of a website, which was facilitated by a user stylesheet. 

## TIL
When trying to hide some annoying AI stuff on the Jira website, I discovered that Firefox still supported user stylesheets, and you can add fun stuff in there. 

The stylesheets are hidden in the user profile directory, which you can find by visiting the `about:support` page in Firefox, and clicking the _Profile Folder_'s **Show in Finder** button to open the profiles directory in Finder. (I'd imagine this reads Show in Explorer or something similar on Windows, maybe also on Linux?)

Once you're in the profile directory, you create a `chrome` subdirectory to store the `userContent.css` overrides file (which you'll also need to create). This file will modify the CSS for every page you visit, so you only want specific CSS selectors in there that aren't going to affect everything. 

That being said, this is the CSS I used to demo that it actually worked:

```css
/* an overly aggressive style just to prove it works */
body {
  background: pink !important;
}
```

Next, you need to open the `about:config` page, setting `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`. 

Finally, restart Firefox. You can do this by typing `restart` in the URL bar, and clicking the **Restart Firefox** button that comes up. 

If all goes well, every page you visit should have a nice, pink background! (Until you get sick of it, and change it back, of course.) 

## Sources and References
* David Walsh - [How to Add a User Stylesheet in Firefox](https://davidwalsh.name/firefox-user-stylesheet).

## Date
Tuesday, February 10th, 2026  
2026-02-10  
