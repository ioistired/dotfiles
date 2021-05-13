# Defined in /tmp/fish.uoksJ1/venv.fish @ line 2
function venv --argument dir
	test -z $dir; and set -l dir ~/.local/share/venvs/(pwd)
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
