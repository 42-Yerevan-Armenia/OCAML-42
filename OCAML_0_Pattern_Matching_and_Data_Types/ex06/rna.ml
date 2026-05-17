open Nucleotides

type rna = nucleobase list

let to_rna_base = function
  | A -> U
  | T -> A
  | C -> G
  | G -> C
  | NoneB -> NoneB

let generate_rna helix =
  let rec aux acc = function
    | [] ->
      let rec rev l acc2 = match l with [] -> acc2 | x::xs -> rev xs (x::acc2) in
      rev acc []
    | (_,_,b)::xs -> aux (to_rna_base b :: acc) xs
  in
  aux [] helix

let () = print_endline "rna placeholder"
