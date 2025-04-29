# Executing a perl one-liner from a file

## Context
I'm participating in a code golf exercise at work, and needed to trim my entry size down, so I learned to exectute a perl file without a shebang. 

## TIL
It's hackathon week at work, and I decided to throw my hat in the ring, and submit some perl one-liners. Perfect use of old sysadmin skills I figured! But I was including the interpreter in the actual entry, rather than executing it, so my file length was an enormous 56 bytes. After bit of research, I figured out that I could just `cat` the code file in the execution, and it would run like a charm. 

To exectute a perl one-liner that I have stored in a file (let's say named `code-golf-entry.pl`), that reads from an input file (named, say, `input.csv`), you can invoke the interpreter as follows:

```bash
perl -nE $(cat code-golf-entry.pl)" input.csv
```

The interpreter will exectute the catted code as if it were written inline, and boom, you've just shaved 12 bytes off your code. 

## Sources and References
* `man cat`
* [perlrun - how to execute the Perl interpreter](https://perldoc.perl.org/perlrun#-E-commandline)

## Date
Monday, April 28th, 2025  
2025-04-28  
