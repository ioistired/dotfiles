function ytdlmp4
	command youtube-dl -f bestvideo+bestaudio --merge-output-format mp4 $argv; 
end
