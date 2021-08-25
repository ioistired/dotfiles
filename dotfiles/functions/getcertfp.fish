function getcertfp --argument name algo
	set name (required-arg name $name); or return 1
	set crt (certpath $name)
	test -z "$algo"; and set algo sha512
	openssl x509 -in $crt -outform der | "$algo"sum | cut -d' ' -f1
end
