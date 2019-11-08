# Defined in /tmp/fish.hDGlFH/import-2ds-scrot.fish @ line 2
function import-2ds-scrot
	mnt /dev/sdb1 >/dev/null ^&1
	set -l out ~/Pictures/Screenshots/2DS
	rsync -Pa --remove-source-files ~/mnt/2DS/luma/screenshots/ $out/; or return 1
	for pic in $out/*.bmp
		set -l pic (string split -m 1 -r . $pic | head -n 1)
		convert $pic.{bmp,png}
		rm $pic.bmp
	end
end
