#!/bin/bash

LAPTOP="eDP-1"
HDMI="HDMI-1"

# Turn both screens on, HDMI primary, laptop below
xrandr --output $HDMI --mode 3840x2160 --rate 60 --primary \
       --output $LAPTOP --auto --below $HDMI

# Move workspaces 1–5 to HDMI (main)
for i in {1..5}; do
    i3-msg "workspace $i; move workspace to output $HDMI"
done

# Move workspaces 6–10 to laptop
for i in {6..10}; do
    i3-msg "workspace $i; move workspace to output $LAPTOP"
done

# Focus back to workspace 1 so it’s ready
i3-msg "workspace 1"
