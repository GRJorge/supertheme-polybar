#!/bin/bash

killall -q polybar

polybar superbar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar run :D"
