# OCAML - 0 - Recursion and higher-order functions

Short descriptions for exercises in this module (ex00..ex09):

- ex00: repeat_x — return a string of 'x' repeated n times (or "Error" if n<0).
- ex01: repeat_string — repeat an optional string `str` n times, defaulting to 'x' when omitted.
- ex02: ackermann — implement the Ackermann function (int -> int -> int), return -1 for negative inputs.
- ex03: tak — implement the Tak function (int -> int -> int -> int) as in the subject.
- ex04: fibonacci — tail-recursive Fibonacci (int -> int), return -1 for negative inputs.
- ex05: hofstadter_mf — Hofstadter Female and Male sequences (hfs_f, hfs_m : int -> int).
- ex06: iter — repeated application: iter (f, x, n) applies f to x n times.
- ex07: converges — test whether repeated application reaches a fixed point within n iterations.
- ex08: ft_sum — tail-recursive summation function (int -> float) -> int -> int -> float; return nan if upper < lower.
- ex09: leibniz_pi — compute iterations needed for Leibniz π approximation to reach given delta (float -> int).

Each exercise directory `exNN/` contains a ready `.ml` implementation file you can compile with `ocamlopt`.

