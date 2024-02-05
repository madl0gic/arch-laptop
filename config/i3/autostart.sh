
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

picom --config ~/.config/picom.conf &
dunst &

killall nm-applet
nm-applet &

numlockx on &

killall xfce4-power-manager
xfce4-power-manager &

killall sxhkd
sxhkd -c ~/.config/sxhkd/sxhkdrc &

pkill -f "kitty --title dropdown -e tmux new-session \; split-window -v"
kitty --title dropdown -e tmux new-session \; split-window -v &

# pkill -f "kitty --title dropdown -e tmux new-session \; split-window -v"
# kitty --title dropdown -e tmux new-session 'bc' \; send-keys -t 0 C-l \; split-window -v \; select-pane -t 0 &

pkill -f "kitty --title timer"
kitty --title timer &

pkill -f "kitty --title calculator"
kitty --title calculator --hold python -q &

ibus-daemon -drx &

sleep 2
ibus engine xkb:fr:latin9:fra &

# setxkbmap -option "caps:escape_shifted_capslock" &
setxkbmap -option "caps:escape" &

xset r rate 300 50
