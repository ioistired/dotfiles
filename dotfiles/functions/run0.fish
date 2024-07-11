if type -q run0
	function run0 --description 'alias run0=env -u NO_COLOR run0'
		env -u NO_COLOR run0 $argv        
	end
end
