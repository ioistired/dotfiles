function pip --argument command
	if test "x$command" = xisntall
		sl
		return 1
	end
	command pip $argv
end
