#!/bin/csh
set z="./in/"
foreach i (`ls $z`)
 convert -resize 500x400 in/$i out/$i
 #echo $i
end
