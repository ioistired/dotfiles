function tip -a subtotal tax gratuity_coeff
	if test -z $gratuity_coeff
		set gratuity_coeff 0.2
	end

	set tip (math $gratuity_coeff \* $subtotal)
	echo Tip: $tip
	echo -n 'Total: '
	math $tip + $tax + $subtotal
end
