function required-arg --argument argname argvalue
	if test -z "$argvalue"
		echo Argument $argname missing >&2
		return 1
	end
	echo -n $argvalue
end
