#!/bin/sh
#
# $FreeBSD$
#
#	Runs as unprivileged user "rtorrent"
#	Lives in "tmux" (like "screen") because rtorrent can't daemonize itself
#	To access rtorrent client that's in the tmux: su - rtorrent && tmux attach
#	To detach the tmux and leave rtorrent running: Ctrl-B then D
#	nice'd default +10 step to make it go easy on the machine
#	Don't forget to put rtorrent_enable="YES" in your /etc/rc.conf
#
# PROVIDE: rtorrent
# REQUIRE: NETWORK
# KEYWORD: shutdown

. /etc/rc.subr

name="rtorrent"
rcvar=rtorrent_enable

start_cmd="${name}_start"
stop_cmd="${name}_stop"

load_rc_config $name
: ${rtorrent_enable:=no}

rtorrent_start() {
	su - rtorrent -c "tmux new-session -d -s rtorrent 'nice /usr/local/bin/rtorrent'"
}

rtorrent_stop() {
	su - rtorrent -c "tmux send-keys -t rtorrent C-q"
}

run_rc_command "$1"