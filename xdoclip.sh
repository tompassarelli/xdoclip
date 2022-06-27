#!/usr/bin/env bash
LINE_MODE=1
ALTTAB_MODE=0
DB="/tmp/XDOCLIP-ID_DB.txt"
PASTE="xdotool keydown Control keydown Shift key v keyup Control keyup Shift"

test -f "$DB" || touch "$DB"
read -r windowId < "$DB"

if [ "$1" == "sw" ];
then
  xdotool getactivewindow > "$DB"
  exit 1
fi

#debug
if [ "$1" == "test" ];
then
  echo "$windowId" > "/tmp/XDOCLIP-ID_TEXT.txt"
  xdotool windowactivate --sync "$windowId"
  xdotool type test 
  exit 1
fi

#edit sleep to your preference, faster may result in missed inputs
#this is to ensure previously held keyboard shortcut doesn't interfere
sleep 0.3

if [ "$LINE_MODE" == "1" ];
then
  xdotool click 1 click 1 click 1
fi

# copy and clean up possible "$ " in poor formatting
xdotool keydown Control key c keyup Control
xclip -o -sel c | sed 's/\$//' | sed 's/^[ \t]*//' | xclip -sel c > /dev/null

if [ "$ALTTAB_MODE" == "1" ];
then
  xdotool keydown Alt key Tab keyup Alt
  sleep 0.2 # alt tab may require slight delay depending on app
  $PASTE
  exit 1
fi
# Default Paste To Set Window
xdotool windowactivate --sync "$windowId"
$PASTE
