let ft_test_sign n =
	if n >= 0 then print_endline "positive" else print_endline "negative"

(* simple tests *)
let () = 
  print_endline "42 is : "; ft_test_sign 42;
  print_endline "0 is : "; ft_test_sign 0;
  print_endline "-42 is : "; ft_test_sign (-42)