A simple script in which you may set a window for quick copy and pasting.

I found it tiresome to copy shell commands from firefox.
switch to terminal, and paste them in (at least 3 commands/mouse nav...
This script reduces that noise to a hotkey! 

## Dependencies

X11 (will not work on Wayland)

[xdotool](https://github.com/jordansissel/xdotool)
[xclip](https://github.com/astrand/xclip)


## Setup
* Make script run anywhere: sudo $ ln -s scrpt /usr/local/bin/scrpt
* Make the script a keyboard shortcut...(ctrl+alt+c)
* You may want to alias xdoclip: .bashrc alias dc="xdoclip" or "xdoclip sw"

## Usage
abbreviated to "dc" (do clip) for convience 
* $ xdoclip sw -> set the current window as target for copy/paste
* move mouse text, run shorcut -> this copies the line and pastes to terminal

Run "$ xdoclip test" to test the set window if desired before pasting, this should input "test"

Line Mode

to disable set LINE_MODE=0. This allows you to select text, then run hotkey to paste, bypassing the triple clicking to select line. Shell commands are normally formatted properly as single line websites, so enabled for this intended usage.

Alt Tab Mode

to enable set ALTTAB_MODE=1, this is generically beyond terminal usage for ex. if you are bouncing between just two windows (browser/discord). Can also work with terminal of course, just less reliable if you are selecting multiple windows before pasting. 

Increase the sleep wait in script file if you get missed inputs
