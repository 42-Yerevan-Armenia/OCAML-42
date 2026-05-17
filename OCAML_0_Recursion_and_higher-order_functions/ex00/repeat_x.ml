let repeat_x n =
  if n < 0 then "Error"
  else
    let rec aux i acc =
      if i = 0 then acc else aux (i - 1) ("x" ^ acc)
    in
    aux n ""

let () =
  Printf.printf "%s\n" (repeat_x (-1));
  Printf.printf "%s\n" (repeat_x 0);
  Printf.printf "%s\n" (repeat_x 5)
