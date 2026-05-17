let ft_sum f a b =
  if b < a then nan
  else
    let rec aux i acc =
      if i > b then acc else aux (i + 1) (acc +. f i)
    in
    aux a 0.0

let () =
  Printf.printf "%f\n" (ft_sum (fun i -> float_of_int (i * i)) 1 10)
