#!/bin/csh
set z="./in/"
foreach i (`ls $z`)
 convert -resize 100x80 in/$i thumb/$i
end
