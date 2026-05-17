let fibonacci n =
  if n < 0 then -1
  else
    let rec aux i a b =
      if i = n then a
      else aux (i + 1) b (a + b)
    in
    aux 0 0 1

let () =
  Printf.printf "%d\n" (fibonacci (-42));
  Printf.printf "%d\n" (fibonacci 1);
  Printf.printf "%d\n" (fibonacci 6)
