# Defined in /tmp/fish.whFC2M/umnt.fish @ line 2
function umnt
	for dev in $argv
		udisksctl unmount -b $dev
	end
end
