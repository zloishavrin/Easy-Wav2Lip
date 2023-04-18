# Wav2Lip-HQ made easy!

Colab link: https://colab.research.google.com/github/anothermartz/Easy-Wav2Lip/blob/main/Easy-Wav2Lip_V3.ipynb

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/anothermartz/Easy-Wav2Lip/blob/main/Easy-Wav2Lip_V3.ipynb)

* Code adapted to google colab from [wav2lip-hq-updated-ESRGAN](https://github.com/GucciFlipFlops1917/wav2lip-hq-updated-ESRGAN) by [GucciFlipFlops1917](https://github.com/GucciFlipFlops1917)

* Which fixes and improves the depreciated [Wav2LipHQ](https://github.com/Markfryazino/wav2lip-hq)

* Which is based on the original [Wav2Lip](https://github.com/Rudrabha/Wav2Lip)

Not only was this built on the shoulders of giants, I'm not even very good at coding and I practically used Bing AI chat to do it all for me.

However I may offer some support in this discord:<br>
Invite link: https://discord.gg/FNZR9ETwKY<br>
Wav2Lip channel: https://discord.com/channels/667279414681272320/1076077584330280991

# Best practices:
Video files:
* Must have a face in all frames or Wav2Lip will fail
* Use h264 .mp4 - other file types may be supported but this definitely works
* Use a small file in every way (try <720p, <60 seconds, 30fps <b></b> etc. - Bigger files may work but are usually the reason it fails)
* Start with a really tiny clip just to get used to the process, don't go throwing in a huge file for your first try.

Audio files:
* Ideally just encode it into your video file
* <b>OR</b>
* Name the audio file the same as the video eg: Video.mp4 & Video.wav
* Must be .wav
  
I may include support for other types later as I think Wav2Lip does, but right now the code only accounts for .wav.

Batch processing:
* Name files you want to be processed in a batch ending in a number
eg: Video1.mp4, Video2.mp4, Video3.mp4 etc. and have them all in the same folder.

If you select Video3.mp4 to process, it will look for Video4.mp4 etc. afterwards.
