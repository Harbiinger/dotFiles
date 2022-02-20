## Get colors -----------------
FG="#60AEED"
BG="#000000"
 
BLACK="#15131A"
RED="#fa747b"
GREEN="#72a0a6"
YELLOW="#f6bbb8"
BLUE="#7f99a6"
MAGENTA="#dc554f"
CYAN="#8cb6cc"
WHITE="#d3d7db"
 
TOTD=`fortune -n 90 -s | head -n 1`
 
## Exec    -----------------
i3lock \
	--color="${BG}99"  \
	\
	--insidever-color=#071511    \
	--insidewrong-color=${RED}    \
	--inside-color="${BG}00"    \
	\
	--ringver-color=#071511    \
	--ringwrong-color=${RED}    \
	--ring-color=#071511        \
	\
	--line-color=${BG}            \
	--separator-color=${BG}        \
	\
	--keyhl-color=#33CE55        \
	--bshl-color=${RED}            \
	\
	--verif-color=${FG}            \
	--wrong-color=${FG}            \
	--layout-color=${FG}        \
	\
	--time-color=${FG}            \
	--date-color=${FG}            \
	\
	--pass-media-keys            \
	--pass-screen-keys            \
	--pass-power-keys            \
	--pass-volume-keys            \
	--{time,date,layout,verif,wrong,greeter}-font="DejaVu Sans"            \
	--{layout,verif,wrong,greeter}-size=18                            \
	--time-size=34                                                    \
	--date-size=18                                                    \
	--greeter-text="${TOTD}"            \
	--greeter-color=#071511                \
	--verif-text="verifying..."            \
	--wrong-text="wrong!"                \
	--noinput-text="Empty"                \
	--lock-text="Locking..."            \
	--lockfailed-text="Failed to lock"    \
	--radius 120                \
	--ring-width 8.0            \
	--clock                        \
	--indicator                    \
	--time-str="%I:%M %p"        \
	--date-str="%b %d, %G"        \
	--blur 10          
