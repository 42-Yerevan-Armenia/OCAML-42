# OCAML-42

## To validate this piscine you must do the following projects:

1. [OCAML - 0 - Basic syntax and semantics](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_0_Basic_syntax_and_semantics/README.md)
2. [OCAML - 0 - Recursion and higher-order functions](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_0_Recursion_and_higher-order_functions/README.md)
3. [OCAML - 0 - Pattern Matching and Data Types](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_0_Pattern_Matching_and_Data_Types/README.md)
4. [OCAML - 1 - OCaml’s modules language](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_1_Modules_language/README.md)
5. [OCAML - 1 - Imperative features](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_1_Imperative_features/README.md)
6. [OCAML - 1 - Functor](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_1_Functor/README.md)
7. [OCAML - 1 - Object Oriented Programming](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_1_Object_Oriented_Programming/README.md)
8. [OCAML - 2 - Object Oriented Programming](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_2_Object_Oriented_Programming/README.md)
9. [OCAML - 3 - Monoids and Monads](https://github.com/Aramxxx8691/OCAML-42/blob/master/OCAML_3_Monoids_and_Monads/README.md)

## Docker

Build the image (run from the repository root):

```bash
docker build -t ocaml-ocaml42:latest .
```

Start an interactive shell with the repository mounted at `/workspace`:

```bash
docker run --rm -it -v "$PWD":/workspace ocaml-ocaml42:latest /bin/bash
```

Inside the container you can compile a single exercise, for example:

```bash
cd /workspace/OCAML_0_Basic_syntax_and_semantics/ex00
ocamlopt -o ft_test_sign ft_test_sign.ml
./ft_test_sign
```

Or compile and run several exercises from the container shell:

```bash
for f in ex00 ex01 ex02 ex03 ex04 ex05 ex06 ex07 ex08 ex09; do
	ocamlopt -o /tmp/a.out /workspace/OCAML_0_Basic_syntax_and_semantics/$f/*.ml && /tmp/a.out || true
done
```

