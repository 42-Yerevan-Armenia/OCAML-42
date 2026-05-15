let two_digits n =
	if n < 10 then (print_char '0'; print_int n)
	else print_int n

let ft_print_comb2 () =
	let first = ref true in
	for a = 0 to 98 do
		for b = a + 1 to 99 do
			if not !first then print_string ", " else first := false;
			two_digits a; print_char ' '; two_digits b
		done
	done;
	print_char '\n'

let () = ft_print_comb2 ()
