#!/usr/bin/env bash

# Created By: Jake@Linux
# Created On: Mon 17 Feb 2025 09:42:01 AM CST
# Project: background tool

PAPERS=$HOME/Images/wallpapers/random/*
DIR=$HOME/Images/wallpapers/random

SELECTION=$(command ls $PAPERS | awk -F "/" '{print $7}' | fzf --prompt "Choose An Image: " \
    --pointer  \
    --border "bold" \
    --border-label " InstaBG " \
    --reverse --preview-window=right:75% \
    --preview='kitten icat --clear --transfer-mode=memory --stdin=no \
    --place=${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}@20x1 ~/Images/wallpapers/random/{}')

xwallpaper --zoom $DIR/$SELECTION


