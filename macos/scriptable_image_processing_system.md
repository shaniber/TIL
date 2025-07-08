# Scriptable Image Processing System

## Context
I wanted to convert downloaded WebP images to PNG without using an online tool. The "Scriptable Image Processing System", or `sips`, on macOS does this.

## TIL
I have regularly had the displeasure of finding a nice image that I wanted to use for a personal presentation or a background, or some other private usage. More often than not, though, the images are in WebP format, and completely unusable in any way other than in a website. Normally, I'd just upload them to one of the many services available that converts these, but I decided that I wanted to find something that works locally. 

The `sips` tool provides a boatload of options for programmatically manipulating images, including converting to PNGs. To do so, you use the command:

```bash
sips -s format png "filname.webp" --out "filename.png" 
```

## Sources and References
* [GitHub:anthonypurcella/Webp-to-PNG-Auto-Convert-MAC](https://github.com/anthonypurcella/Webp-to-PNG-Auto-Convert-MAC)
* [WebP (Wikipedia)](https://en.wikipedia.org/wiki/WebP)
* [PNG (Wikipedia)](https://en.wikipedia.org/wiki/PNG)

## Date
Saturday, July  5th, 2025  
2025-07-05  
