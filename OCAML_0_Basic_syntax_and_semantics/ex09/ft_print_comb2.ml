let two_digits n =
	if n < 10 then (print_char '0'; print_int n)
	else print_int n

let ft_print_comb2 () =
	let first = ref true in
	let rec loop_b a b =
		if b > 99 then () else begin
			if not !first then print_string ", " else first := false;
			two_digits a; print_char ' '; two_digits b;
			loop_b a (b + 1)
		end in
	let rec loop_a a =
		if a > 98 then () else begin
			loop_b a (a + 1);
			loop_a (a + 1)
		end in
	loop_a 0;
	print_char '\n'

let () = ft_print_comb2 ()
