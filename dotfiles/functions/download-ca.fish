# Defined in /tmp/fish.tWBUvy/download-ca.fish @ line 1
function download-ca --argument host port
	openssl s_client -showcerts -partial_chain -connect $host:$port -verify 5 </dev/null ^/dev/null | openssl x509 -outform PEM;
end
