function rm-artist-album --description 'remove artist and album names from all files'
	rename 's|^.* - .* - ||' *  # pretty clever, if i do say so meself
end
