let gray n =
  let rec map f l =
    match l with
    | [] -> []
    | x::xs -> f x :: map f xs
  in
  let rec rev l acc =
    match l with
    | [] -> acc
    | x::xs -> rev xs (x::acc)
  in
  let rec append a b =
    match a with
    | [] -> b
    | x::xs -> x :: append xs b
  in
  let rec gen k =
    if k = 0 then [""]
    else
      let prev = gen (k - 1) in
      let a = map (fun s -> "0" ^ s) prev in
      let b = rev (map (fun s -> "1" ^ s) prev) [] in
      append a b
  in
  let seq = gen n in
  let rec iter f l = match l with [] -> () | x::xs -> f x; iter f xs in
  iter (fun s -> Printf.printf "%s " s) seq; print_newline ()

let () = gray 3
