# Defined in /tmp/fish.Bkjrs9/bcextract.fish @ line 2
function bcextract --argument zip artist album
	if test ! -f $zip
		echo $zip: no such file >&2
		return 1
	end

	set filename (string split . -r -m 1 $zip)[1]
	and set parts (string split ' - ' $filename)
	and test -z $artist; and set artist $parts[1]
	and test -z $album; and set album (string join ' - ' $parts[2..-1])

	set dir $artist/$album
	echo extracting to $dir >&2
	mkdir -p $dir
	and unzip -d $dir $zip
	and rename "$filename - " "" $dir/*

	and rm $zip
end
