let rot_char n c =
	if c >= 'a' && c <= 'z' then
		char_of_int (((int_of_char c - int_of_char 'a' + n) mod 26) + int_of_char 'a')
	else if c >= 'A' && c <= 'Z' then
		char_of_int (((int_of_char c - int_of_char 'A' + n) mod 26) + int_of_char 'A')
	else c

let ft_rot_n n s =
	if s = "" then "" else String.map (fun c -> rot_char (n mod 26) c) s

(* tests *)
let () =
	Printf.printf "%s\n" (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
	Printf.printf "%s\n" (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
	Printf.printf "%s\n" (ft_rot_n 42 "0123456789");
	Printf.printf "%s\n" (ft_rot_n 2 "OI2EAS67B9");
	Printf.printf "%s\n" (ft_rot_n 0 "Damned !");
	Printf.printf "%s\n" (ft_rot_n 42 "");
	Printf.printf "%s\n" (ft_rot_n 1 "NBzlk qnbjr !")
