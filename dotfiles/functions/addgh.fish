function addgh --argument name profile_name
	test -z $name; and set name fork
	test -z $profile_name; and set profile_name io

	set username (gh-username $profile_name)
	set dir (basename (readlink -f .))

	git remote add $name https://github.com/$username/$dir.git
	git remote set-url --push $name git@github.com:$username/$dir.git

	gh-profile $profile_name
end
