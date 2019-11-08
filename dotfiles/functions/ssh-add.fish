# Defined in /tmp/fish.4FwiHq/ssh-add.fish @ line 2
function ssh-add --argument key
	if test -z "$key"
		set key ~/.ssh/id_ed25519
	end

	ssh-test $key
	or command ssh-add $key
end
