function unexpand
	command unexpand $argv | sponge $argv[-1]
end
