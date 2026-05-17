let repeat_string ?(str="x") n =
  if n < 0 then "Error"
  else
    let rec aux i acc =
      if i = 0 then acc else aux (i - 1) (acc ^ str)
    in
    aux n ""

let () =
  Printf.printf "%s\n" (repeat_string ~str:"Toto" 1);
  Printf.printf "%s\n" (repeat_string 2);
  Printf.printf "%s\n" (repeat_string ~str:"what" 3)
