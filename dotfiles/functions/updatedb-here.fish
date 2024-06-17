function updatedb-here --wraps='updatedb -U . -o plocate.db -l no' --description 'alias updatedb-here=updatedb -U . -o plocate.db -l no'
  updatedb -U . -o plocate.db -l no $argv
end
