# Defined in /tmp/fish.XuVFDz/tmp.fish @ line 2
function tmp
	if set -q _current_tmp_dir
		cd $_current_tmp_dir
		return 0
	end
	set -U _current_tmp_dir (mktemp -d)
	tmp
end
