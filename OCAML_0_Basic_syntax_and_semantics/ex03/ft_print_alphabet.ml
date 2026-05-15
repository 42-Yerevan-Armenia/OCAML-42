let ft_print_alphabet () =
	let rec loop i =
		if i > int_of_char 'z' then ()
		else (print_char (char_of_int i); loop (i + 1))
	in
	loop (int_of_char 'a'); print_char '\n'

(* test *)
let () = ft_print_alphabet ()
