let rec mem x l =
  match l with
  | [] -> false
  | y::ys -> if x = y then true else mem x ys

let rec crossover a b =
  match a with
  | [] -> []
  | x::xs -> if mem x b then x :: crossover xs b else crossover xs b

let () =
  let r = crossover [1;2;3] [2;3;4] in
  List.iter (Printf.printf "%d ") r; print_newline ()
