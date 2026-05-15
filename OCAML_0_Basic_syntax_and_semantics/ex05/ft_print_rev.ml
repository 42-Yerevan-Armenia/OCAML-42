let ft_print_rev s =
	let len = String.length s in
	for i = len - 1 downto 0 do
		print_char (String.get s i)
	done;
	print_char '\n'

(* tests *)
let () =
	ft_print_rev "Hello world !";
	ft_print_rev ""
