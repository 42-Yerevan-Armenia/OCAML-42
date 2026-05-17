
let ft_print_comb () =
	let first = ref true in
	let rec loop_c a b c =
		if c > 9 then () else begin
			if not !first then print_string ", " else first := false;
			print_int a; print_int b; print_int c;
			loop_c a b (c + 1)
		end
	in
	let rec loop_b a b =
		if b > 9 then () else begin
			loop_c a b (b + 1);
			loop_b a (b + 1)
		end
	in
	let rec loop_a a =
		if a > 9 then () else begin
			loop_b a (a + 1);
			loop_a (a + 1)
		end
	in
	loop_a 0;
	print_char '\n'

let () = ft_print_comb ()
