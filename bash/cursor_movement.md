# Cursor movement

## Context
I learned how to place the curson within a terminal window with ANSI escape sequences.

## TIL
Bash is my favourite little programming playground, so I like figuring out how to do things like move the cursor to arbitrary positions in the terminal.

You can position the cursor horizontally and vertically in the terminal with the following escape sequence:

```bash
\033[<ROW>;<COL>H
```

Which means you can move the cursor around arbitrarily with `echo` or `printf`:

```bash
# Clear the screen, and print "Hello, world" at row 25 / column 25.
clear && echo -e "\033[25;25HHello, world!" 
```

If you wanted to do it in a more portable fashion, in case you weren't using an ANSI-capable terminal, you could use `tput`:

```bash
tput cup <ROW> <COL>
```

Giving you:

```bash
tput clear && tput cup 25 25 && echo "Hello, world!"
```

## Sources and References
* [The Linux Documentation Project: Bash Prompt HOWTO](https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x361.html)
* [User kmkaplan on Stackoverflow, answering the question "Set or change vertical position of the cursor"](https://stackoverflow.com/a/14259377)


## Date
Monday, July 28th, 2025  
2025-07-28  
