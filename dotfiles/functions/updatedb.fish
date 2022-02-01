function updatedb
	fd --one-file-system --no-ignore --hidden . / > ~/locate.txt
	gzip -f ~/locate.txt
end
