function pip
	if test "$argv[1]" = isntall
		sl
		return 1
	end
	command pip $argv
end
