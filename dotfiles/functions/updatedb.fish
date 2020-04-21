# Defined in /tmp/fish.SbrbZu/updatedb.fish @ line 2
function updatedb
	find / -xdev 2>/dev/null > ~/locate.txt
	return 0
end
