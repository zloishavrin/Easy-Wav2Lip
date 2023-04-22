# Audio to video lipsyncing made easy!

Colab link: https://colab.research.google.com/github/anothermartz/Easy-Wav2Lip/blob/main/Easy-Wav2Lip_V3.ipynb

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/anothermartz/Easy-Wav2Lip/blob/main/Easy-Wav2Lip_V3.ipynb)

* Code adapted to google colab from [wav2lip-hq-updated-ESRGAN](https://github.com/GucciFlipFlops1917/wav2lip-hq-updated-ESRGAN) by [GucciFlipFlops1917](https://github.com/GucciFlipFlops1917)

* Which fixes and improves the depreciated [Wav2LipHQ](https://github.com/Markfryazino/wav2lip-hq)

* Which is based on the original [Wav2Lip](https://github.com/Rudrabha/Wav2Lip)

Other projects called on (probably more than this but here's what I'm aware of):<br>
https://github.com/sczhou/CodeFormer/blob/master/README.md<br>
https://github.com/TencentARC/GFPGAN/blob/master/README.md<br>
https://github.com/xinntao/Real-ESRGAN<br>

Not only was this built on the shoulders of giants, I'm not even very good at coding and I practically used Bing AI chat to do it all for me.

However I may offer some support in this discord:<br>
Invite link: https://discord.gg/FNZR9ETwKY<br>
Wav2Lip channel: https://discord.com/channels/667279414681272320/1076077584330280991

# This Readme is for the upcoming v4
v3 doesn't really need a readme so until v4 is released just look in the v3 colab for instructions

# Best practices:
Video files:
* Must have a face in all frames or Wav2Lip will fail
* Use h264 .mp4 - other file types may be supported but this definitely works
* Static images should work too, at least .jpg and .png files.
* Use a small file in every way (try <720p, <30 seconds, 30fps <b></b> etc. - Bigger files may work but are usually the reason it fails)
* Start with a really tiny clip just to get used to the process, don't go throwing in a huge file for your first try.

Audio files:
* Ideally just encode it into your video file
* <b>OR</b>
* Select your audio file separately
* Not certain what filetypes are supported, at least .wav and .mp3 though.

# Advanced Tweaking:

## Upscaling:
I personally have seen the best results using gfpgan but I've only used live action videos. Animated or AI videos may get better results using codeformer or ESRGAN.

ESRGAN can use a bunch of different models. You can find many here:
https://upscale.wiki/wiki/Model_Database
Upload one to your Google Drive or to your colab runtime then paste the path to it in ESRGAN_model. Let me know if you find one that works well! Or even one that works at all because I've tried a few that don't.

codeformer has a slider from 0 to 1 - 0 will recreate the face mostly from scratch and will not look good in motion. 1 will try to accurately make the same face as the input and so the detail won't be as good. I suggest 0.75.


## Padding:
If you see hard lines on the face where the generated face meets the original face, increase the padding in that direction. Typically it happens on the chin, so increase the D value if you see that.
Increasing these values too much can offset the mouth or cause other weird glitchyness. I've been told using minus values can help with certain videos but I personally haven't found a use case for that yet.

# Other options:

### resolution_scale:
Lower the output resolution for quicker rendering and better hiding of artifacts, at the cost of worse overall image quality.

### nosmooth:
Disable face detection smoothing which may fix artifacts, I'm not aware of any downsides to this.

### output_suffix
This adds a suffix to your output files so that they don't overwite your originals. Tick include_upscaler_in_suffix if you want the upscaler written at the end of the suffix, good for when you want to compare different upscaler settuings or just to remember which one you used.

### preview_input
Displays the input video/audio before processing so you can check to make sure you chose the correct file(s). It may only work with .mp4, I just know it didn't work on an .avi I tried.
Disabling this will save a few seconds of processing time for each video.

# Batch processing:
Name files you want to be processed in a batch ending in a number
eg: Video1.mp4, Video2.mp4, Video3.mp4 etc. and have them all in the same folder.

Same with audio files, if selected separately.

If you select Video3.mp4 to process, it will look for Video4.mp4 etc. afterwards.

If you select a video that doesn't end in a number, and an audio file that does, it will process each audio file on the same video. Good for static image or getting the same clip with multiple lines.

Likewise, if you select a video that ends in a number and an audio file that does not, it will process the same audio file on each video. Good for getting multiple clips or images with the same line.
