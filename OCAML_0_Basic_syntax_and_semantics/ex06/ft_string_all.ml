let ft_string_all pred s =
	let len = String.length s in
	let rec loop i =
		if i >= len then true
		else if pred (String.get s i) then loop (i + 1) else false
	in
	loop 0

(* tests *)
let is_digit c = c >= '0' && c <= '9'
let () =
	Printf.printf "%b\n" (ft_string_all is_digit "0123456789");
	Printf.printf "%b\n" (ft_string_all is_digit "O12EAS67B9")
