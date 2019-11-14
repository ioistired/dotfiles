# Defined in /tmp/fish.GFBatk/tmp.fish @ line 2
function tmp --argument dir
	if set -q _current_tmp_dir
		cd $_current_tmp_dir
		return 0
	end

	if test -z $dir
		set dir (mktemp -d)
	else
		set dir (realpath $dir)
		mkdir -p $dir; or return $status
	end

	set -U _current_tmp_dir $dir
	tmp
end
