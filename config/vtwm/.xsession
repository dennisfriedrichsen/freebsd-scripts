#!/bin/csh
#xhost -
/usr/local/bin/xhost rubidium
/usr/local/bin/vtwm < ~/.vtwmrc & #; sleep 2
#/usr/local/bin/X11/xphoon -b -t 720 &
/usr/local/bin/xterm \
	-fn -dec-terminal-medium-r-narrow--14-140-75-75-c-60-iso8859-1 \
			-geometry 80x55+1330+0 -j -s -bg Black -fg white \
						-cr yellow -n bigXTERM &
/usr/local/bin/xterm -fn 9x15 -geometry 80x50+535+40 -j -s -bg NavyBlue \
					-fg white -cr yellow \
					-sb -sl 500 -fn 9x15 -n RUBIDIUM &
/usr/local/bin/xlogo -geometry 80x60+0+440 -bg darkgreen -fg white -bd white &
/usr/local/bin/xload -bg red4 -geometry 200x85+0+505 &
/usr/local/bin/dclock -geometry 200x75+0+592 -fg white -bg red3 -led_off red3 \
			-miltime -noscroll -date "%m %d %Y" -fn 10x20 -noutc &
#if ($DISPLAY == ":0") then
# /usr/local/bin/xconsole -geometry 1100x70+0+884 -fn \
#   '-adobe-new century schoolbook-bold-r-normal--12-120-75-75-p-77-iso8859-1' &
# '-adobe-new century schoolbook-bold-r-normal--11-80-100-100-p-66-iso8859-1' &
#endif
/usr/local/bin/xset s 150 150 c off
/usr/local/bin/xmodmap .xmodmaprc
/usr/local/bin/xterm -geometry 80x24+0+0 -n login -ls
