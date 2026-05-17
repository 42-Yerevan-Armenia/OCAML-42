type phosphate = string
type deoxyribose = string
type nucleobase = A | T | C | G | NoneB
type nucleotide = phosphate * deoxyribose * nucleobase

let generate_nucleotide = function
  | 'A' -> ("phosphate","deoxyribose",A)
  | 'T' -> ("phosphate","deoxyribose",T)
  | 'C' -> ("phosphate","deoxyribose",C)
  | 'G' -> ("phosphate","deoxyribose",G)
  | _ -> ("phosphate","deoxyribose",NoneB)

let () =
  let (_,_,b) = generate_nucleotide 'A' in
  match b with A -> print_endline "A" | _ -> print_endline "?"
