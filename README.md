Some video editors do not allow you to import videos with multiple audio tracks
(usually only the first audio track will be imported). As such, you have to
separate audio tracks into their own files and import them manually. This script
will extract all the audio tracks (up to 6) into their own audio files. The
default output file extension is .mp4 (because some video editors, including
Sony Vegas apparently, don't accept .aac, .mp4a, or .m4a). Note that the output
files will only have one audio track (no video), and will only remux the files
(won't re-encode, thus keeping the quality). The output files will be created in
the same directory as where the input files are and will have the same filename,
with "-TrackN" appended, where N is the number of the audio track.

# Dependencies
First, you must have ffmpeg in your PATH. To check, open a command prompt window.
Then type this command and press Enter:
`ffmpeg -version`
If it says something like
```
'ffmpeg' is not recognized as an internal or external command, operable program
or batch file.
```
then you need to install FFmpeg. Follow the instructions [in this article](https://www.wikihow.com/Install-FFmpeg-on-Windows)
before using this program.

# Installation
Download the zip file and extract it where you want the script file to be.
You may also want to create a shortcut to the "extract-audio-tracks.bat" on the
Desktop so you can easily drag video files onto it.


# Usage
There are three ways to use this .bat file.

## A. Double-clicking the file.
This will launch a command prompt window where you can type the path of the
video file, or simply drag the file from File Explorer into the command prompt window.

If it is successful, the audio tracks will be created in the same directory of your video.
(Ignore the `Stream map '0:a:n' matches no streams` message)

After it finishes extracting the audio file from the input file, it lets you type another path or drag another file if you want.

When you're done, simply press Alt+F4 or Ctrl+C or close the window.

## B. Dragging video files to it (or its shortcut)
For this, you'll want to have a shortcut on your Desktop, or open another
File Explorer window where "extract-audio-tracks.bat" is located, so that you
can easily drag files to it.

You may drag as many video files as possible.

Press any key to close the command prompt (or close it like you would any window).

## C. Commandline (for advanced users)
Syntax:
```
C:\path\to\extract-audio-tracks.bat "Video With Spaces.mkv" VideoWithoutSpaces.mkv "Another Video.mkv"
```
This has the same behavior as option B, just a bit more manual.


# Credits
Special thanks to Kachin (the dragon you could find in the OBS Discord server)
for their help in developing this with me. The idea of writing a .bat file you
could drag video files into came from them. I just improved upon it.
