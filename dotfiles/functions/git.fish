# Defined in - @ line 1
function git --description 'alias git env TZ=UTC git'
	env TZ=UTC git $argv;
end
