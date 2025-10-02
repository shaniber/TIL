# Looping over directories

## Context
I had a list of directories that I needed to run a command within. 

## TIL
This is a problem that I regularly need to look up, so it's time to write it down where I can find it. 

I want to loop over all of the directories in a path, change into them, and perform a command. Easy-peasy with a `for` loop, I just never remember how to do it. For example:

```bash
for dir in ./*
do
  cd "${dir}"
  touch foo
  cd ..
done

Nothing groundbreaking, but a helpful hint.


## Sources and References
* [Stack Overflow: How to loop over directories in Linux?](https://stackoverflow.com/questions/2107945/how-to-loop-over-directories-in-linux)


## Date
Thursday, October  2nd, 2025  
2025-10-02  
