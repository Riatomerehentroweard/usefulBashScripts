#!/bin/bash

printf "cleaning up files from previous test...
"
rm -rf themVidFiles movedVideoFiles

printf "creating files for test...
"
mkdir themVidFiles themVidFiles/movieA themVidFiles/movieB themVidFiles/tvShowA themVidFiles/tvShowB movedVideoFiles

touch themVidFiles/movieA/movieA.2009.mp4 themVidFiles/movieB/movieB_2010.mkv themVidFiles/tvShowA/tvShowA.s03e04.avi themVidFiles/tvShowB/tvShowB.S02E02.flv themVidFiles/movieA/movieA.sub.srt themVidFiles/movieA/license.txt themVidFiles/tvShowA/a.sub.srt themVidFiles/tvShowB/garbage.file

printf "
Following video files can be found:

"

## this command might not work - if you have problem try executing the command for every pattern separately
find themVidFiles -name '*.mkv' -or -name '*.mp4' -or -name '*.avi' -or -name '*.flv' -exec mv '{}' /movedVideoFiles \;

printf "
the follwing files can now be found in movedVideoFiles:
"

for f in ./movedVideoFiles/*; do
    echo $f
done