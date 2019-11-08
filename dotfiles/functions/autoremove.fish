# Defined in /tmp/fish.7BsX8Z/autoremove.fish @ line 2
function autoremove
	set -l orphaned_packages (pacman -Qtdq); or return 0
	sudo pacman -Rns $orphaned_packages
end
