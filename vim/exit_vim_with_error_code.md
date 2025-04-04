# Exit Vim with error code

## Context
I was reading another TIL and it mentioned a feature of Vim I didn't know -- _compiler quit_. 

## TIL
This nifty little trick lets you exit Vim without saving, and it forces Vim to report an error code. This is useful if you're using something like `fc` to edit your history, but don't want to execute your changes. I don't know that this is _actually_ called "compiler quit", but it's the mnemonic that the original poster, Josh Branchaud, used to describe it, so I'm gonna stick with it. 

To use compiler quit, use the vim command:

```vim
:cq
```

## Sources and References
* [https://vimhelp.org/quickfix.txt.html#%3Acq](https://vimhelp.org/quickfix.txt.html#%3Acq)
* [Josh Branchaud - Fix Previous Command with fc](https://github.com/jbranchaud/til/blob/master/unix/fix-previous-command-with-fc.md)

## Date
Thursday, February 27th, 2025  
2025-02-27  
