# Defined in - @ line 1
function tar --wraps='tar -H pax -a' --wraps='tar -H pax -a' --description 'alias tar tar -H pax -a'
 command tar -H pax -a $argv;
end
