#!/bin/bash
# A wrapper script for launching hyprland
# For system-wide environmen variables, check /etc/environment

# XDG Specifications
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_DESKTOP=Hyprland

# Themes
export XCURSOR_SIZE=32
export XCURSOR_THEME=Catppuccin-Frappe-Light-Cursors
export GTK_THEME=Catppuccin-Frappe-Standard-Pink-Dark

# QT
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORM="wayland;xcb"
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORMTHEME=qt5ct

# SDL2
# export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONEREPARENTING=1
export GDK_BACKEND="wayland,x11"

# Firefox
export MOZ_ENABLE_WAYLAND=1
export GTK_USE_PORTAL=1

# Wlroots
export WLR_DRM_DEVICES=/dev/dri/card1

exec Hyprland
