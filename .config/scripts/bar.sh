#!/usr/bin/env bash
source $HOME/.cache/wal/colors.sh
DATE=$(timedatectl | grep Local | sed -r 's/.{5}$//' | awk 'sub(/^.{27}/, "")' | sed -r 's/.{10}$//')
function text { output+=$(echo -n '{"full_text": "'${1//\"/\\\"}'", "color": "'${2-$color15}'", "separator": false, "separator_block_width": 1}, ') ;}

echo -e '{ "version": 1 }\n['
while :; do
  WINDOW=$(swaymsg -t get_tree | jq -r '.. | select(.pid? and .focused?)' | grep name | sed 's/"name"://'| sed 's/"//' | sed 's/..$//')
  #  TIME=$(timedatectl | grep Local | sed 's/.....$//' | awk 'sub(/^.{42}/, "")')  
  TIME=$(date +'%T')
  VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '/front-left/{print $5}')  
  CPU=$(sensors | grep CPU | sed 's/CPU://' | sed 's/+//' ) # amdk10
  output=''
  
  text " $WINDOW    " $color14
  text " || " 
  text " " 
  text "$CPU" $color9 
  text ' || '
  if [[ $(pactl get-sink-volume @DEFAULT_SINK@ | awk '/front-left/{print $5}'| sed -r 's/.$//') -gt 50 ]]; then
    text '󰕾 ' 
  else
    text '󰖀 ' 
  fi

  text "$VOLUME " $color13
  text '  ||  ' $cursor 
  text "$TIME" $foreground 

  echo -e "[${output%??}],"
  sleep 0.4;
done
