# Find terminal width and height

## Context
In order to automate some tests, I needed to find the width of the terminal a script is being run in.

## TIL
The `stty` command gives you a whole passel of information about your terminal. In this case, I want the `size` argument:

```
stty size
```

This returns the height and width of the current terminal. If you want to get really particular about it, you can have it read the output of `tty` (which returns the name of the current terminal's device):

```
stty size < $(tty)
```

Need it in variables for a script? `read` it into them:

```
read HEIGHT WIDTH < <(stty size < "$(tty)")
```

## Sources and References
* [Stéphane Chazelas on unix.stackexchange.com](https://unix.stackexchange.com/a/299100)
* `man stty`
* `man tty`


## Date
Wednesday, March 19th, 2025  
2025-03-19  
