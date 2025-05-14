# Getting Google Calendar troubleshooting info

## Context
I needed to look up the Event ID for an event in Google Calendar.

## TIL
To find the Event ID, you need to go to the Google Calendar event debugging URL:

> `https://calendar.google.com/calendar/u/0/r?gsessionid=OK&eventdeb=1`

From there... 

1. Click the event in question.  
2. Click the three-dots **kebab menu** and scroll to the bottom of the list.  
3. Click **Troubleshooting Info**.  

This will pop up a dialog window with scrap of code in it, containing the event ID as `eid`, along with a bunch of other info:

* `eid` - the event ID
* `organizer` - the organizing calendar email address
* `particpant` - the email of the account attending the meeting
* `actor` - the email of the account requesting the troubleshooting info (probably you?)
* `summary` - the event summary
* `status` - probably just CONFIRMED?
* `seq` - I don't know, probably how many time's it's repeated? 
* `startTime` - when the meeting starts
* `endTime` - when the meeting ends
* `firstStart` - the first instance of the meeting, ever
* `rdata` - recurrence rules

## Sources and References
* [StackOverflow - How can I find the Event ID of my Google Calendar Event?](https://stackoverflow.com/questions/32755413/how-can-i-find-the-event-id-of-my-google-calendar-event)
* [How to find the troubleshooting information of an event in Google Calendar](https://googleappstroubleshootinghelp.blogspot.com/2012/09/how-to-find-troubleshooting-information.html)

## Date
Wednesday, May 14th, 2025  
2025-05-14  
