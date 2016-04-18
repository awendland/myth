type nat =
  | O
  | S of nat

type list =
  | Nil
  | Cons of nat * list

type bool =
  | True
  | False


let list_has : nat -> list -> bool |>
  { 0 => ( [] => False
         | [0] => True
         | [0; 1] => True
         | [1] => False)
  | 1 => ( [] => False
         | [0; 2] => False
         | [0; 1] => True)} = ?
