# Defined in - @ line 1
function psql --wraps='psql -P linestyle=unicode' --description 'alias psql psql -P linestyle=unicode'
 command psql -P linestyle=unicode $argv;
end
