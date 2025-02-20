# Convert a string to lower case

## Context
Still on the script to make consistent templates, I also wanted to further normalise the subject to all lower case for filenames. 

## TIL
We can convert a string to lower case with our old buddy `tr`.

```
variable=$(echo "${variable}" | tr '[:upper:]' '[:lower:]')
```

`tr` takes the echoed contents of the variable, then where an upper case character exists in the same place in both strings, it converts it to lower case in the output. 

You can reverse the process (lower case to upper case) by reversing the strings in the `tr` command (i.e. reversing `[:upper:]` and `[:lower:]`).

## Sources and References
* [Stack Overflow - How to convert a string to lower case in bash](https://stackoverflow.com/questions/2264428/how-to-convert-a-string-to-lower-case-in-bash)

## Date
Thursday, February 20th, 2025  
2025-02-20 
