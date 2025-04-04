# Convert SWF to PNG

## Context
I have some ShockWave Flash (SWF) files with images in them that I want to convert to PNG images. 

## TIL
I found a huge repository of assets, all stuck in SWF format, and I thought it would be neat to figure out how to convert them to PNG files. There's a set of tools for that, it turns out, called `swftools`. 

In this example, I'm going to use a SWF file (bean-bean.swf) from the Glitch Game asset release from the company previously known as Tiny Speck. 

First, I'm going to use `swfdump` to pull tell me the number of frames in bean-bean.swf:

```bash
$ swfdump --frames  bean_bean.swf
```

`swfdump` outputs in an odd format (`-f 5`), but that tells us that there's five frames. I'll use that to iterate over the file with `swfrender`. Since SWF files index from one, our code looks like this:

```bash
for i in $(seq 1 5) ; do swfrender -p $i bean_bean.swf -o bean_bean_$i.png; done
```

This results in 5 PNG files, each one a different frame of the original SWF.

Further work would include iterating over the entirety of the Glitch Items repo to convert everything to PNG. 

## Sources and References
* [swftools](http://www.swftools.org/)
* [Tiny Speck - Glitch Items](https://github.com/tinyspeck/glitch-items)
* [bhups on StackOverflow: Convert SWF to PNG](https://stackoverflow.com/a/2004544)
* [swfdump man page on the swftools site](http://www.swftools.org/swfdump.html)

## Date
Friday, April  4th, 2025  
2025-04-04  
