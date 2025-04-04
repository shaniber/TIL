# Date formatting tricks

## Context
_Still_ on my bash scripting nonsense, I wanted to auto-generate the dates with fancy-schmancy formatting. 

## TIL
The `date` command is, of course, a powerhouse. With a little finessing, we're able to grab today's numerical date and slap an ordinal suffix on it with a `case` statement, then put it back into date. 

```bash 
d=$(date +%e)
case $d in
    1?) d=${d}th ;;
    *1) d=${d}st ;;
    *2) d=${d}nd ;;
    *3) d=${d}rd ;;
    *)  d=${d}th ;;
esac
date=$(date +"%A, %B ${d}, %Y  %n%Y-%m-%d  ")
```

For reference:
* %A gives the day of the week (e.g. Friday)
* %B gives the month of the year in your language (e.g. February)
* %e gives the numerical day of the month with no leading 0 (e.g. 8)
* %Y gives the full year (e.g. 2025)
* %m is the numerical month of the year (e.g. 02)
* %d is the numberical day of the month is a leading 0 (e.g. 08)
* %n is a newline

## Sources and References
* [Stack Overflow - Date format in bash](https://stackoverflow.com/questions/40607925/date-format-in-bash-cases)
* [nixCraft - UNIX Date Command Examples](https://www.cyberciti.biz/faq/unix-date-command-howto-see-set-date-time/) 

## Date
Friday, February 21st, 2025  
2025-02-21  
