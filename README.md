# Wav2Lip-HQ made easy!

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

# Best practices:
Video files:
* Must have a face in all frames or Wav2Lip will fail
* Use h264 .mp4 - other file types may be supported but this definitely works
* Use a small file in every way (try <720p, <30 seconds, 30fps <b></b> etc. - Bigger files may work but are usually the reason it fails)
* Start with a really tiny clip just to get used to the process, don't go throwing in a huge file for your first try.

Audio files:
* Ideally just encode it into your video file
* <b>OR</b>
* Name the audio file the same as the video eg: Video.mp4 & Video.wav
* Must be .wav (or see below for specifying custom audio inputs) 

# Batch processing:
Name files you want to be processed in a batch ending in a number
eg: Video1.mp4, Video2.mp4, Video3.mp4 etc. and have them all in the same folder.

If you select Video3.mp4 to process, it will look for Video4.mp4 etc. afterwards.

# Upscaling:
I personally have seen the best results using gfpgan but I've only used live action videos, animated or AI videos may get better results using codeformer or ESRGAN.

ESRGAN can use a bunch of different models. You can find many here:
https://upscale.wiki/wiki/Model_Database
Paste a download url or a path within your colab runtime in ESRGAN_model to use one other than the default. Let me know if you find one that works well!

codeformer has a slider from 0 to 1 - 0 will recreate the face mostly from scratch and will not look good in motion. 1 will try to accurately make the same face as the input and so the detail won't be as good. I suggest 0.75 but you can play with it yourself.

# Specifying an audio input:
If you must specify a specific audio file - in the Colab press ctrl & H to find and type #input_audio (including #) press tab, type input_audio (no #) and then click replace. This will open a box at the very bottom to allow you to specify a path to an audio (or video) file to use as your audio. I'm not sure what filetypes are supported but it's at least .wav,.mp3 and .mp4.
