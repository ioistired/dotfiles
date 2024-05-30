if ! type -q plocate
	function locate
		rg --no-line-number -zF $argv ~/locate.txt.gz
	end
end
