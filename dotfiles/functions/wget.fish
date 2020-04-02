# Defined in - @ line 1
function wget --wraps='wget --content-disposition' --description 'alias wget wget --content-disposition'
 command wget --content-disposition $argv;
end
