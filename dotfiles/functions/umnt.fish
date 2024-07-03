if type -q udisksctl
	function umnt -a dev
		udisksctl unmount -b $dev
	end
end
