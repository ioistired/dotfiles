if type -q udisksctl
	function mnt -a dev
		udisksctl mount -b $dev
	end
end