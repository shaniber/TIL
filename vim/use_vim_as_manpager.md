# Use Vim as MANPAGER

## Context
Using vim as the default way to view `man` pages seemed like a cool trick. 

## TIL
One of the other [TIL collections](https://github.com/jbranchaud/til) I follow discovered you can use Neovim as the default way to read `man` pages, and I thought it would be nifty to do the same, but for regular `vim`. 

To do so, you set and export the `MANPAGER` environment variable:

```bash
export MANPAGER="vim -M +MANPAGER - --not-a-term"
```

The command line args are:

* `-M` : Modifications are not allowed. (Can't edit the man page!)
* `+MANPAGER` : vim command to start as a man pager. (I can't find a better explanation than that?)
* `-` : read from stdin.
* `--not-a-term` : tell vim that it's not a term, suppressing an annoying notice that vim is reading from stdin. 

After that, your pages open in vim, with all of the vim-ish-ness available. 

It also looks like this is either built into vim nowadays, or I am loading it as a plugin somewhere, as I didn't have to load that in my `.vimrc`.  


## Sources and References
* [Using Vim as MANPAGER with Bash by u/climbTheStairs on Reddit](https://old.reddit.com/r/vim/comments/p1kmz5/using_vim_as_manpager_with_bash/)
* [How can I suppress the "reading from STDIN" by muru on StackExchange](https://vi.stackexchange.com/questions/4682/how-can-i-suppress-the-reading-from-stdin-message-from-within-vim)


## Date
Monday, April 14th, 2025  
2025-04-14  
