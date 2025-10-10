# Only run on tty1
if status --is-interactive; and [ (tty) = "/dev/tty1" ]

    # Start DBus session if not running

    # Start DBus session if not running
    if not set -q DBUS_SESSION_BUS_ADDRESS
	dbus-launch --sh-syntax | sed 's/^/set -gx /; s/=/ /' | source
    end

    # Start PipeWire if not running
    pgrep -x pipewire >/dev/null; or pipewire &
    pgrep -x pipewire-pulse >/dev/null; or pipewire-pulse &
    pgrep -x wireplumber >/dev/null; or wireplumber &

    # Launch Hyprland with DBus session
    exec hyprland
end


function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive # Commands to run in interactive sessions can go here

#	No greeting
    set fish_greeting

	# Use starship
	#    starship init fish | source
	
	# Aliases
	alias reboot 'loginctl reboot'
	alias shutdown 'loginctl poweroff'
	alias discord 'flatpak run com.discordapp.Discord'
	alias ff 'fastfetch'
	alias ls 'eza --icons'	
	alias clear "printf '\033[2J\033[3J\033[1;1H'"
	alias q 'qs -c ii'
end
