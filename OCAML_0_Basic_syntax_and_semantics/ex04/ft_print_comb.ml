let ft_print_comb () =
	let first = ref true in
	for a = 0 to 9 do
		for b = a + 1 to 9 do
			for c = b + 1 to 9 do
				if not !first then print_string ", " else first := false;
				print_int a; print_int b; print_int c
			done
		done
	done;
	print_char '\n'

let () = ft_print_comb ()
