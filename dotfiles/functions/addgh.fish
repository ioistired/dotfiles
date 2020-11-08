# Defined in /tmp/fish.8TLHMK/addfork.fish @ line 2
function addgh --argument name
	test -z $name; and set -l name fork
	set dir (basename (readlink -f .))
	git remote add $name https://github.com/iomintz/$dir.git
	git remote set-url --push $name git@github.com:iomintz/$dir.git
end
