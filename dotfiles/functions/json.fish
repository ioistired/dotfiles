function json
	python -m json.tool | command unexpand -t 4 | eval $PAGER
end
