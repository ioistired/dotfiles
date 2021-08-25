function gh-profile --argument name
	git config user.name $name
	git config user.email (gh-email $name)
end
