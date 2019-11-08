# Defined in /tmp/fish.Cd531v/recreate-db.fish @ line 2
function recreate-db --argument db
	dropdb $db; and \
	createdb $db -O $USER
end
