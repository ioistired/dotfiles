function do-opus
	for f in *.flac
		opusenc $f (string replace .flac .opus $f) --padding 0 --bitrate 160
		and rm $f
		or break
	end
end
