function cargo --description 'alias cargo env NO_COLOR= cargo'
	# this is just for cargo-expand
	env NO_COLOR= cargo $argv; 
end
