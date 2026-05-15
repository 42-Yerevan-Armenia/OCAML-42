let rec ft_power a b =
	if b = 0 then 1
	else a * ft_power a (b - 1)

(* tests *)
let () =
	Printf.printf "%d\n" (ft_power 2 4);
	Printf.printf "%d\n" (ft_power 3 0);
	Printf.printf "%d\n" (ft_power 0 5)
