function split4gib
 split --verbose -b (py '1024**3 * 4 - 1') -d $argv
end
