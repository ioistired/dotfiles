# Defined in /tmp/fish.41gxLn/venv.fish @ line 2
function venv --argument dir
	test -z $dir; and set -l dir .venv
	if test ! -d $dir
		set -l user_site_dir (python -m site --user-site)
		python -m venv $dir
		venv $dir
		pip install --upgrade setuptools pip wheel import_expression aioconsole pythonpy-clone
		cp $user_site_dir/sitecustomize.py (get-venv-site-packages)/
		return 0
	end

	source $dir/bin/activate.fish
end
