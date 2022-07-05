@echo off

REM the output file extension.
set extension=mp4

if [%1]==[] (
    goto :askInput
) else (
    for %%F in (%*) DO (
        call :extractTracksFromFiles %%F
    )
    pause
)

exit /b

:askInput
    set "filename="
    echo.
    echo Press Alt+F4 or Ctrl+C to quit the program
    set /p filename="Drag your video file here (or paste the file path): "
    if not [%filename%]==[] (
        call :extractTracksFromFiles %filename%
    )
    call :askInput
    goto :eof

:extract
    set /A j=%2-1
    ffmpeg -hide_banner -loglevel warning -stats -i %1 -y -vn -c copy -map 0:a:%j% "%~dpn1-Track%2.%extension%"
    goto :eof

:extractTracksFromFiles
    for /L %%I IN (1, 1, 6) DO (
        call :extract %1 %%I
    )
    goto :eof
