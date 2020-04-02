function addfork
set dir (basename (readlink -f .))
git remote add fork https://github.com/iomintz/$dir.git
git remote set-url --push fork git@github.com:iomintz/$dir.git
end
