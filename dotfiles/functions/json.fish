# Defined in /tmp/fish.Vr4W2N/json.fish @ line 2
function json
	python -m json.tool | command unexpand -t 4
end
