# Defined in /tmp/fish.x3dNtw/mnt.fish @ line 2
function mnt
	for dev in $argv
		udisksctl mount -b $dev
	end
end
