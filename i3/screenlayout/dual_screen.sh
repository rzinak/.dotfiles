#!/bin/bash

LAPTOP="eDP-1"
HDMI="HDMI-1"

xrandr --output $HDMI --mode 3840x2160 --rate 60 --primary \
       --output $LAPTOP --auto --below $HDMI

for i in {1..5}; do
    i3-msg "workspace $i; move workspace to output $HDMI"
done

for i in {6..10}; do
    i3-msg "workspace $i; move workspace to output $LAPTOP"
done

i3-msg "workspace 1"
