# My custom i3 window manager configuration

Table of Contents
=================
* [My custom i3 window manager configuration](#My-custom-i3-window-manager-configuration)
* [Extending functionality](#Extending-functionality)
* [Power options](#Power-options)
* [Custom keybindings](#Custom-keybindings)

# Extending functionality

There I will list the commands that I have added to my i3wm config file to get additional functions within my i3wm configuration.

1. `exec --no-startup-id setxkbmap -model pc105 -layout us,lt -option grp:alt_shift_toggle &` - commad for toggling keyboard layout between ***American English*** and ***Lithuanian***. `setxkbmap` tool is used for this purpose.
2. `exec --no-startup-id feh --bg-fill /usr/share/pixmaps/background.jpg &` - command for adding a background to i3wm. `feh` tool is used for that purpose.
3. `for_window [class="(?i)gsimplecal"] floating enable, move position mouse, move up 23 px` - command of enabling a pop-up floating window of a `gsimplecal` calendar app instance after a click on `i3bar`.
4. `exec --no-startup-id udiskie &` - command for automounting ***USB*** connected devices. `udiskie` tool is used for this purpose.
5. `exec --no-startup-id xrandr --output eDP-1-1 --auto --output DP-1-1 --right-of eDP-1-1 --auto &` - used to extend screens when switching to Nvidia GPU while a second monitor is connected. `xrandr` tool is used for that.
6. `exec --no-startup-id picom -b --config /home/kostas/.config/picom/picom.conf` - running a `picom` instance for additional visual effects.

# Power options

For controlling power options, like ***suspend***, ***reboot*** and ***shutdown***, among other things. This config snippet was taken from ***[Arch wiki](https://wiki.archlinux.org/title/i3#Shutdown,_reboot,_lock_screen)*** and slightly modified for my use case:

```
set $Locker i3lock -i /usr/share/pixmaps/lock_screen.png -t

set $mode_system System (l) lock, (e) logout, (s) suspend, (h) hibernate, (r) reboot, (Shift+s) shutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id $Locker, mode "default"
    bindsym e exec --no-startup-id i3-msg exit, mode "default"
    bindsym s exec --no-startup-id $Locker && systemctl suspend, mode "default"
    bindsym h exec --no-startup-id $Locker && systemctl hibernate, mode "default"
    bindsym r exec --no-startup-id systemctl reboot, mode "default"
    bindsym Shift+s exec --no-startup-id systemctl poweroff -i, mode "default"

    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}

bindsym $mod+Pause mode "$mode_system"
```

# Custom keybindings

In this section I will list custom keybindings that I have created for my i3wm configuration.

|	 Keybind			|							Function									|
|:---------------------:|:---------------------------------------------------------------------:|
| Fn + Up				| Increase brightness by 5%'											|
| Fn + Down				| Decrease brightness by 5%'											|
| Mod'' + z				| Extend displays / move workspaces from disconnected displays			|
| Mod + i				| Switch to Intel iGPU													|
| Mod + n				| Switch to Nvidia dGPU													|
| PrintScreen			| Take a screenshot with PrintScreen key and save in a specified folder	|
| Shift + PrintScreen	| Copy a selected portion of screen to clipboard						|
| Mod + PrintScreen		| Save a screenshot from clipboard to a folder specified within config	|
| Mod + Pause			| Toggle power options													|
