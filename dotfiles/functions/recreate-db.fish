# Defined in /tmp/fish.ZESA9c/recreate-db.fish @ line 2
function recreate-db --argument db template
	dropdb $db; or return $status
	if test -z $template
		createdb $db -O $USER
	else
		createdb $db -O $USER -T $template
	end
end
