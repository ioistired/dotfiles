function lnwhich
readlink -f (which $argv[1])
end
