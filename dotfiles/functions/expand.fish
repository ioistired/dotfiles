function expand
	command expand $argv | sponge $argv[-1]
end
