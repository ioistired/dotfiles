# Defined in /tmp/fish.rj8LBQ/ssh-test.fish @ line 2
function ssh-test --description 'test whether the given key file is added to the ssh daemon' --argument file
	command ssh-add -l | grep -q (ssh-keygen -lf $file)
end
