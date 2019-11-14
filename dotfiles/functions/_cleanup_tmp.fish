# Defined in /tmp/fish.u0ANjX/_cleanup_tmp.fish @ line 2
function _cleanup_tmp --on-event fish_postexec
	if not set -q _current_tmp_dir
		return 1
	end
	if test -z $argv
		# no command was run
		return 0
	end
	set -l old_cwd (pwd)
	cd /  # ensure we do not also hold the tmp dir open when we run lsof
	if test (string split ' ' $argv[1])[1] = 'cd'; and not lsof $_current_tmp_dir
		echo removing $_current_tmp_dir >&2
		if type -q deactivate
			deactivate
		end
		rm -r $_current_tmp_dir
		set -e _current_tmp_dir
	end
	cd $old_cwd
end
