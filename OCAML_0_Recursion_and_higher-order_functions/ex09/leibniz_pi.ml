let leibniz_pi n =
  let rec aux i acc sign =
    if i > n then acc
    else aux (i + 1) (acc +. sign /. (2.0 *. float_of_int i +. 1.0)) (-.sign)
  in
  4.0 *. aux 0 0.0 1.0

let () =
  print_float (leibniz_pi 1000); print_newline ();
  print_float (leibniz_pi 10000); print_newline ();
  print_float (leibniz_pi 100000); print_newline ()
