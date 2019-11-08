# Defined in /tmp/fish.xja9Wk/pcd.fish @ line 1
function pcd --description 'cd to a specified remote' --argument remote
	set vcs pijul 

	set remote (echo $remote | sed -E 's|^https?://||')
	
	set path (parse-vcs-path $vcs $remote)
	if test ! -d $path  # if the path does not exist
		set path (dirname $path)  # let the user clone it into the right path
	end

	mkcd $path
end
