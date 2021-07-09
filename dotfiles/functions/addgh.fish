function addgh --argument name
	test -z $name; and set -l name fork
	set dir (basename (readlink -f .))
	git remote add $name https://github.com/ioistired/$dir.git
	git remote set-url --push $name git@github.com:ioistired/$dir.git
	git config user.name io
	git config user.email gie9ohbeixah@paperboats.net
end
