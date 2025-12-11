# Count the number of occurances of a value in a column

## Context
I needed to count the number of times a computer model occured in a column, so that I could automate a pricing calculator. 

## TIL
Google Sheets has the `COUNTIF(range,criterion)` function, that will count the number of times a value occurs in a specified range. So to find the number of times the value "MacBook Air" occurs in a list of 20 computers, I would use the following formula:

```excel
=COUNTIF(A2:A21,"MacBook Air")
```

and it would return the number. 

I can automate it further by using a lookup table for the criterion values, if I wanted to get fancy.

## Sources and References
* [StackOverflow question by player0 - Counting number of occurances in column](https://stackoverflow.com/questions/12125847/counting-number-of-occurrences-in-column)
* [Google Sheets docs - COUNTIF](https://support.google.com/docs/answer/3093480?hl=en&sjid=5415378118515065449-NC)

## Date
Thursday, December 11th, 2025  
2025-12-11  
