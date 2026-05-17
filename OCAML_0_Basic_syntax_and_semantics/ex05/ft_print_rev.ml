
let ft_print_rev s =
	let len = String.length s in
	let rec aux i =
		if i < 0 then () else begin
			print_char (String.get s i);
			aux (i - 1)
		end
	in
	aux (len - 1);
	print_char '\n'

(* tests *)
let () =
	ft_print_rev "Hello world !";
	ft_print_rev ""
