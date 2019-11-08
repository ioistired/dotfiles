# Defined in /tmp/fish.jI58eC/vcd.fish @ line 2
function vcd --description 'cd to a specified remote'
	if test (count $argv) -ge 2
		set vcs $argv[1]
		set remote $argv[2]
	else
		set vcs git
		set remote $argv[1]
	end

	set remote (echo $remote | sed -E 's|^https?://||')
	
	set path (parse-vcs-path $vcs $remote)
	if test ! -d $path  # if the path does not exist
		set path (dirname $path)  # let the user clone it into the right path
	end

	mkcd $path
end
