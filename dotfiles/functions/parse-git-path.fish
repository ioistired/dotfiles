# Defined in /tmp/fish.DbQFOH/parse-git-path.fish @ line 2
function parse-git-path --description 'echo the path given by remote' --argument remote
	set remote	(echo $remote | sed 's|.git$||')
	set parts	(string split -m 1 '/' $remote)  # split on the first / to get the host and path
	set host	$parts[1]

	if test (count $parts) = 1
		# user did not supply a path
		echo $host
		return 0
	end

	set path	$parts[2]
	set host_paths (string split '.' $host)
	set host_paths $host_paths[-1..1]

	set final_path ~/code/vcs/git/(string join '/' $host_paths '@' $path)
	echo $final_path
end
