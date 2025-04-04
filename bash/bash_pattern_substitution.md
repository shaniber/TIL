# Bash pattern substitution

## Context
I wanted a script to make it quick to generate consistent templates for this repo, so I wanted to take the subject (in this case _Bash pattern substitution_), and replace the spaces with underscores. 

## TIL
We can replace underscores in a string with straight up Bash parameter substitution.

```bash
variable=${variable// /_}
```

* `variable` is the variable name, I think that's obvious.  
* `//` is the command to replace every occurance of the pattern in the string (a single slash [`/`] will just do the first occurance)
* ` ` is the pattern to look for... I'm looking for spaces.
* `_` is the pattern to replace it with... I'm replacing it with underscores. Omitting the replacement would just delete the pattern from the string.

A generalized form of this would be:

```bash
variable=${variable//*PATTERN*/*REPLACEMENT*}
```

## Sources and References
* [Stack Overflow - Replace spaces with underscores via BASH](https://stackoverflow.com/questions/19661267/replace-spaces-with-underscores-via-bash)
* [The Linux Documentatiuon Project - Parameter Substitution - Variable Expansion / Substring replacement](https://tldp.org/LDP/abs/html/parameter-substitution.html#EXPRIPL1)

## Date
Wednesday, February 19th, 2025  
2025-02-19  
