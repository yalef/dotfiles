#!/bin/bash

background='#a89984'
foreground='#3c3836'        
border='#7c6f64'
BEMENU_ARGS=(-ni -B 3 -p 'run:' --bdr "$border" --tb "$background" --tf "$foreground" --fb "$background" --nb "$background" --ab "$background" --hb "$background" --hf "$foreground" --line-height 30 "$@")
bemenu-run "${BEMENU_ARGS[@]}"
