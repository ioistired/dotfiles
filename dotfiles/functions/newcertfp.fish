function newcertfp --argument name algo
	set name (required-arg name $name); or return 1
	set crt (certpath $name)
	if test -f $crt
		echo A cert for $name already exists 2>&1
		return 2
	end
	yes '' | openssl req \
		-x509 \
		-new \
		-newkey rsa:4096 \
		-sha256 \
		-days 1096 \
		-nodes \
		-out $crt \
		-keyout $crt \
		2>/dev/null
	set certfp (getcertfp $name $algo)
	echo $certfp
	echo $certfp | xclip -sel clip -i
end
