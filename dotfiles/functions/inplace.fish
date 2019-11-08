# Defined in /tmp/fish.txY1aG/inplace.fish @ line 1
function inplace --description 'e.g. inplace sort file.txt'
	eval $argv | sponge $argv[-1]
end
