# Defined in /tmp/fish.QsSEwN/editbulk.fish @ line 1
function editbulk
	xargs sh -c '$EDITOR "$0" "$@" < /dev/tty'
end
