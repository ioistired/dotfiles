# Defined in /tmp/fish.jXigzt/import-switch-scrot.fish @ line 2
function import-switch-scrot
	mnt /dev/sdb1 >/dev/null ^&1
	rsync -Pa --remove-source-files ~/mnt/sMicroSD/{,emuMMC/RAW1/}Nintendo/Album/ ~/Pictures/Screenshots/Switch/
end
