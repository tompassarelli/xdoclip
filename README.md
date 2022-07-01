A simple script in which you may set a window for quick copy and pasting, 
or simply alt tab mode if you aren't bouncing around too much :)

I found it tiresome to copy shell commands from firefox, find the terminal, and paste them in.

This script reduces that noise to 1 hotkey! 

![xdoclip](https://i.imgur.com/2kFvlez.gif)

## Dependencies

X11 (will not work on Wayland)

almost works on wayland now with ydotool using alt tab mode

wayland would need alternative for xclip/xsel for copying clipboard

[xdotool](https://github.com/jordansissel/xdotool) or [ydotool](https://github.com/ReimuNotMoe/ydotool/)

[xclip](https://github.com/astrand/xclip)


## Setup
* change interface to xdo or ydo depending on tool choice | default ydo
* for ydotool, set a env var YDOTOOL_SOCKET="/tmp/.ydotool.socket" & ydotool run as non-elevated user for hotkey... see: https://github.com/ReimuNotMoe/ydotool/issues/36#issuecomment-788148567

(xdotool window bind specific, via ALTTAB_MODE=0)
* Make script run anywhere: sudo $ ln -s $HOME/.../script /usr/local/bin/script
* Make the script a keyboard shortcut...(ex. ctrl+alt+c)
* You may want to alias xdoclip: .bashrc alias dc="xdoclip -s"

## Usage
* move mouse text, run shorcut -> this copies the line and pastes to terminal

Line Mode

to disable set LINE_MODE=0. This allows you to select text, then run hotkey to paste, bypassing the triple clicking to select line. Shell commands are normally formatted properly as single line websites, so enabled for this intended usage.

Alt Tab Mode

to enable set ALTTAB_MODE=1, this is generically beyond terminal usage for ex. if you are bouncing between just two windows (browser/discord). Can also work with terminal of course, just less reliable if you are selecting multiple windows before pasting. 

Increase the sleep wait in script file if you get missed inputs
