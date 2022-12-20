#!/bin/sh

alacritty msg create-window

if [ $? -ne 0 ]; then
    alacritty
fi
