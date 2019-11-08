# Defined in /tmp/fish.aUzv1M/clear-between-lines.fish @ line 1
function clear-between-lines
	while read line
		printf '%s\r' "$line"
	end
	echo
end
