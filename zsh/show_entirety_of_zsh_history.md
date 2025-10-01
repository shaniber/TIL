# Show entirety of zsh history

## Context
I wanted to find _old_ commands in my zsh history. 

## TIL
I've been a bash guy for decades, so even though zsh and bash are similar, some commands still work a little differently, and my muscle memory doesn't like it. In particular, I regularly pipe the output of the bash `history` command to `grep` to find commands I've used before. the zsh `history` command, by default, only shows the last 16 commands. 

zsh `history` will accept arguments for the first and last to show, like this:

```zsh
zsh [first] [last]
```

If you only give one argument, it will start displaying history at that point, and default to last being the _actual_ last command in the history file. So this:

```zsh
zsh 0
```

will give you your entire history to grep through. 

I know that there's a lot of ways that are likely more efficient to search through them, and configuration to make zsh history more convenient and effective. One day I may actually set up those commands. 


## Sources and References
* [StackExchange: ZSH - output whole history?](https://superuser.com/questions/232457/zsh-output-whole-history) - Question by "Nathan Long", answer by Kyle Brandt.
* [zsh history made simple](https://medium.com/@n1zyy/zsh-history-made-simple-de3ec5c8f027) 

## Date
Wednesday, October  1st, 2025  
2025-10-01  
