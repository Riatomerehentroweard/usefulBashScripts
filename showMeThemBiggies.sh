#!/bin/bash

printf "cleaning up files from previous test...
"
rm -rf themVidFiles

printf "creating files for test...
"
mkdir themVidFiles themVidFiles/movieA themVidFiles/movieB themVidFiles/tvShowA themVidFiles/tvShowB

touch themVidFiles/movieA/movieA.2009.mp4 themVidFiles/movieB/movieB_2010.mkv themVidFiles/tvShowA/tvShowA.s03e04.avi themVidFiles/tvShowB/tvShowB.S02E02.flv themVidFiles/movieA/movieA.sub.srt themVidFiles/movieA/license.txt themVidFiles/tvShowA/a.sub.srt themVidFiles/tvShowB/garbage.file

printf "
Following video files can be found:

"
find themVidFiles -name '*.mkv' -or -name '*.mp4' -or -name '*.avi' -or -name '*.flv'

#for f in ./allThemFiles/cup_b/*; do
#    echo $f
#done