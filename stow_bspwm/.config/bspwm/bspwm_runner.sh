#!/bin/sh

echo "Starting bspwm"
bspwm &
bspwmpid=$!

echo "Starting panel"
python3 ${HOME}/syncsettings/repos/lemonaconda/example.py | lemonbar -f "${LEMONBAR_FONT}" -f ${LEMONBAR_FONT_SYMS} -g "${LEMONBAR_GEOMETRY} -B ${LEMONBAR_COLOR}" &
panelpid=$!

echo "Setting background"
nitrogen --restore &

# Block on sxhkd
echo "Starting shxkd"
sxhkd

echo "sxhkd exited, killing remaining..."
kill $bspwmpid $panelpid
echo "Exiting bspwm wrapper script"
