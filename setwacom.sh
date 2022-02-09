#! /bin/bash

#xsetwacom -- set "Wacom One by Wacom S Pen stylus" Threshold 100
#xsetwacom -- set "Wacom One by Wacom S Pen eraser" Threshold 100

xsetwacom --set "Wacom One by Wacom S Pen stylus" PanScrollThreshold 115
xsetwacom --set "Wacom One by Wacom S Pen eraser" PanScrollThreshold 115

xsetwacom --set "Wacom One by Wacom S Pen stylus" "Button" "2" "key pan"
xsetwacom --set "Wacom One by Wacom S Pen eraser" "Button" "2" "key pan"
