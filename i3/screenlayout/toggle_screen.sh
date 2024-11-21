#!/bin/bash

LAPTOP="eDP-1"
HDMI="HDMI-1"

move_workspaces_to_output() {
    local output=$1
    for i in {1..10}; do
        i3-msg "workspace $i; move workspace to output $output"
    done
    i3-msg "workspace 1"
}

if xrandr | grep -q "$HDMI connected"; then
    xrandr --output $LAPTOP --off --output $HDMI --mode 1920x1080 --rate 60.00 --primary
    # sleep here is to give time to change between resolutions, couldnt make this thing switch
    # directly to 4k, so gotta make it full hd, wait, then 4k res.
    sleep 5
    xrandr --output $LAPTOP --off --output $HDMI --mode 3840x2160 --rate 60.00 --primary
    move_workspaces_to_output $HDMI
else
    xrandr --output $HDMI --off --output $LAPTOP --auto
    move_workspaces_to_output $LAPTOP
fi
