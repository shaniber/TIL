# Extracting pictures from Google Slides

## Context
I wanted to save a picture from a Google Slides presentation. 

## TIL
When working on a presentation at work, I wanted to use a photo that was in another presentation. I couldn't right-click it at all, and the other ones that I could didn't give me an option to save. Conveniently, PowerPoint presentations are actually .rar files, so I was able to export Slides to PPTX, rename it to `.rar`, extract it, and access the media easily. 

1. In Google Slides, select **File** » **Download** » **Microsoft PowerPoint (.pptx)**.  
2. Find where the PowerPoint presentation was downloaded to, and change the file extension from `.pptx` to `.rar`.  
3. Using your extration tool of choice, extract the rar file. I used tar:  
```tar xf ppt-presentation.rar``` 
4. `cd` into the resulting directory, and continue into `ppt/media`. You'll find all of the images in your presentation there. 

## Sources and References
* [user **Dovi** on Reddit](https://old.reddit.com/r/GoogleSlides/comments/1ctnfg3/extracting_pics_from_slides/ly3058w/)  

## Date
Thursday, May 22nd, 2025  
2025-05-22  
