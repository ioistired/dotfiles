# Defined in /tmp/fish.JwGzxE/pcl.fish @ line 1
function pcl --argument repo
	set -l path (parse-vcs-path pijul $repo)
	if test ! -d $path
		vcd pijul $repo
		pijul clone $argv[2..-1] $repo
	end
	vcd pijul $repo
end
