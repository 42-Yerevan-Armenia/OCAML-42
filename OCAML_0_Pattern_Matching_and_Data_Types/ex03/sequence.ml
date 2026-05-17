let sequence n =
  if n <= 0 then "" else
  let string_to_chars s =
    let rec aux i acc = if i < 0 then acc else aux (i-1) (s.[i] :: acc) in
    aux (String.length s - 1) []
  in
  let rec chars_to_string chars =
    let buf = Buffer.create 16 in
    let rec aux = function
      | [] -> Buffer.contents buf
      | c::cs -> Buffer.add_char buf c; aux cs
    in aux chars
  in
  let rec aux i count acc = function
    | [] -> chars_to_string (rev acc [])
    | x::xs ->
      if x = i then aux i (count+1) acc xs
      else aux x 1 ( (string_of_int count) |> explode |> append_chars acc |> append_chars [i]) xs
  and rev l acc = match l with [] -> acc | x::xs -> rev xs (x::acc)
  and explode s =
    let rec ex i acc = if i < 0 then acc else ex (i-1) (s.[i] :: acc) in
    ex (String.length s - 1) []
  and append_chars a b = match a with [] -> b | x::xs -> x :: append_chars xs b
  in
  let rec next s = aux (String.get s 0) 0 [] (string_to_chars s) in
  let rec build i cur = if i = 1 then cur else build (i-1) (next cur) in
  build n "1"

let () = Printf.printf "%s\n" (sequence 6)
