#!/usr/bin/env sh

if test -f $XDG_CONFIG_HOME/xinit/xkeymap; then
	xkbcomp $XDG_CONFIG_HOME/xinit/xkeymap $DISPLAY
fi
