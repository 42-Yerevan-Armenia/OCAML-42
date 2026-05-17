let encode lst =
  let rec aux cur count acc = function
    | [] -> if count = 0 then acc else (count, cur) :: acc
    | x::xs ->
      if count = 0 then aux x 1 acc xs
      else if x = cur then aux cur (count + 1) acc xs
      else aux x 1 ((count, cur) :: acc) xs
  in
  let rec rev l acc = match l with [] -> acc | x::xs -> rev xs (x::acc) in
  match lst with
  | [] -> []
  | x::xs -> rev (aux x 1 [] xs) []

let () =
  let res = encode ["a";"a";"b";"b";"b"] in
  List.iter (fun (c,s) -> Printf.printf "%d%s " c s) res;
  print_newline ()
