open Nucleotides
open Rna

let generate_bases_triplets rna =
  let rec aux acc xs =
    match xs with
    | a::b::c::rest -> aux ((a,b,c)::acc) rest
    | _ ->
      let rec rev l acc2 = match l with [] -> acc2 | x::xs -> rev xs (x::acc2) in
      rev acc []
  in aux [] rna

let () = print_endline "ribosome placeholder"
