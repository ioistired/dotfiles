function venv --argument dir
	# @ sign is to allow venvs in parent directories and subdirectories
	test -z $dir; and set dir ~/.local/share/venvs/(dirname (pwd))/@(basename (pwd))
	if test ! -d $dir
		# don't base our new venv off of an existing one
		functions -q deactivate; and deactivate

		set -l user_site_dir (python -m site --user-site)
		python -m venv $dir
		venv $dir
		pip install --upgrade setuptools pip wheel import_expression pythonpy-clone
		cp $user_site_dir/sitecustomize.py (get-venv-site-packages)/
		return 0
	end

	source $dir/bin/activate.fish
end
